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

#include "ue_cell.h"
#include "../support/dmrs_helpers.h"
#include "../support/mcs_calculator.h"
#include "../support/pdcch_aggregation_level_calculator.h"
#include "../support/prbs_calculator.h"
#include "../support/sch_pdu_builder.h"
#include "srsran/scheduler/scheduler_feedback_handler.h"
#include<iostream>
using namespace srsran;

/// Number of UL HARQs reserved per UE (Implementation-defined)
constexpr unsigned NOF_UL_HARQS = 16;

ue_cell::ue_cell(du_ue_index_t              ue_index_,
                 rnti_t                     crnti_val,
                 const cell_configuration&  cell_cfg_common_,
                 const serving_cell_config& ue_serv_cell,
                 ue_harq_timeout_notifier   harq_timeout_notifier) :
  ue_index(ue_index_),
  cell_index(ue_serv_cell.cell_index),
  harqs(crnti_val, (unsigned)ue_serv_cell.pdsch_serv_cell_cfg->nof_harq_proc, NOF_UL_HARQS, harq_timeout_notifier),
  crnti_(crnti_val),
  cell_cfg(cell_cfg_common_),
  ue_cfg(crnti_val, cell_cfg_common_, ue_serv_cell),
  logger(srslog::fetch_basic_logger("SCHED")),
  channel_state(cell_cfg.expert_cfg.ue, ue_cfg.get_nof_dl_ports()),
  ue_mcs_calculator(cell_cfg_common_, channel_state)
{
}

void ue_cell::handle_reconfiguration_request(const serving_cell_config& new_ue_cell_cfg)
{
  ue_cfg.reconfigure(new_ue_cell_cfg);
}

void ue_cell::handle_resource_allocation_reconfiguration_request(const sched_ue_resource_alloc_config& ra_cfg)
{
  ue_res_alloc_cfg = ra_cfg;
}

const dl_harq_process*
ue_cell::handle_dl_ack_info(slot_point uci_slot, mac_harq_ack_report_status ack_value, unsigned harq_bit_idx)
{
  static constexpr unsigned dai_mod = 4;

  const dl_harq_process* h_dl = harqs.dl_ack_info(uci_slot, ack_value, harq_bit_idx % dai_mod);

  if (h_dl != nullptr) {
    // Consider the feedback in the link adaptation controller.
    ue_mcs_calculator.handle_dl_ack_info(
        ack_value, h_dl->last_alloc_params().tb[0]->mcs, h_dl->last_alloc_params().tb[0]->mcs_table);
  }

  return h_dl;
}

