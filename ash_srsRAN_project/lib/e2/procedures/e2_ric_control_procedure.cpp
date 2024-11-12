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

#include "e2_ric_control_procedure.h"
#include <iostream>
// #include <chrono>
// #include <ctime>
// #include <iomanip>
using namespace srsran;
using namespace asn1::e2ap;
using namespace asn1::e2sm_rc;

e2_ric_control_procedure::e2_ric_control_procedure(const e2_ric_control_request& request_,
                                                   e2_message_notifier&          notif_,
                                                   e2sm_manager&                 e2sm_mng_,
                                                   srslog::basic_logger&         logger_) :
  logger(logger_), ric_notif(notif_), e2sm_mng(e2sm_mng_), request(request_)
{
}

void e2_ric_control_procedure::operator()(coro_context<async_task<void>>& ctx)
{
  /*
  For Time-Latency Calculations
    auto start = std::chrono::high_resolution_clock::now();
    std::time_t start_time_t = std::chrono::system_clock::to_time_t(start);
    std::tm* start_time_tm = std::localtime(&start_time_t);
    std::cout << "Start Time: " 
                << std::put_time(start_time_tm, "%Y-%m-%d %H:%M:%S ") 
                << std::endl;
    auto microseconds = std::chrono::duration_cast<std::chrono::microseconds>(
                              start.time_since_epoch()) % 1000000;

      std::cout << "." << std::setfill('0') << std::setw(6) << microseconds.count() << " microseconds" << std::endl;
  */
  
  
 std::cout<<"Starting e2_ric_control_procedure operator "<<std::endl;
  ri_cctrl_request_s ctrl_req   = request.request;
  e2sm_interface*    e2sm_iface = e2sm_mng.get_e2sm_interface(ctrl_req->ra_nfunction_id.value);
  if(e2sm_iface == nullptr){
    std::cout<<"RAN function id Not Found"<<std::endl;
    // e2sm_mng.add_supported_ran_function(148, "1.3.6.1.4.1.53148.1.2.2.2");
    
  }
  // e2sm_iface = e2sm_mng.get_e2sm_interface(ctrl_req->ra_nfunction_id.value);

  CORO_BEGIN(ctx);
  ctrl_config_request = process_request();
  std::cout<<"Request is processed, Now staring Enforcrement "<<std::endl;
  CORO_AWAIT_VALUE(ctrl_config_response,
                   e2sm_iface->get_param_configurator()->configure_ue_mac_scheduler(ctrl_config_request));
  

  if (ctrl_config_response.harq_processes_result and ctrl_config_response.max_prb_alloc_result and
      ctrl_config_response.min_prb_alloc_result) {
    send_e2_ric_control_acknowledge(ctrl_config_request, ctrl_config_response);
  } else {
    send_e2_ric_control_failure(ctrl_config_request, ctrl_config_response);
  }
  /*
  For time-latency Calculations
    auto end = std::chrono::high_resolution_clock::now();
    auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(end - start);
    std::cout << "E2-RIC-Control-Procedure-Latency: " << duration.count() << " milliseconds" << std::endl;
    auto durationNS = std::chrono::duration_cast<std::chrono::nanoseconds>(end - start);
    std::cout << "E2-RIC-Control-Procedure-Latency: " << durationNS.count() << " nanoseconds" << std::endl;
  */
  

  CORO_RETURN();
}

std::string hex_to_ASCII(std::string hex) {
    std::string out = "";
    for (size_t i = 0; i < hex.length(); i += 2) {
        unsigned char byte =stoi(hex.substr(i, 2), nullptr, 16);
        // std::cout<<byte<<std::endl;
        out += byte;
    }
    return out;
}


void print_slice_policy(ric_control_config_slice policy){
    std::cout<<"Processed Policy from recieved RC Message is :"<<std::endl;
    for(long unsigned int i = 0;i < policy.slice_config_list.size(); i++){
        slice_params slice = policy.slice_config_list[i];
        std::cout<<"sst = "<<std::to_string(slice.sst)<<", \t\tsd = "<<slice.sd<<", \t\tpartSize = "<<slice.partition<<std::endl;
    }
}

