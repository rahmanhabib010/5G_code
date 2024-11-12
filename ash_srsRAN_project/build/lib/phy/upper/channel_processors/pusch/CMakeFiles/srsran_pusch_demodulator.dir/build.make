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
include lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/progress.make

# Include the compile flags for this target's objects.
include lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/flags.make

lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o: lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/flags.make
lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/channel_processors/pusch/pusch_demodulator_impl.cpp
lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o: lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o -MF CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o.d -o CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/channel_processors/pusch/pusch_demodulator_impl.cpp

lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/channel_processors/pusch/pusch_demodulator_impl.cpp > CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.i

lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/channel_processors/pusch/pusch_demodulator_impl.cpp -o CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.s

# Object files for target srsran_pusch_demodulator
srsran_pusch_demodulator_OBJECTS = \
"CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o"

# External object files for target srsran_pusch_demodulator
srsran_pusch_demodulator_EXTERNAL_OBJECTS =

lib/phy/upper/channel_processors/pusch/libsrsran_pusch_demodulator.a: lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/pusch_demodulator_impl.cpp.o
lib/phy/upper/channel_processors/pusch/libsrsran_pusch_demodulator.a: lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/build.make
lib/phy/upper/channel_processors/pusch/libsrsran_pusch_demodulator.a: lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsrsran_pusch_demodulator.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && $(CMAKE_COMMAND) -P CMakeFiles/srsran_pusch_demodulator.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_pusch_demodulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/build: lib/phy/upper/channel_processors/pusch/libsrsran_pusch_demodulator.a
.PHONY : lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/build

lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch && $(CMAKE_COMMAND) -P CMakeFiles/srsran_pusch_demodulator.dir/cmake_clean.cmake
.PHONY : lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/clean

lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/channel_processors/pusch /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/phy/upper/channel_processors/pusch/CMakeFiles/srsran_pusch_demodulator.dir/depend

