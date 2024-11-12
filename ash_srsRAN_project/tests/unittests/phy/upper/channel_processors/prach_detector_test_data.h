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

// This file was generated using the following MATLAB class on 14-09-2023 (seed 0):
//   + "srsPRACHDetectorUnittest.m"

#include "../../support/prach_buffer_test_doubles.h"
#include "srsran/phy/upper/channel_processors/prach_detector.h"
#include "srsran/support/file_vector.h"

namespace srsran {

using sequence_data_type =
    file_tensor<static_cast<unsigned>(prach_buffer_tensor::dims::count), cf_t, prach_buffer_tensor::dims>;

struct context_t {
  prach_detector::configuration config;
  phy_time_unit                 true_delay;
  prach_detection_result        result;
};

struct test_case_t {
  context_t          context;
  sequence_data_type symbols;
};

static const std::vector<test_case_t> prach_detector_test_data = {
    // clang-format off
  {{{834, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(7.93668e-07), {2.9046, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{57, phy_time_unit::from_seconds(7.8125e-07), 0, 9.4543}}}}, {"test_data/prach_detector_test_input0.dat", {839, 1, 1, 1, 1}}},
  {{{684, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(5.70174e-06), {1.7465, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{50, phy_time_unit::from_seconds(5.46875e-06), 0, 6.8983}}}}, {"test_data/prach_detector_test_input1.dat", {839, 1, 1, 1, 2}}},
  {{{60, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(5.21865e-06), {0.85507, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{33, phy_time_unit::from_seconds(5.46875e-06), 0, 4.9715}}}}, {"test_data/prach_detector_test_input2.dat", {839, 1, 1, 1, 4}}},
  {{{541, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(4.16298e-06), {3.0819, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{26, phy_time_unit::from_seconds(4.31969e-06), 0, 7.1664}}}}, {"test_data/prach_detector_test_input3.dat", {839, 1, 1, 1, 1}}},
  {{{24, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(6.24881e-06), {1.6992, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{33, phy_time_unit::from_seconds(5.9334e-06), 0, 5.6715}}}}, {"test_data/prach_detector_test_input4.dat", {839, 1, 1, 1, 2}}},
  {{{681, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(3.37032e-08), {1.0196, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{16, phy_time_unit::from_seconds(6.75097e-07), 0, -8.0933}}}}, {"test_data/prach_detector_test_input5.dat", {839, 1, 1, 1, 4}}},
  {{{211, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(4.62538e-06), {3.1121, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{16, phy_time_unit::from_seconds(4.6875e-06), 0, 0.64396}}}}, {"test_data/prach_detector_test_input6.dat", {839, 2, 1, 1, 1}}},
  {{{376, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(5.00644e-06), {1.7202, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{17, phy_time_unit::from_seconds(4.6875e-06), 0, 0.70631}}}}, {"test_data/prach_detector_test_input7.dat", {839, 2, 1, 1, 2}}},
  {{{101, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(5.92906e-06), {0.99417, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{3, phy_time_unit::from_seconds(6.25e-06), 0, 0.97974}}}}, {"test_data/prach_detector_test_input8.dat", {839, 2, 1, 1, 4}}},
  {{{393, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(6.19464e-06), {2.9985, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{58, phy_time_unit::from_seconds(6.45113e-06), 0, 5.5898}}}}, {"test_data/prach_detector_test_input9.dat", {839, 2, 1, 1, 1}}},
  {{{665, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(2.87966e-06), {1.76, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{10, phy_time_unit::from_seconds(2.86334e-06), 0, 26.3219}}}}, {"test_data/prach_detector_test_input10.dat", {839, 2, 1, 1, 2}}},
  {{{1002, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(1.55174e-07), {0.97026, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{5, phy_time_unit::from_seconds(2.59796e-07), 0, 12.9268}}}}, {"test_data/prach_detector_test_input11.dat", {839, 2, 1, 1, 4}}},
  {{{658, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(1.90059e-06), {2.8733, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{24, phy_time_unit::from_seconds(1.5625e-06), 0, 0.95695}}}}, {"test_data/prach_detector_test_input12.dat", {839, 4, 1, 1, 1}}},
  {{{501, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(1.32539e-06), {1.7048, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{7, phy_time_unit::from_seconds(1.5625e-06), 0, 3.9903}}}}, {"test_data/prach_detector_test_input13.dat", {839, 4, 1, 1, 2}}},
  {{{136, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(1.94381e-07), {0.95292, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{47, phy_time_unit::from_seconds(0), 0, 9.6829}}}}, {"test_data/prach_detector_test_input14.dat", {839, 4, 1, 1, 4}}},
  {{{268, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(6.37188e-07), {2.9858, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{10, phy_time_unit::from_seconds(5.19592e-07), 0, 16.4588}}}}, {"test_data/prach_detector_test_input15.dat", {839, 4, 1, 1, 1}}},
  {{{100, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(8.67735e-07), {1.755, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{30, phy_time_unit::from_seconds(7.77525e-07), 0, 17.1839}}}}, {"test_data/prach_detector_test_input16.dat", {839, 4, 1, 1, 2}}},
  {{{719, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(1.72522e-06), {0.98877, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{25, phy_time_unit::from_seconds(2.08023e-06), 0, 1.1246}}}}, {"test_data/prach_detector_test_input17.dat", {839, 4, 1, 1, 4}}},
  {{{665, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 1}, phy_time_unit::from_seconds(1.37056e-08), {2.969, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{10, phy_time_unit::from_seconds(0), 0, 3.0068}}}}, {"test_data/prach_detector_test_input18.dat", {839, 4, 1, 1, 1}}},
  {{{958, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 2}, phy_time_unit::from_seconds(3.42795e-07), {1.7701, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{51, phy_time_unit::from_seconds(3.90625e-07), 0, 2.1751}}}}, {"test_data/prach_detector_test_input19.dat", {839, 4, 1, 1, 2}}},
  {{{37, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 4}, phy_time_unit::from_seconds(5.12954e-07), {0.99887, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{40, phy_time_unit::from_seconds(3.90625e-07), 0, 3.5405}}}}, {"test_data/prach_detector_test_input20.dat", {839, 4, 1, 1, 4}}},
  {{{215, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 1}, phy_time_unit::from_seconds(9.51897e-08), {2.9963, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{31, phy_time_unit::from_seconds(1.68309e-07), 0, 0.23038}}}}, {"test_data/prach_detector_test_input21.dat", {839, 4, 1, 1, 1}}},
  {{{11, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 2}, phy_time_unit::from_seconds(8.16506e-07), {1.6539, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{45, phy_time_unit::from_seconds(7.79853e-07), 0, 31.5049}}}}, {"test_data/prach_detector_test_input22.dat", {839, 4, 1, 1, 2}}},
  {{{472, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 4}, phy_time_unit::from_seconds(4.50633e-07), {0.95793, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{5, phy_time_unit::from_seconds(4.55574e-07), 0, 5.4888}}}}, {"test_data/prach_detector_test_input23.dat", {839, 4, 1, 1, 4}}},
  {{{748, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 1}, phy_time_unit::from_seconds(2.65526e-07), {3.1434, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{22, phy_time_unit::from_seconds(2.60417e-07), 0, 7.3964}}}}, {"test_data/prach_detector_test_input24.dat", {139, 2, 1, 1, 1}}},
  {{{768, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 2}, phy_time_unit::from_seconds(1.00535e-07), {1.6114, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{6, phy_time_unit::from_seconds(0), 0, 7.3549}}}}, {"test_data/prach_detector_test_input25.dat", {139, 2, 1, 1, 2}}},
  {{{562, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 4}, phy_time_unit::from_seconds(1.93289e-07), {1.0464, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{3, phy_time_unit::from_seconds(0), 0, 4.8266}}}}, {"test_data/prach_detector_test_input26.dat", {139, 2, 1, 1, 4}}},
  {{{708, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 1}, phy_time_unit::from_seconds(1.71211e-07), {2.6773, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{17, phy_time_unit::from_seconds(2.07959e-07), 0, 4.1854}}}}, {"test_data/prach_detector_test_input27.dat", {139, 2, 1, 1, 1}}},
  {{{398, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 2}, phy_time_unit::from_seconds(4.44817e-07), {1.586, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{13, phy_time_unit::from_seconds(3.54092e-07), 0, 8.4814}}}}, {"test_data/prach_detector_test_input28.dat", {139, 2, 1, 1, 2}}},
  {{{809, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 4}, phy_time_unit::from_seconds(1.53436e-07), {0.83983, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{35, phy_time_unit::from_seconds(2.07959e-07), 0, 8.5157}}}}, {"test_data/prach_detector_test_input29.dat", {139, 2, 1, 1, 4}}},
  {{{852, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 1}, phy_time_unit::from_seconds(7.13689e-09), {3.0369, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{56, phy_time_unit::from_seconds(0), 0, 2.7334}}}}, {"test_data/prach_detector_test_input30.dat", {139, 12, 1, 1, 1}}},
  {{{45, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 2}, phy_time_unit::from_seconds(3.55402e-08), {1.6691, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{52, phy_time_unit::from_seconds(0), 0, 5.7288}}}}, {"test_data/prach_detector_test_input31.dat", {139, 12, 1, 1, 2}}},
  {{{731, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 4}, phy_time_unit::from_seconds(3.24e-07), {0.96508, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{47, phy_time_unit::from_seconds(2.60417e-07), 0, 9.025}}}}, {"test_data/prach_detector_test_input32.dat", {139, 12, 1, 1, 4}}},
  {{{426, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 1}, phy_time_unit::from_seconds(2.01735e-07), {3.0554, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{22, phy_time_unit::from_seconds(1.14284e-07), 0, 4.5769}}}}, {"test_data/prach_detector_test_input33.dat", {139, 12, 1, 1, 1}}},
  {{{564, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 2}, phy_time_unit::from_seconds(4.15589e-07), {1.6639, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{11, phy_time_unit::from_seconds(4.68375e-07), 0, 6.6024}}}}, {"test_data/prach_detector_test_input34.dat", {139, 12, 1, 1, 2}}},
  {{{935, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 11, 0, 64, to_ra_subcarrier_spacing("15.000000kHz"), 4}, phy_time_unit::from_seconds(2.51398e-07), {0.94175, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{51, phy_time_unit::from_seconds(2.81025e-07), 0, 7.6967}}}}, {"test_data/prach_detector_test_input35.dat", {139, 12, 1, 1, 4}}},
  {{{347, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(4.91567e-06), {3.0404, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{61, phy_time_unit::from_seconds(4.6875e-06), 0, 4.0585}}}}, {"test_data/prach_detector_test_input36.dat", {839, 1, 1, 1, 1}}},
  {{{672, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(6.03558e-06), {1.8029, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{29, phy_time_unit::from_seconds(6.25e-06), 0, 5.7344}}}}, {"test_data/prach_detector_test_input37.dat", {839, 1, 1, 1, 2}}},
  {{{94, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(4.84127e-06), {1.0107, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{47, phy_time_unit::from_seconds(4.6875e-06), 0, 10.009}}}}, {"test_data/prach_detector_test_input38.dat", {839, 1, 1, 1, 4}}},
  {{{363, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(1.693e-06), {2.9552, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{1, phy_time_unit::from_seconds(1.45821e-06), 0, 6.4466}}}}, {"test_data/prach_detector_test_input39.dat", {839, 1, 1, 1, 1}}},
  {{{211, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(2.29443e-06), {1.7127, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{10, phy_time_unit::from_seconds(2.08209e-06), 0, 7.8886}}}}, {"test_data/prach_detector_test_input40.dat", {839, 1, 1, 1, 2}}},
  {{{677, to_prach_format_type("0"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(4.03255e-06), {0.9695, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{62, phy_time_unit::from_seconds(3.69022e-06), 0, 3.7403}}}}, {"test_data/prach_detector_test_input41.dat", {839, 1, 1, 1, 4}}},
  {{{393, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(7.16151e-07), {3.0094, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{31, phy_time_unit::from_seconds(7.8125e-07), 0, 0.41335}}}}, {"test_data/prach_detector_test_input42.dat", {839, 2, 1, 1, 1}}},
  {{{516, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(1.09509e-06), {1.7235, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{0, phy_time_unit::from_seconds(7.8125e-07), 0, 0.11087}}}}, {"test_data/prach_detector_test_input43.dat", {839, 2, 1, 1, 2}}},
  {{{125, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(2.01587e-06), {1.0198, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{37, phy_time_unit::from_seconds(2.34375e-06), 0, 0.12893}}}}, {"test_data/prach_detector_test_input44.dat", {839, 2, 1, 1, 4}}},
  {{{814, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(5.41229e-07), {3.1386, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{59, phy_time_unit::from_seconds(8.78091e-07), 0, 1.7435}}}}, {"test_data/prach_detector_test_input45.dat", {839, 2, 1, 1, 1}}},
  {{{135, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(3.6767e-06), {1.7467, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{60, phy_time_unit::from_seconds(3.8988e-06), 0, 5.6854}}}}, {"test_data/prach_detector_test_input46.dat", {839, 2, 1, 1, 2}}},
  {{{475, to_prach_format_type("1"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(5.21891e-06), {0.97931, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{2, phy_time_unit::from_seconds(5.26017e-06), 0, 23.3889}}}}, {"test_data/prach_detector_test_input47.dat", {839, 2, 1, 1, 4}}},
  {{{791, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(4.92414e-06), {2.9044, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{28, phy_time_unit::from_seconds(4.6875e-06), 0, 3.6616}}}}, {"test_data/prach_detector_test_input48.dat", {839, 4, 1, 1, 1}}},
  {{{630, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(2.5307e-06), {1.8288, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{39, phy_time_unit::from_seconds(2.34375e-06), 0, 6.8656}}}}, {"test_data/prach_detector_test_input49.dat", {839, 4, 1, 1, 2}}},
  {{{972, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(1.80046e-06), {0.95559, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{58, phy_time_unit::from_seconds(1.5625e-06), 0, 5.6476}}}}, {"test_data/prach_detector_test_input50.dat", {839, 4, 1, 1, 4}}},
  {{{903, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 1}, phy_time_unit::from_seconds(2.5126e-06), {2.9143, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{34, phy_time_unit::from_seconds(2.70411e-06), 0, 7.8185}}}}, {"test_data/prach_detector_test_input51.dat", {839, 4, 1, 1, 1}}},
  {{{592, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 2}, phy_time_unit::from_seconds(5.24061e-06), {1.7157, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{8, phy_time_unit::from_seconds(5.41567e-06), 0, 7.519}}}}, {"test_data/prach_detector_test_input52.dat", {839, 4, 1, 1, 2}}},
  {{{153, to_prach_format_type("2"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("1.250000kHz"), 4}, phy_time_unit::from_seconds(2.83066e-06), {0.96924, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{55, phy_time_unit::from_seconds(2.85775e-06), 0, 20.9118}}}}, {"test_data/prach_detector_test_input53.dat", {839, 4, 1, 1, 4}}},
  {{{402, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 1}, phy_time_unit::from_seconds(1.27805e-06), {3.034, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{51, phy_time_unit::from_seconds(1.36719e-06), 0, -2.1548}}}}, {"test_data/prach_detector_test_input54.dat", {839, 4, 1, 1, 1}}},
  {{{144, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 2}, phy_time_unit::from_seconds(1.16917e-06), {1.7649, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{23, phy_time_unit::from_seconds(1.17187e-06), 0, 4.7033}}}}, {"test_data/prach_detector_test_input55.dat", {839, 4, 1, 1, 2}}},
  {{{221, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 4}, phy_time_unit::from_seconds(6.4275e-07), {0.94989, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{48, phy_time_unit::from_seconds(5.85937e-07), 0, 7.2166}}}}, {"test_data/prach_detector_test_input56.dat", {839, 4, 1, 1, 4}}},
  {{{372, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 1}, phy_time_unit::from_seconds(8.52804e-07), {2.9369, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{55, phy_time_unit::from_seconds(9.09751e-07), 0, 5.4742}}}}, {"test_data/prach_detector_test_input57.dat", {839, 4, 1, 1, 1}}},
  {{{511, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 2}, phy_time_unit::from_seconds(1.43328e-06), {1.6941, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{4, phy_time_unit::from_seconds(1.45821e-06), 0, 13.6307}}}}, {"test_data/prach_detector_test_input58.dat", {839, 4, 1, 1, 2}}},
  {{{465, to_prach_format_type("3"), restricted_set_config::UNRESTRICTED, 1, 0, 64, to_ra_subcarrier_spacing("5.000000kHz"), 4}, phy_time_unit::from_seconds(8.6352e-07), {0.99888, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{51, phy_time_unit::from_seconds(8.1873e-07), 0, 14.0826}}}}, {"test_data/prach_detector_test_input59.dat", {839, 4, 1, 1, 4}}},
  {{{638, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 1}, phy_time_unit::from_seconds(7.33719e-08), {2.9525, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{9, phy_time_unit::from_seconds(1.30208e-07), 0, 2.8803}}}}, {"test_data/prach_detector_test_input60.dat", {139, 2, 1, 1, 1}}},
  {{{311, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 2}, phy_time_unit::from_seconds(1.74697e-07), {1.82, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{31, phy_time_unit::from_seconds(1.30208e-07), 0, 8.3803}}}}, {"test_data/prach_detector_test_input61.dat", {139, 2, 1, 1, 2}}},
  {{{576, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 4}, phy_time_unit::from_seconds(2.17934e-07), {0.95603, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{0, phy_time_unit::from_seconds(1.30208e-07), 0, 4.8688}}}}, {"test_data/prach_detector_test_input62.dat", {139, 2, 1, 1, 4}}},
  {{{526, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 1}, phy_time_unit::from_seconds(1.24597e-07), {3.2389, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{46, phy_time_unit::from_seconds(9.36751e-08), 0, 6.2399}}}}, {"test_data/prach_detector_test_input63.dat", {139, 2, 1, 1, 1}}},
  {{{887, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 2}, phy_time_unit::from_seconds(2.55182e-07), {1.8552, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{48, phy_time_unit::from_seconds(2.60417e-07), 0, 7.6184}}}}, {"test_data/prach_detector_test_input64.dat", {139, 2, 1, 1, 2}}},
  {{{239, to_prach_format_type("A1"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 4}, phy_time_unit::from_seconds(2.45503e-07), {1.0157, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{25, phy_time_unit::from_seconds(2.23883e-07), 0, 13.4433}}}}, {"test_data/prach_detector_test_input65.dat", {139, 2, 1, 1, 4}}},
  {{{355, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 1}, phy_time_unit::from_seconds(9.44987e-08), {3.1049, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{48, phy_time_unit::from_seconds(0), 0, 0.52181}}}}, {"test_data/prach_detector_test_input66.dat", {139, 12, 1, 1, 1}}},
  {{{367, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 2}, phy_time_unit::from_seconds(1.03128e-07), {1.8572, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{4, phy_time_unit::from_seconds(1.30208e-07), 0, 4.6386}}}}, {"test_data/prach_detector_test_input67.dat", {139, 12, 1, 1, 2}}},
  {{{998, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 0, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 4}, phy_time_unit::from_seconds(1.22656e-07), {0.96447, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{50, phy_time_unit::from_seconds(1.30208e-07), 0, 7.2501}}}}, {"test_data/prach_detector_test_input68.dat", {139, 12, 1, 1, 4}}},
  {{{952, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 1}, phy_time_unit::from_seconds(6.62221e-08), {2.8929, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{41, phy_time_unit::from_seconds(5.71418e-08), 0, 3.9745}}}}, {"test_data/prach_detector_test_input69.dat", {139, 12, 1, 1, 1}}},
  {{{722, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 2}, phy_time_unit::from_seconds(1.29257e-08), {1.7356, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{1, phy_time_unit::from_seconds(9.36751e-08), 0, -0.041956}}}}, {"test_data/prach_detector_test_input70.dat", {139, 12, 1, 1, 2}}},
  {{{469, to_prach_format_type("B4"), restricted_set_config::UNRESTRICTED, 14, 0, 64, to_ra_subcarrier_spacing("30.000000kHz"), 4}, phy_time_unit::from_seconds(1.08036e-07), {0.96888, phy_time_unit::from_seconds(0.0), phy_time_unit::from_seconds(0.0), {{57, phy_time_unit::from_seconds(1.30208e-07), 0, 7.7987}}}}, {"test_data/prach_detector_test_input71.dat", {139, 12, 1, 1, 4}}},
    // clang-format on
};

} // namespace srsran