grant_prbs_mcs ue_cell::required_dl_prbs(const pdsch_time_domain_resource_allocation& pdsch_td_cfg,
                                         unsigned                                     pending_bytes,
                                         dci_dl_rnti_config_type                      dci_type) const
{
  pdsch_config_params pdsch_cfg;
  switch (dci_type) {
    case dci_dl_rnti_config_type::tc_rnti_f1_0:
      pdsch_cfg = get_pdsch_config_f1_0_tc_rnti(cell_cfg, pdsch_td_cfg);
      break;
    case dci_dl_rnti_config_type::c_rnti_f1_0:
      pdsch_cfg = get_pdsch_config_f1_0_c_rnti(cfg(), pdsch_td_cfg);
      break;
    case dci_dl_rnti_config_type::c_rnti_f1_1:
      pdsch_cfg = get_pdsch_config_f1_1_c_rnti(cfg(), pdsch_td_cfg, channel_state_manager().get_nof_dl_layers());
      break;
    default:
      report_fatal_error("Unsupported PDCCH DCI UL format");
  }

  optional<sch_mcs_index> mcs = ue_mcs_calculator.calculate_dl_mcs(pdsch_cfg.mcs_table);
  if (not mcs.has_value()) {
    // Return a grant with no PRBs if the MCS is invalid (CQI is either 0, for UE out of range, or > 15).
    return grant_prbs_mcs{.n_prbs = 0};
  }
  sch_mcs_description mcs_config = pdsch_mcs_get_config(pdsch_cfg.mcs_table, mcs.value());

  sch_prbs_tbs prbs_tbs = get_nof_prbs(prbs_calculator_sch_config{pending_bytes,
                                                                  (unsigned)pdsch_cfg.symbols.length(),
                                                                  calculate_nof_dmrs_per_rb(pdsch_cfg.dmrs),
                                                                  pdsch_cfg.nof_oh_prb,
                                                                  mcs_config,
                                                                  pdsch_cfg.nof_layers});
  if (prbs_tbs.nof_prbs == 0) {
    return grant_prbs_mcs{.n_prbs = 0};
  }

  // Bound Nof PRBs by the number of PRBs in the BWP and the limits defined in the scheduler config.
  
  const bwp_downlink_common& bwp_dl_cmn = *ue_cfg.bwp(active_bwp_id()).dl_common;
  unsigned                   nof_prbs   = std::min(prbs_tbs.nof_prbs, bwp_dl_cmn.generic_params.crbs.length());// This BWP guy is our 51
  // std::cout<<"PRb Without bound "<<prbs_tbs.nof_prbs<<" "<<bwp_dl_cmn.generic_params.crbs.length()<<std::endl;
  // std::cout<<"PRb Without Bounds"<<nof_prbs<<" "<<cell_cfg.expert_cfg.ue.pdsch_nof_rbs.stop()<<"  "<<cell_cfg.expert_cfg.ue.pdsch_nof_rbs.start()<<std::endl;
  // std::cout<<ue_res_alloc_cfg.pdsch_grant_size_limits.stop()<<"  "<<ue_res_alloc_cfg.pdsch_grant_size_limits.start()<<std::endl;
  // Apply grant size limits specified in the config.
  nof_prbs = std::max(std::min(nof_prbs, cell_cfg.expert_cfg.ue.pdsch_nof_rbs.stop()), // For in bound [1, 275]
                      cell_cfg.expert_cfg.ue.pdsch_nof_rbs.start());
  nof_prbs = std::max(std::min(nof_prbs, ue_res_alloc_cfg.pdsch_grant_size_limits.stop()), // For in bound [0, 275]
                      ue_res_alloc_cfg.pdsch_grant_size_limits.start());
  // std::cout<<"Prbs Required by ue "<<nof_prbs<<std::endl;
  return grant_prbs_mcs{mcs.value(), nof_prbs};
}

grant_prbs_mcs ue_cell::required_ul_prbs(const pusch_time_domain_resource_allocation& pusch_td_cfg,
                                         unsigned                                     pending_bytes,
                                         dci_ul_rnti_config_type                      dci_type) const
{
  const bwp_uplink_common& bwp_ul_cmn = *ue_cfg.bwp(active_bwp_id()).ul_common;

  pusch_config_params pusch_cfg;
  switch (dci_type) {
    case dci_ul_rnti_config_type::tc_rnti_f0_0:
      pusch_cfg = get_pusch_config_f0_0_tc_rnti(cell_cfg, pusch_td_cfg);
      break;
    case dci_ul_rnti_config_type::c_rnti_f0_0:
      pusch_cfg = get_pusch_config_f0_0_c_rnti(ue_cfg, bwp_ul_cmn, pusch_td_cfg);
      break;
    case dci_ul_rnti_config_type::c_rnti_f0_1:
      pusch_cfg = get_pusch_config_f0_1_c_rnti(ue_cfg, pusch_td_cfg, channel_state.get_nof_ul_layers());
      break;
    default:
      report_fatal_error("Unsupported PDCCH DCI UL format");
  }

  sch_mcs_index       mcs        = ue_mcs_calculator.calculate_ul_mcs(pusch_cfg.mcs_table);
  sch_mcs_description mcs_config = pusch_mcs_get_config(pusch_cfg.mcs_table, mcs, false);

  const unsigned nof_symbols = static_cast<unsigned>(pusch_td_cfg.symbols.length());

  sch_prbs_tbs prbs_tbs = get_nof_prbs(prbs_calculator_sch_config{pending_bytes,
                                                                  nof_symbols,
                                                                  calculate_nof_dmrs_per_rb(pusch_cfg.dmrs),
                                                                  pusch_cfg.nof_oh_prb,
                                                                  mcs_config,
                                                                  pusch_cfg.nof_layers});

  unsigned nof_prbs = std::min(prbs_tbs.nof_prbs, bwp_ul_cmn.generic_params.crbs.length());

  // Apply grant size limits specified in the config.
  nof_prbs = std::max(std::min(nof_prbs, ue_res_alloc_cfg.pusch_grant_size_limits.stop()),
                      ue_res_alloc_cfg.pusch_grant_size_limits.start());

  return grant_prbs_mcs{mcs, nof_prbs};
}

