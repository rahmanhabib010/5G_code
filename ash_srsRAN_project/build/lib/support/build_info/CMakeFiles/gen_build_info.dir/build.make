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

# Utility rule file for gen_build_info.

# Include any custom commands dependencies for this target.
include lib/support/build_info/CMakeFiles/gen_build_info.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/support/build_info/CMakeFiles/gen_build_info.dir/progress.make

lib/support/build_info/CMakeFiles/gen_build_info:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/support/build_info && cmake -P /home/cci/ashish/ash_srsRAN_project/build/build_info.cmake

gen_build_info: lib/support/build_info/CMakeFiles/gen_build_info
gen_build_info: lib/support/build_info/CMakeFiles/gen_build_info.dir/build.make
.PHONY : gen_build_info

# Rule to build all files generated by this target.
lib/support/build_info/CMakeFiles/gen_build_info.dir/build: gen_build_info
.PHONY : lib/support/build_info/CMakeFiles/gen_build_info.dir/build

lib/support/build_info/CMakeFiles/gen_build_info.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/support/build_info && $(CMAKE_COMMAND) -P CMakeFiles/gen_build_info.dir/cmake_clean.cmake
.PHONY : lib/support/build_info/CMakeFiles/gen_build_info.dir/clean

lib/support/build_info/CMakeFiles/gen_build_info.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/support/build_info /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/support/build_info /home/cci/ashish/ash_srsRAN_project/build/lib/support/build_info/CMakeFiles/gen_build_info.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/support/build_info/CMakeFiles/gen_build_info.dir/depend

