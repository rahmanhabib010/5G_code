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
include lib/radio/CMakeFiles/srsran_radio.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/radio/CMakeFiles/srsran_radio.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/radio/CMakeFiles/srsran_radio.dir/progress.make

# Include the compile flags for this target's objects.
include lib/radio/CMakeFiles/srsran_radio.dir/flags.make

lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o: lib/radio/CMakeFiles/srsran_radio.dir/flags.make
lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/radio/radio_factory.cpp
lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o: lib/radio/CMakeFiles/srsran_radio.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o -MF CMakeFiles/srsran_radio.dir/radio_factory.cpp.o.d -o CMakeFiles/srsran_radio.dir/radio_factory.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/radio/radio_factory.cpp

lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_radio.dir/radio_factory.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/radio/radio_factory.cpp > CMakeFiles/srsran_radio.dir/radio_factory.cpp.i

lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_radio.dir/radio_factory.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/radio/radio_factory.cpp -o CMakeFiles/srsran_radio.dir/radio_factory.cpp.s

# Object files for target srsran_radio
srsran_radio_OBJECTS = \
"CMakeFiles/srsran_radio.dir/radio_factory.cpp.o"

# External object files for target srsran_radio
srsran_radio_EXTERNAL_OBJECTS =

lib/radio/libsrsran_radio.a: lib/radio/CMakeFiles/srsran_radio.dir/radio_factory.cpp.o
lib/radio/libsrsran_radio.a: lib/radio/CMakeFiles/srsran_radio.dir/build.make
lib/radio/libsrsran_radio.a: lib/radio/CMakeFiles/srsran_radio.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsrsran_radio.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && $(CMAKE_COMMAND) -P CMakeFiles/srsran_radio.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_radio.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/radio/CMakeFiles/srsran_radio.dir/build: lib/radio/libsrsran_radio.a
.PHONY : lib/radio/CMakeFiles/srsran_radio.dir/build

lib/radio/CMakeFiles/srsran_radio.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/radio && $(CMAKE_COMMAND) -P CMakeFiles/srsran_radio.dir/cmake_clean.cmake
.PHONY : lib/radio/CMakeFiles/srsran_radio.dir/clean

lib/radio/CMakeFiles/srsran_radio.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/radio /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/radio /home/cci/ashish/ash_srsRAN_project/build/lib/radio/CMakeFiles/srsran_radio.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/radio/CMakeFiles/srsran_radio.dir/depend