int ue_cell::handle_crc_pdu(slot_point pusch_slot, const ul_crc_pdu_indication& crc_pdu)
{
  // Update UL HARQ state.
  int tbs = harqs.ul_crc_info(crc_pdu.harq_id, crc_pdu.tb_crc_success, pusch_slot);
  if (tbs >= 0) {
    // HARQ with matching ID and UCI slot was found.

    // Update link adaptation controller.
    const ul_harq_process& h_ul = harqs.ul_harq(crc_pdu.harq_id);
    ue_mcs_calculator.handle_ul_crc_info(
        crc_pdu.tb_crc_success, h_ul.last_tx_params().mcs, h_ul.last_tx_params().mcs_table);

    // Update PUSCH KO count metrics.
    ue_metrics.consecutive_pusch_kos = (crc_pdu.tb_crc_success) ? 0 : ue_metrics.consecutive_pusch_kos + 1;

    // Update PUSCH SNR reported from PHY.
    if (crc_pdu.ul_sinr_metric.has_value()) {
      channel_state.update_pusch_snr(crc_pdu.ul_sinr_metric.value());
    }
  }

  return tbs;
}

template <typename FilterSearchSpace>
static static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP>
get_prioritized_search_spaces(const ue_cell& ue_cc, FilterSearchSpace filter, bool is_dl)
{
  static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP> active_search_spaces;

  // Get all search Spaces for active BWP.
  const auto& bwp_ss_lst = ue_cc.cfg().bwp(ue_cc.active_bwp_id()).search_spaces;
  for (const search_space_info* search_space : bwp_ss_lst) {
    if (filter(*search_space)) {
      active_search_spaces.push_back(search_space);
    }
  }

  // Sort search spaces by priority.
  // TODO: Revisit SearchSpace prioritization.
  auto sort_ss = [&ue_cc, is_dl](const search_space_info* lhs, const search_space_info* rhs) {
    // NOTE: It does not matter whether we use lhs or rhs SearchSpace to get the aggregation level as we are sorting not
    // filtering. Filtering is already done in previous step.
    const unsigned aggr_lvl_idx = to_aggregation_level_index(
        ue_cc.get_aggregation_level(ue_cc.channel_state_manager().get_wideband_cqi(), *lhs, is_dl));
    if (lhs->cfg->get_nof_candidates()[aggr_lvl_idx] == rhs->cfg->get_nof_candidates()[aggr_lvl_idx]) {
      // In case nof. candidates are equal, choose the SS with higher CORESET Id (i.e. try to use CORESET#0 as
      // little as possible).
      return lhs->cfg->get_coreset_id() > rhs->cfg->get_coreset_id();
    }
    return lhs->cfg->get_nof_candidates()[aggr_lvl_idx] > rhs->cfg->get_nof_candidates()[aggr_lvl_idx];
  };
  std::sort(active_search_spaces.begin(), active_search_spaces.end(), sort_ss);

  return active_search_spaces;
}

