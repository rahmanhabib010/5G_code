# Install script for directory: /home/cci/ashish/ash_srsRAN_project/configs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srsran" TYPE FILE FILES
    "/home/cci/ashish/ash_srsRAN_project/configs/ash_gnb_rf_b200_tdd_n78_20mhz_both_slices.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/ash_gnb_rf_b200_tdd_n78_20mhz_slice1.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/ash_gnb_rf_b200_tdd_n78_20mhz_slice2.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_custom_cell_properties.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_rf_b200_tdd_n78_20mhz.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_rf_b210_fdd_srsUE.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_rf_n310_fdd_n3_20mhz.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_ru_picocom_scb_tdd_n78_20mhz.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_ru_ran550_tdd_n78_100mhz_2x2.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_ru_ran550_tdd_n78_20mhz.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/gnb_ru_rpqn4800e_tdd_n78_20mhz.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/mimo_usrp.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/mobility.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/qam256.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/qos.yml"
    "/home/cci/ashish/ash_srsRAN_project/configs/slicing.yml"
    )
endif()

