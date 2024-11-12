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
include lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/progress.make

# Include the compile flags for this target's objects.
include lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/flags.make

lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o: lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/flags.make
lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/phy/generic_functions/generic_functions_factories.cpp
lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o: lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && /usr/bin/c++ $(CXX_DEFINES) -DENABLE_FFTW $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o -MF CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o.d -o CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/phy/generic_functions/generic_functions_factories.cpp

lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && /usr/bin/c++ $(CXX_DEFINES) -DENABLE_FFTW $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/phy/generic_functions/generic_functions_factories.cpp > CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.i

lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && /usr/bin/c++ $(CXX_DEFINES) -DENABLE_FFTW $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/phy/generic_functions/generic_functions_factories.cpp -o CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.s

# Object files for target srsran_generic_funcs
srsran_generic_funcs_OBJECTS = \
"CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o"

# External object files for target srsran_generic_funcs
srsran_generic_funcs_EXTERNAL_OBJECTS =

lib/phy/generic_functions/libsrsran_generic_funcs.a: lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/generic_functions_factories.cpp.o
lib/phy/generic_functions/libsrsran_generic_funcs.a: lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/build.make
lib/phy/generic_functions/libsrsran_generic_funcs.a: lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libsrsran_generic_funcs.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && $(CMAKE_COMMAND) -P CMakeFiles/srsran_generic_funcs.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_generic_funcs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/build: lib/phy/generic_functions/libsrsran_generic_funcs.a
.PHONY : lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/build

lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions && $(CMAKE_COMMAND) -P CMakeFiles/srsran_generic_funcs.dir/cmake_clean.cmake
.PHONY : lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/clean

lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/phy/generic_functions /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions /home/cci/ashish/ash_srsRAN_project/build/lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/phy/generic_functions/CMakeFiles/srsran_generic_funcs.dir/depend

