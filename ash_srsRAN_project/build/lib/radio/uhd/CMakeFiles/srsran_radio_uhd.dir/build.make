# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/cci/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/cci/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/cci/ashish/ash_srsRAN_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/cci/ashish/ash_srsRAN_project/build

# Include any dependencies generated for this target.
include lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/progress.make

# Include the compile flags for this target's objects.
include lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/flags.make

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/flags.make
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_config_uhd_validator.cpp
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o -MF CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o.d -o CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_config_uhd_validator.cpp

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_config_uhd_validator.cpp > CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.i

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_config_uhd_validator.cpp -o CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.s

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/flags.make
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_impl.cpp
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o -MF CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o.d -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_impl.cpp

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_impl.cpp > CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.i

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_impl.cpp -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.s

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/flags.make
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_rx_stream.cpp
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o -MF CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o.d -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_rx_stream.cpp

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_rx_stream.cpp > CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.i

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_rx_stream.cpp -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.s

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/flags.make
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_tx_stream.cpp
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o -MF CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o.d -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_tx_stream.cpp

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_tx_stream.cpp > CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.i

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd/radio_uhd_tx_stream.cpp -o CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.s

# Object files for target srsran_radio_uhd
srsran_radio_uhd_OBJECTS = \
"CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o" \
"CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o" \
"CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o" \
"CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o"

# External object files for target srsran_radio_uhd
srsran_radio_uhd_EXTERNAL_OBJECTS =

lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_config_uhd_validator.cpp.o
lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_impl.cpp.o
lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_rx_stream.cpp.o
lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/radio_uhd_tx_stream.cpp.o
lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/build.make
lib/radio/uhd/libsrsran_radio_uhd.a: lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library libsrsran_radio_uhd.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && $(CMAKE_COMMAND) -P CMakeFiles/srsran_radio_uhd.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_radio_uhd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/build: lib/radio/uhd/libsrsran_radio_uhd.a
.PHONY : lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/build

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd && $(CMAKE_COMMAND) -P CMakeFiles/srsran_radio_uhd.dir/cmake_clean.cmake
.PHONY : lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/clean

lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/radio/uhd /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd /home/cci/ashish/ash_srsRAN_project/build/lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/radio/uhd/CMakeFiles/srsran_radio_uhd.dir/depend
