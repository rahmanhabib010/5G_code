/*
 *
 * Copyright 2021-2023 Software Radio Systems Limited
 *
 * This file is part of srsRAN.
 *
 * srsRAN is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of
 * the License, or (at your option) any later version.
 *
 * srsRAN is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Affero General Public License for more details.
 *
 * A copy of the GNU Affero General Public License can be found in
 * the LICENSE file in the top-level directory of this distribution
 * and at http://www.gnu.org/licenses/.
 *
 */

#include "scheduler_time_rr.h"
#include "../support/config_helpers.h"
#include "../support/rb_helper.h"
#include "../ue_scheduling/ue_pdsch_param_candidate_searcher.h"
#include "../kafka/producer.h"
// For Timer Libraries
#include <chrono>
#include <fstream>
#include <functional>
#include <iostream>
#include <map>
#include <queue>
#include <thread>
#include <vector>
#include "slice_class.cpp"
// For Getting Current Time
#include <ctime>
#include <iomanip>
#include <sstream>
using namespace srsran;

void run(std::function<void(void)> f, int duration)
{
  std::thread([f, duration]() {
    while (true) {
      f();
      auto ms = std::chrono::steady_clock::now() + std::chrono::milliseconds(duration);
      std::this_thread::sleep_until(ms);
    }
  }).detach();
}

/*
Dead-Code
void export_prb()
{
  double prbPerSlot = 0, dlprbUsage = 0;
  if (countSlots != 0) {
    prbPerSlot = sumPrbs * 10.0 / countSlots / 10.0;
    dlprbUsage = prbPerSlot / 51.0 * 100;
  }

  std::cout << "DlPRB : " << dlprbUsage << " %\tSumPrbs: " << sumPrbs << "\t SlotCount: " << countSlots << std::endl;
  sumPrbs    = 0;
  countSlots = 0;
}

void export_prb_mapVersion()
{
  int cellPrb = 51;
  int totPrbs = 0, totSlots = 0;
  for (auto ue : dlprbMap) {
    uint16_t rnti       = ue.first;
    double   prbPerSlot = 0, dlprbUsage = 0;
    if (ue.second.second != 0) {
      prbPerSlot = ue.second.first * 10.0 / ue.second.second / 10.0;
      dlprbUsage = prbPerSlot / cellPrb * 100;
    }
    std::cout << "Rnti: " << rnti << " \t DLPRB: " << dlprbUsage << std::endl;
    totPrbs += ue.second.first;
    totSlots += ue.second.second;
    dlprbMap[rnti] = std::make_pair(0, 0);
  }

  // Total Dlprb
  double prbPerSlot = 0, dlprbUsage = 0;
  if (totSlots != 0) {
    prbPerSlot = totPrbs * 10.0 / totSlots / 10.0;
    dlprbUsage = prbPerSlot / cellPrb * 100;
  }

  std::cout << "Total-DlPRB : " << dlprbUsage << " %\tSumPrbs: " << totPrbs << "\t SlotCount: " << totSlots
            << std::endl;
}
*/


std::ofstream outSliceStream("dlprb_slice.txt"), csvStream("dlprb_slice.csv");
int                                              numSlots     = 0;
bool                                             paritionAlgo = true;
std::queue<uint16_t>                             deletionQ;
// -------------- With Slice-Class (Logging Slice-Level KPI Only)------------------
std::vector<Slice*> sliceObjs;
std::map<std::pair<uint8_t, uint32_t>, Slice*> nssaiSliceObjMap;
KafkaProducerHelper *kafka_producer_obj = new KafkaProducerHelper("localhost");
int KPI_LOG_PERIOD = 5; //5 seconds

void intialiseNssaiToSliceMap(){
  Slice* slicePtr2 = new Slice(1, 0, 40); // 40
  Slice* slicePtr1 = new Slice(1, 16777210, 11); //11
  
  sliceObjs.push_back(slicePtr1);
  sliceObjs.push_back(slicePtr2);

  for(int i =0 ; i < int(sliceObjs.size()); i++){
    nssaiSliceObjMap[sliceObjs[i]->getSliceIdentifier()] = sliceObjs[i];
  }
}


