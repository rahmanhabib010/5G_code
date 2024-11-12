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

#pragma once

#include "srsran/du_high/du_high_executor_mapper.h"
#include "srsran/support/srsran_assert.h"

namespace srsran {

/// L2 UL executor mapper that maps UEs based on their RNTI.
class index_based_ue_executor_mapper final : public du_high_ue_executor_mapper
{
public:
  index_based_ue_executor_mapper(const std::initializer_list<task_executor*>& execs_) :
    execs(execs_.begin(), execs_.end())
  {
  }

  task_executor& rebind_executor(du_ue_index_t ue_index, du_cell_index_t pcell_index) override
  {
    // Static lookup
    srsran_sanity_check(is_du_ue_index_valid(ue_index), "Invalid ueId={}", ue_index);
    return executor(ue_index);
  }

  task_executor& executor(du_ue_index_t ue_index) override
  {
    ue_index = ue_index < MAX_NOF_DU_UES ? ue_index : to_du_ue_index(0);
    return *execs[ue_index % execs.size()];
  }

private:
  std::vector<task_executor*> execs;
};

/// L2 UL executor mapper that maps UEs based on their PCell.
class pcell_ue_executor_mapper final : public du_high_ue_executor_mapper
{
public:
  explicit pcell_ue_executor_mapper(const std::initializer_list<task_executor*>& execs_) :
    execs(execs_.begin(), execs_.end())
  {
    // Initialize executors in a round-robin fashion.
    unsigned count = 0;
    for (auto& rnti_exec : ue_idx_to_exec) {
      rnti_exec = execs[count % execs.size()];
      count++;
    }
  }

  task_executor& rebind_executor(du_ue_index_t ue_index, du_cell_index_t pcell_index) override
  {
    srsran_sanity_check(is_du_ue_index_valid(ue_index), "Invalid ue id={}", ue_index);
    ue_idx_to_exec[ue_index] = execs[pcell_index % execs.size()];
    return *ue_idx_to_exec[ue_index];
  }

  task_executor& executor(du_ue_index_t ue_index) override
  {
    return *ue_idx_to_exec[std::min(ue_index, MAX_NOF_DU_UES)];
  }

private:
  std::vector<task_executor*> execs;

  /// Map of ue indexes to executors. The last position is used when the UE has no ue_index yet assigned.
  std::array<task_executor*, MAX_NOF_DU_UES + 1> ue_idx_to_exec;
};

/// \brief Mapper of task executors used by the MAC DL, RLC DL and MAC scheduler for low-latency tasks. The task
/// executors can be mapped based on cell index or type of task (slot indication vs others).
class cell_executor_mapper final : public du_high_cell_executor_mapper
{
public:
  /// \brief Creates a cell_executor_mapper instance.
  /// \param cell_execs_ List of task executors that will be used by the MAC DL and scheduler.
  /// \param blocking_slot_ind sets whether slot indication tasks are processed synchronously or asynchronously
  explicit cell_executor_mapper(const std::initializer_list<task_executor*>& cell_execs_,
                                const std::initializer_list<task_executor*>& slot_execs_ = {}) :
    cell_execs(cell_execs_.begin(), cell_execs_.end()), slot_execs(slot_execs_.begin(), slot_execs_.end())
  {
    srsran_assert(not cell_execs.empty(), "The number of DL executors must be higher than 1");
    if (slot_execs.empty()) {
      slot_execs = cell_execs;
    }
  }

  /// \brief Fetches a default task executor for a given cell.
  task_executor& executor(du_cell_index_t cell_index) override { return *cell_execs[cell_index % cell_execs.size()]; }

  /// \brief Fetches a task executor for slot indications, given a cell index.
  task_executor& slot_ind_executor(du_cell_index_t cell_index) override
  {
    return *slot_execs[cell_index % cell_execs.size()];
  }

private:
  /// Executors used to process tasks related to the MAC DL and scheduler other than the slot indications.
  std::vector<task_executor*> cell_execs;

  /// \brief Executors used to process slot indication tasks. These executors can be either the same as the
  /// \c cell_execs or point to a sync_task_executor adapter stored in \c blocking_slot_execs, depending on whether
  /// slot indication tasks are processed synchronously or asynchronously.
  std::vector<task_executor*> slot_execs;
};

/// \brief Task Executor Mapper for DU-high.
class du_high_executor_mapper_impl final : public du_high_executor_mapper
{
public:
  explicit du_high_executor_mapper_impl(std::unique_ptr<du_high_cell_executor_mapper> cell_mapper_,
                                        std::unique_ptr<du_high_ue_executor_mapper>   ue_mapper_,
                                        task_executor&                                du_ctrl_exec_,
                                        task_executor&                                timer_exec_,
                                        task_executor&                                du_e2_exec_) :
    cell_mapper_ptr(std::move(cell_mapper_)),
    ue_mapper_ptr(std::move(ue_mapper_)),
    du_ctrl_exec(&du_ctrl_exec_),
    timer_exec(&timer_exec_),
    du_e2_exec(&du_e2_exec_)
  {
  }

  du_high_cell_executor_mapper& cell_mapper() override { return *cell_mapper_ptr; }

  du_high_ue_executor_mapper& ue_mapper() override { return *ue_mapper_ptr; }

  task_executor& du_control_executor() override { return *du_ctrl_exec; }

  task_executor& du_timer_executor() override { return *timer_exec; }

  task_executor& du_e2_executor() override { return *du_e2_exec; }

private:
  std::unique_ptr<du_high_cell_executor_mapper> cell_mapper_ptr;
  std::unique_ptr<du_high_ue_executor_mapper>   ue_mapper_ptr;
  task_executor*                                du_ctrl_exec;
  task_executor*                                timer_exec;
  task_executor*                                du_e2_exec;
};

} // namespace srsran