static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP>
ue_cell::get_active_dl_search_spaces(slot_point                        pdcch_slot,
                                     optional<dci_dl_rnti_config_type> required_dci_rnti_type) const
{
  static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP> active_search_spaces;

  if (required_dci_rnti_type == dci_dl_rnti_config_type::tc_rnti_f1_0) {
    // In case of TC-RNTI, use Type-1 PDCCH CSS for a UE.
    active_search_spaces.push_back(
        &cfg().search_space(cfg().cell_cfg_common.dl_cfg_common.init_dl_bwp.pdcch_common.ra_search_space_id));
    return active_search_spaces;
  }

  // In fallback mode state, only use search spaces configured in CellConfigCommon.
  if (is_fallback_mode) {
    srsran_assert(not required_dci_rnti_type.has_value() or
                      required_dci_rnti_type == dci_dl_rnti_config_type::c_rnti_f1_0,
                  "Invalid required dci-rnti parameter");
    for (const search_space_configuration& ss :
         ue_cfg.cell_cfg_common.dl_cfg_common.init_dl_bwp.pdcch_common.search_spaces) {
      active_search_spaces.push_back(&ue_cfg.search_space(ss.get_id()));
    }
    return active_search_spaces;
  }

  auto filter_ss = [this, pdcch_slot, required_dci_rnti_type](const search_space_info& ss) {
    if (ss.get_pdcch_candidates(get_aggregation_level(channel_state_manager().get_wideband_cqi(), ss, true), pdcch_slot)
            .empty()) {
      return false;
    }
    if (required_dci_rnti_type.has_value() and
        not pdcch_helper::search_space_supports_dci_dl_format(*ss.cfg, get_dci_dl_format(*required_dci_rnti_type))) {
      return false;
    }
    return true;
  };
  return get_prioritized_search_spaces(*this, filter_ss, true);
}

static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP>
ue_cell::get_active_ul_search_spaces(slot_point                        pdcch_slot,
                                     optional<dci_ul_rnti_config_type> required_dci_rnti_type) const
{
  // In fallback mode state, only use search spaces configured in CellConfigCommon.
  if (is_fallback_mode) {
    static_vector<const search_space_info*, MAX_NOF_SEARCH_SPACE_PER_BWP> active_search_spaces;
    srsran_assert(not required_dci_rnti_type.has_value() or
                      required_dci_rnti_type == dci_ul_rnti_config_type::c_rnti_f0_0,
                  "Invalid required dci-rnti parameter");
    for (const search_space_configuration& ss :
         ue_cfg.cell_cfg_common.dl_cfg_common.init_dl_bwp.pdcch_common.search_spaces) {
      active_search_spaces.push_back(&ue_cfg.search_space(ss.get_id()));
    }
    return active_search_spaces;
  }

  auto filter_ss = [required_dci_rnti_type](const search_space_info& ss) {
    return (not required_dci_rnti_type.has_value() or
            *required_dci_rnti_type == (ss.get_ul_dci_format() == dci_ul_format::f0_0
                                            ? dci_ul_rnti_config_type::c_rnti_f0_0
                                            : dci_ul_rnti_config_type::c_rnti_f0_1));
  };
  return get_prioritized_search_spaces(*this, filter_ss, false);
}

/// \brief Get recommended aggregation level for PDCCH given reported CQI.
aggregation_level ue_cell::get_aggregation_level(cqi_value cqi, const search_space_info& ss_info, bool is_dl) const
{
  cqi_table_t cqi_table = cqi_table_t::table1;
  unsigned    dci_size;

  if (ss_info.cfg->is_common_search_space()) {
    if (is_dl) {
      dci_size = ss_info.dci_sz.format1_0_common_size.total.value();
    } else {
      dci_size = ss_info.dci_sz.format0_0_common_size.total.value();
    }
  } else {
    if (is_dl) {
      dci_size = ss_info.get_dl_dci_format() == dci_dl_format::f1_1 ? ss_info.dci_sz.format1_1_ue_size->total.value()
                                                                    : ss_info.dci_sz.format1_0_ue_size->total.value();
    } else {
      dci_size = ss_info.get_ul_dci_format() == dci_ul_format::f0_1 ? ss_info.dci_sz.format0_1_ue_size->total.value()
                                                                    : ss_info.dci_sz.format0_0_ue_size->total.value();
    }
  }

  if (not ss_info.cfg->is_common_search_space() and cfg().cfg_dedicated().csi_meas_cfg.has_value()) {
    // NOTE: It is assumed there is atleast one CSI report configured for UE.
    cqi_table = cfg().cfg_dedicated().csi_meas_cfg->csi_report_cfg_list.back().cqi_table.value();
  }

  return map_cqi_to_aggregation_level(cqi, cqi_table, ss_info.cfg->get_nof_candidates(), dci_size);
}