bool setSliceResourceAlloc(uint8_t sst, uint32_t sd, int newAlloc){
  // The function is used to reconfigure slice-configs, the above function is only meant to be called by 'du_ue_ric_configuration_procedure'
  std::cout<<"Got request for Slice-Config | sst = "<<std::to_string(sst)<<", sd = "<<sd<<", partSize = "<<newAlloc<<std::endl;
  if (nssaiSliceObjMap.find({sst, sd}) == nssaiSliceObjMap.end()){
    // std::cout<<"The Specified Slice Doesn't exist"<<std::endl;
    return false;
  }

  Slice* sliceObj = nssaiSliceObjMap[{sst, sd}];
  sliceObj->modifyPartition(newAlloc);
  return true;
}

bool logTransmittedBytes(uint8_t sst, uint32_t sd, int byteSent){
  if (nssaiSliceObjMap.find({sst, sd}) == nssaiSliceObjMap.end()){
    // std::cout<<"The Specified Slice Doesn't exist  sd = "<<sd<<std::endl;
    return false;
  }

  Slice* sliceObj = nssaiSliceObjMap[{sst, sd}];
  sliceObj->incrementByteSent(byteSent);
  return true;
}


std::string getCurrentTime() {
    // Get the current time
    std::time_t now = std::time(nullptr);
    
    // Convert it to local time
    std::tm* localTime = std::localtime(&now);
    
    // Create a string stream to format the time
    std::ostringstream oss;
    oss << std::setw(2) << std::setfill('0') << localTime->tm_hour << ":"
        << std::setw(2) << std::setfill('0') << localTime->tm_min << ":"
        << std::setw(2) << std::setfill('0') << localTime->tm_sec;
    
    // Return the formatted string
    return oss.str();
}


void export_slice_level_kpi(){
  double fullSlots = KPI_LOG_PERIOD * 1200; //  1200 slots per second for downlink
  std::vector<std::string> sliceValsTosent;
  outSliceStream << "Slice\t\tDLPRB\t\tParitionResourceMax\t\t\t NumSlots = " << fullSlots << std::endl;
  for(auto sliceObj: sliceObjs){
    // sliceObj->calculatePrbUsgae(fullSlots);
    sliceObj->calculatePrbUsageWithVaryingPartition(fullSlots);
    sliceValsTosent.push_back(sliceObj->getKafkaString(getCurrentTime()));
    // outSliceStream << "( " << int(sliceObj->sst) << ", " << sliceObj->sd << ") \t" << sliceObj->slicePrbUsage << "\t\t"<< sliceObj->partition<<"\t\t"<<sliceObj->sumPrbs << std::endl;
    sliceObj->reset();
  }
  outSliceStream << "----------------------------------------------------------------------------" << std::endl;
  outSliceStream.flush();

  // sliceValsTosent.push_back("123456789,1,0,49.32,11");
  // sliceValsTosent.push_back("123456799,1,1625,70,40");
  for (auto sliceStats: sliceValsTosent){
    csvStream<<sliceStats<<"\n";
  }
  csvStream.flush();
  for(auto kafkaMessage: sliceValsTosent){
    kafka_producer_obj->produceSingleMessage("test", kafkaMessage);
  }
  // sendDataOnKafkaPipeline("localhost", "test", sliceValsTosent);
}


void deleteUeFromMap(uint16_t rnti)
{
  deletionQ.push(rnti);
}

/// \brief Algorithm to select next UE to allocate in a time-domain RR fashion
/// \param[in] ue_db map of "slot_ue"
/// \param[in] next_ue_index UE index with the highest priority to be allocated.
/// \param[in] alloc_ue callable with signature "bool(ue&)" that returns true if UE allocation was successful.
/// \param[in] stop_cond callable with signature "bool()" that verifies if the conditions are present for the
/// round-robin to early-stop the iteration.
/// \return Index of next UE to allocate.
template <typename AllocUEFunc, typename StopIterationFunc>
du_ue_index_t round_robin_apply(const ue_repository&     ue_db,
                                du_ue_index_t            next_ue_index,
                                const AllocUEFunc&       alloc_ue,
                                const StopIterationFunc& stop_cond)
{
  if (ue_db.empty()) {
    return next_ue_index;
  }
  auto it          = ue_db.lower_bound(next_ue_index);
  bool first_alloc = true;
  for (unsigned count = 0; count < ue_db.size(); ++count, ++it) {
    if (it == ue_db.end()) {
      // wrap-around
      it = ue_db.begin();
    }
    const ue& u = **it;
    if (alloc_ue(u)) {
      if (first_alloc) {
        next_ue_index = to_du_ue_index((unsigned)u.ue_index + 1U);
        first_alloc   = false;
      }
      if (stop_cond()) {
        break;
      }
    }
  }
  return next_ue_index;
}