ric_control_config_slice process_slice_payload(std::string payload){
    ric_control_config_slice policy;
    int per_slice[3] = {0}; // sst, sd, partSize
    int per_slice_index = 0;
    int curVal = 0;
    for(long unsigned int i = 0;i < payload.size(); i++){
        if (payload[i] == '\n'){
            per_slice[per_slice_index++] = curVal;
            slice_params cur_slice = {static_cast<uint8_t>(per_slice[0]), uint32_t(per_slice[1]), per_slice[2]};
            policy.slice_config_list.push_back(cur_slice);
            // reset for new line
            curVal = 0;
            per_slice_index = 0;
        }else if (payload[i] == ','){
            per_slice[per_slice_index++] = curVal;
            curVal = 0;
        }else {
            curVal = curVal * 10 + (payload[i] - '0');
        }
    }
    return policy;
    
}


ric_control_config e2_ric_control_procedure::process_request()
{
  ri_cctrl_request_s      ctrl_req = request.request;
  e2_sm_rc_ctrl_outcome_s outcome;
  e2sm_interface*         e2sm_iface = e2sm_mng.get_e2sm_interface(ctrl_req->ra_nfunction_id.value);
  if (!e2sm_iface) {
    logger.error("RAN function ID not supported");
    std::cout<<"RAN function ID not supported "<<ctrl_req->ra_nfunction_id.value<<std::endl; 
    return {};
  }
  std::cout<<"RAN function ID IS supported "<<ctrl_req->ra_nfunction_id.value<<std::endl; 

  ric_control_config ctrl_config;

  // For Slice-Resource-Alloc-Change RC Message, we write our own procedure
  if (ctrl_req->ri_cctrl_hdr.value.to_number() == 41){
    std::cout<<"Processing received RC Message for Slice-alloc-change"<<std::endl;
    // Generally, asn1 messages are decoded using format specified by headers.
    // we say, if header has code 41, it is SLICE_RES_ALLOC_CHANGE_RC_MSG 
    // then we, decode it in our way
    std::string payload = hex_to_ASCII(ctrl_req->ri_cctrl_msg.value.to_string());
    // std::cout<<"check |"<<payload<<std::endl;
    // Process payload-info to policy and then save in ctrl_config
    ric_control_config_slice policy = process_slice_payload(payload);
    print_slice_policy(policy);
    ctrl_config.per_slice_alloc = policy;
    return ctrl_config;
  }

  if (!(ctrl_req->ri_cctrl_hdr.value.to_number() == 0)) {
    e2sm_iface->process_control_header(ctrl_req->ri_cctrl_hdr.value, ctrl_config);
  } else {
    logger.warning("Control header not present");
    ctrl_config.ue_id = 1;
  }
  e2sm_iface->process_control_message(ctrl_req->ri_cctrl_msg.value, ctrl_config);
  return ctrl_config;
}

void e2_ric_control_procedure::send_e2_ric_control_acknowledge(ric_control_config          ctrl_request,
                                                               ric_control_config_response ctrl_response)
{
  e2_message msg;
  msg.pdu.set_successful_outcome();
  logger.info("Sending E2 RIC Control Acknowledge");
  msg.pdu.successful_outcome().load_info_obj(ASN1_E2AP_ID_RI_CCTRL);
  ri_cctrl_ack_s& ack              = msg.pdu.successful_outcome().value.ri_cctrl_ack();
  ack->ra_nfunction_id             = request.request->ra_nfunction_id;
  ack->ri_crequest_id              = request.request->ri_crequest_id;
  ack->ri_ccall_process_id_present = false;
  ack->ri_cctrl_outcome_present    = false;
  ric_notif.on_new_message(msg);
}

void e2_ric_control_procedure::send_e2_ric_control_failure(ric_control_config          ctrl_request,
                                                           ric_control_config_response ctrl_response)
{
  e2_message msg;
  msg.pdu.set_unsuccessful_outcome();
  logger.info("Sending E2 RIC Control Failure");
  msg.pdu.unsuccessful_outcome().load_info_obj(ASN1_E2AP_ID_RI_CCTRL);
  ri_cctrl_fail_s& fail             = msg.pdu.unsuccessful_outcome().value.ri_cctrl_fail();
  fail->ra_nfunction_id             = request.request->ra_nfunction_id;
  fail->ri_crequest_id              = request.request->ri_crequest_id;
  fail->ri_ccall_process_id_present = false;
  fail->ri_cctrl_outcome_present    = false;
  ric_notif.on_new_message(msg);
}