/// Allocate UE PDSCH grant.
static bool alloc_dl_ue(const ue&                    u,
                        const ue_resource_grid_view& res_grid,
                        ue_pdsch_allocator&          pdsch_alloc,
                        bool                         is_retx,
                        srslog::basic_logger&        logger)
{
  if (not is_retx and not u.has_pending_dl_newtx_bytes()) {
    return false;
  }
  const slot_point pdcch_slot = res_grid.get_pdcch_slot();

  // Prioritize PCell over SCells.
  for (unsigned i = 0; i != u.nof_cells(); ++i) {
    const ue_cell& ue_cc = u.get_cell(to_ue_cell_index(i));

    ue_pdsch_param_candidate_searcher candidates{u, to_ue_cell_index(i), is_retx, pdcch_slot};

    if (candidates.dl_harqs().empty()) {
      if (not is_retx) {
        if (res_grid.has_ue_dl_pdcch(ue_cc.cell_index, u.crnti) or ue_cc.harqs.find_dl_harq_waiting_ack() == nullptr) {
          // A HARQ is already being retransmitted, or all HARQs are waiting for a grant for a retransmission.
          logger.debug("ue={} rnti={:#x} PDSCH allocation skipped. Cause: No available HARQs for new transmissions.",
                       ue_cc.ue_index,
                       ue_cc.rnti());
        } else {
          // All HARQs are waiting for their respective HARQ-ACK. This may be a symptom of a long RTT for the PDSCH
          // and HARQ-ACK.
          logger.warning(
              "ue={} rnti={:#x} PDSCH allocation skipped. Cause: All the UE HARQs are busy waiting for their "
              "respective HARQ-ACK. Check if any HARQ-ACK went missing in the lower layers or is arriving too late to "
              "the scheduler.",
              ue_cc.ue_index,
              ue_cc.rnti());
        }
      }
      continue;
    }

    // Iterate through allocation parameter candidates.
    for (const ue_pdsch_param_candidate_searcher::candidate& param_candidate : candidates) {
      const pdsch_time_domain_resource_allocation& pdsch    = param_candidate.pdsch_td_res();
      const search_space_info&                     ss       = param_candidate.ss();
      const dl_harq_process&                       h        = param_candidate.harq();
      const dci_dl_rnti_config_type                dci_type = param_candidate.dci_dl_rnti_cfg_type();
      const cell_slot_resource_grid&               grid     = res_grid.get_pdsch_grid(ue_cc.cell_index, pdsch.k0);
      const crb_bitmap used_crbs = grid.used_crbs(ss.bwp->dl_common->generic_params.scs, ss.dl_crb_lims, pdsch.symbols);
      grant_prbs_mcs   mcs_prbs  = is_retx ? grant_prbs_mcs{h.last_alloc_params().tb.front().value().mcs,
                                                         h.last_alloc_params().rbs.type1().length()}
                                           : ue_cc.required_dl_prbs(pdsch, u.pending_dl_newtx_bytes(), dci_type);
      
      if (paritionAlgo) {
        // uint16_t     rnti                 = u.crnti;
        unsigned int maxResourceAvailable = 10000;
        // Get maxResourceAvailable of the slice of rnti
        // Step-1: Check if slice/ nssai of ue belongs under Paritian-ALgo
        if(nssaiSliceObjMap.find({u.sst, u.sd}) != nssaiSliceObjMap.end()){
          Slice *slicePtr = nssaiSliceObjMap[{u.sst, u.sd}];
          maxResourceAvailable = slicePtr->getPartition();
        }

        // Do the Bound Check Based on Slice-Partition-Resources
        mcs_prbs.n_prbs = std::min(mcs_prbs.n_prbs, maxResourceAvailable);
      }

      if (mcs_prbs.n_prbs == 0) {
        logger.debug("ue={} rnti={:#x} PDSCH allocation skipped. Cause: UE's CQI=0 ", ue_cc.ue_index, ue_cc.rnti());
        return false;
      }

      // [Implementation-defined] In case of partial slots and nof. PRBs allocated equals to 1 probability of KO is
      // high due to code not being able to cope with interference. So the solution is to increase the PRB allocation
      // to greater than 1 PRB.
      const auto& cell_cfg = res_grid.get_cell_cfg_common(ue_cc.cell_index);
      // std::cout<<"Cell (Dl + Ul)Params : "<<cell_cfg.nof_dl_prbs<<" "<<cell_cfg.nof_ul_prbs<<std::endl;
      if (not cell_cfg.is_fully_dl_enabled(pdcch_slot + pdsch.k0) and mcs_prbs.n_prbs == 1) {
        mcs_prbs.n_prbs = 2;
      }

      const crb_interval ue_grant_crbs  = rb_helper::find_empty_interval_of_length(used_crbs, mcs_prbs.n_prbs, 0);
      bool               are_crbs_valid = not ue_grant_crbs.empty(); // Cannot be empty.
      if (is_retx) {
        // In case of Retx, the #CRBs need to stay the same.
        are_crbs_valid = ue_grant_crbs.length() == h.last_alloc_params().rbs.type1().length();
      }
      if (are_crbs_valid) {
        const aggregation_level aggr_lvl =
            ue_cc.get_aggregation_level(ue_cc.channel_state_manager().get_wideband_cqi(), ss, true);
        const bool res_allocated = pdsch_alloc.allocate_dl_grant(ue_pdsch_grant{&u,
                                                                                ue_cc.cell_index,
                                                                                h.id,
                                                                                ss.cfg->get_id(),
                                                                                param_candidate.pdsch_td_res_index(),
                                                                                ue_grant_crbs,
                                                                                aggr_lvl,
                                                                                mcs_prbs.mcs});
        if (res_allocated) {
          // uint16_t rnti = u.crnti;
          // std::cout << rnti<<"  "<<numSlots << " " << mcs_prbs.n_prbs << std::endl;
          // Get Slice-obj of the slice this ue belong
          if(nssaiSliceObjMap.find({u.sst, u.sd}) != nssaiSliceObjMap.end()){
            Slice *slicePtr = nssaiSliceObjMap[{u.sst, u.sd}];
            // Add the used prbs to slice sumPrbs
            slicePtr->addPrbs(mcs_prbs.n_prbs);
          }
          numSlots++;

          return true;
        }
      }
    }
  }
  return false;
}

/// Allocate UE PUSCH grant.
static bool alloc_ul_ue(const ue&                    u,
                        const ue_resource_grid_view& res_grid,
                        ue_pusch_allocator&          pusch_alloc,
                        bool                         is_retx,
                        srslog::basic_logger&        logger)
{
  unsigned pending_newtx_bytes = 0;
  if (not is_retx) {
    pending_newtx_bytes = u.pending_ul_newtx_bytes();
    if (pending_newtx_bytes == 0) {
      return false;
    }
  }
  const slot_point pdcch_slot = res_grid.get_pdcch_slot();

  // Prioritize PCell over SCells.
  for (unsigned i = 0; i != u.nof_cells(); ++i) {
    const ue_cell&            ue_cc           = u.get_cell(to_ue_cell_index(i));
    const cell_configuration& cell_cfg_common = res_grid.get_cell_cfg_common(ue_cc.cell_index);
    const ul_harq_process*    h = is_retx ? ue_cc.harqs.find_pending_ul_retx() : ue_cc.harqs.find_empty_ul_harq();
    if (h == nullptr) {
      // No HARQs available.
      if (not is_retx) {
        if (res_grid.has_ue_ul_pdcch(ue_cc.cell_index, u.crnti) or ue_cc.harqs.find_ul_harq_waiting_ack() == nullptr) {
          // A HARQ is already being retransmitted, or all HARQs are waiting for a grant for a retransmission.
          logger.debug("ue={} rnti={:#x} PUSCH allocation skipped. Cause: No available HARQs for new transmissions.",
                       ue_cc.ue_index,
                       ue_cc.rnti());
        } else {
          // All HARQs are waiting for their respective CRC. This may be a symptom of a slow PUSCH processing chain.
          logger.warning("ue={} rnti={:#x} PUSCH allocation skipped. Cause: All the UE HARQs are busy waiting for "
                         "their respective CRC result. Check if any CRC PDU went missing in the lower layers or is "
                         "arriving too late to the scheduler.",
                         ue_cc.ue_index,
                         ue_cc.rnti());
        }
      }
      continue;
    }

    optional<dci_ul_rnti_config_type> preferred_dci_rnti_type;
    if (is_retx) {
      preferred_dci_rnti_type = h->last_tx_params().dci_cfg_type;
    }
    static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP> search_spaces =
        ue_cc.get_active_ul_search_spaces(pdcch_slot, preferred_dci_rnti_type);
    for (const search_space_info* ss : search_spaces) {
      if (ss->cfg->is_search_space0()) {
        continue;
      }

      // - [Implementation-defined] k2 value which is less than or equal to minimum value of k1(s) is used.
      // Assumes that first entry in the PUSCH Time Domain resource list contains the k2 value which is less than or
      // equal to minimum value of k1(s).
      const unsigned                               time_res   = 0;
      const pusch_time_domain_resource_allocation& pusch_td   = ss->pusch_time_domain_list[time_res];
      const slot_point                             pusch_slot = pdcch_slot + pusch_td.k2;
      const unsigned                               start_ul_symbols =
          NOF_OFDM_SYM_PER_SLOT_NORMAL_CP - cell_cfg_common.get_nof_ul_symbol_per_slot(pusch_slot);
      // If it is a retx, we need to ensure we use a time_domain_resource with the same number of symbols as used for
      // the first transmission.
      const bool sym_length_match_prev_grant_for_retx =
          is_retx ? pusch_td.symbols.length() != h->last_tx_params().nof_symbols : true;
      if (not cell_cfg_common.is_ul_enabled(pusch_slot) or pusch_td.symbols.start() < start_ul_symbols or
          !sym_length_match_prev_grant_for_retx) {
        // UL needs to be active for PUSCH in this slot.
        continue;
      }

      const cell_slot_resource_grid& grid = res_grid.get_pusch_grid(ue_cc.cell_index, pusch_td.k2);
      if (res_grid.has_ue_ul_grant(ue_cc.cell_index, ue_cc.rnti(), pusch_td.k2)) {
        // only one PUSCH per UE per slot.
        continue;
      }
      const prb_bitmap used_crbs =
          grid.used_crbs(ss->bwp->ul_common->generic_params.scs, ss->ul_crb_lims, pusch_td.symbols);

      // Compute the MCS and the number of PRBs, depending on the pending bytes to transmit.
      grant_prbs_mcs mcs_prbs = is_retx
                                    ? grant_prbs_mcs{h->last_tx_params().mcs, h->last_tx_params().rbs.type1().length()}
                                    : ue_cc.required_ul_prbs(pusch_td,
                                                             pending_newtx_bytes,
                                                             ss->get_ul_dci_format() == srsran::dci_ul_format::f0_0
                                                                 ? srsran::dci_ul_rnti_config_type::c_rnti_f0_0
                                                                 : srsran::dci_ul_rnti_config_type::c_rnti_f0_1);

      // NOTE: this should never happen, but it's safe not to proceed if we get n_prbs == 0.
      if (mcs_prbs.n_prbs == 0) {
        logger.debug("ue={} rnti={:#x} PUSCH allocation skipped. Cause: MCS and PRBs computation resulted in no PRBs "
                     "allocated to this UE",
                     ue_cc.ue_index,
                     ue_cc.rnti());
        return false;
      }

      // Due to the pre-allocated UCI bits, MCS 0 and PRB 1 would not leave any space for the payload on the TBS, as
      // all the space would be taken by the UCI bits. As a result of this, the effective code rate would be 0 and the
      // allocation would fail and be postponed to the next slot.
      // [Implementation-defined] In our tests, we have seen that MCS 5 with 1 PRB can lead (depending on the
      // configuration) to a non-valid MCS-PRB allocation; therefore, we set 6 as minimum value for 1 PRB.
      // TODO: Remove this part and handle the problem with a loop that is general for any configuration.
      const sch_mcs_index min_mcs_for_1_prb  = static_cast<sch_mcs_index>(6U);
      const unsigned      min_allocable_prbs = 1U;
      if (mcs_prbs.mcs < min_mcs_for_1_prb and mcs_prbs.n_prbs == min_allocable_prbs) {
        ++mcs_prbs.n_prbs;
      }

      const crb_interval ue_grant_crbs = rb_helper::find_empty_interval_of_length(used_crbs, mcs_prbs.n_prbs, 0);
      // There must be at least one available CRB.
      bool are_crbs_valid = not ue_grant_crbs.empty();
      if (is_retx) {
        // In case of Retx, the #CRBs need to stay the same.
        are_crbs_valid = ue_grant_crbs.length() == h->last_tx_params().rbs.type1().length();
      }
      if (are_crbs_valid) {
        const aggregation_level aggr_lvl =
            ue_cc.get_aggregation_level(ue_cc.channel_state_manager().get_wideband_cqi(), *ss, false);
        const bool res_allocated = pusch_alloc.allocate_ul_grant(ue_pusch_grant{&u,
                                                                                ue_cc.cell_index,
                                                                                h->id,
                                                                                ue_grant_crbs,
                                                                                pusch_td.symbols,
                                                                                time_res,
                                                                                ss->cfg->get_id(),
                                                                                aggr_lvl,
                                                                                mcs_prbs.mcs});
        if (res_allocated) {
          return true;
        }
      }
    }
  }
  return false;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

scheduler_time_rr::scheduler_time_rr() :
  logger(srslog::fetch_basic_logger("SCHED")),
  next_dl_ue_index(INVALID_DU_UE_INDEX),
  next_ul_ue_index(INVALID_DU_UE_INDEX)
{
  // The Slice-KPI Logging Thread Start
  intialiseNssaiToSliceMap();
  // intialiseKafkaProducer();
  // Setting headers to csv file
  csvStream<<"TimeStamp,sst,sd,dlprbUsage,partition\n";
  csvStream.flush();
  run(export_slice_level_kpi, KPI_LOG_PERIOD * 1000);
}

void scheduler_time_rr::dl_sched(ue_pdsch_allocator&          pdsch_alloc,
                                 const ue_resource_grid_view& res_grid,
                                 const ue_repository&         ues,
                                 bool                         is_retx)
{
  auto tx_ue_function = [this, &res_grid, &pdsch_alloc, is_retx](const ue& u) {
    return alloc_dl_ue(u, res_grid, pdsch_alloc, is_retx, logger);
  };
  auto stop_iter = [&res_grid]() {
    // TODO: Account for different BWPs and cells.
    const du_cell_index_t cell_idx    = to_du_cell_index(0);
    const auto&           init_dl_bwp = res_grid.get_cell_cfg_common(cell_idx).dl_cfg_common.init_dl_bwp;
    // If all RBs are occupied, stop iteration.
    return res_grid.get_pdsch_grid(cell_idx, init_dl_bwp.pdsch_common.pdsch_td_alloc_list[0].k0)
        .used_crbs(init_dl_bwp.generic_params, init_dl_bwp.pdsch_common.pdsch_td_alloc_list[0].symbols)
        .all();
  };
  next_dl_ue_index = round_robin_apply(ues, next_dl_ue_index, tx_ue_function, stop_iter);
}

void scheduler_time_rr::ul_sched(ue_pusch_allocator&          pusch_alloc,
                                 const ue_resource_grid_view& res_grid,
                                 const ue_repository&         ues,
                                 bool                         is_retx)
{
  auto tx_ue_function = [this, &res_grid, &pusch_alloc, is_retx](const ue& u) {
    return alloc_ul_ue(u, res_grid, pusch_alloc, is_retx, logger);
  };
  auto stop_iter = [&res_grid]() {
    // TODO: Account for different BWPs and cells.
    const du_cell_index_t cell_idx    = to_du_cell_index(0);
    auto&                 init_ul_bwp = res_grid.get_cell_cfg_common(cell_idx).ul_cfg_common.init_ul_bwp;
    // If all RBs are occupied, stop iteration.
    return res_grid.get_pusch_grid(cell_idx, init_ul_bwp.pusch_cfg_common->pusch_td_alloc_list[0].k2)
        .used_crbs(init_ul_bwp.generic_params, init_ul_bwp.pusch_cfg_common->pusch_td_alloc_list[0].symbols)
        .all();
  };
  next_ul_ue_index = round_robin_apply(ues, next_ul_ue_index, tx_ue_function, stop_iter);
}
