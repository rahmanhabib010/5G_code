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
include lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/progress.make

# Include the compile flags for this target's objects.
include lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/flags.make

lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o: lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/flags.make
lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/fapi_adaptor/phy/phy_fapi_adaptor_impl.cpp
lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o: lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o -MF CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o.d -o CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/fapi_adaptor/phy/phy_fapi_adaptor_impl.cpp

lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/fapi_adaptor/phy/phy_fapi_adaptor_impl.cpp > CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.i

lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/fapi_adaptor/phy/phy_fapi_adaptor_impl.cpp -o CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.s

# Object files for target phy_fapi_adaptor
phy_fapi_adaptor_OBJECTS = \
"CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o"

# External object files for target phy_fapi_adaptor
phy_fapi_adaptor_EXTERNAL_OBJECTS =

lib/fapi_adaptor/phy/libphy_fapi_adaptor.a: lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/phy_fapi_adaptor_impl.cpp.o
lib/fapi_adaptor/phy/libphy_fapi_adaptor.a: lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/build.make
lib/fapi_adaptor/phy/libphy_fapi_adaptor.a: lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libphy_fapi_adaptor.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && $(CMAKE_COMMAND) -P CMakeFiles/phy_fapi_adaptor.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/phy_fapi_adaptor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/build: lib/fapi_adaptor/phy/libphy_fapi_adaptor.a
.PHONY : lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/build

lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy && $(CMAKE_COMMAND) -P CMakeFiles/phy_fapi_adaptor.dir/cmake_clean.cmake
.PHONY : lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/clean

lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/fapi_adaptor/phy /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy /home/cci/ashish/ash_srsRAN_project/build/lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/fapi_adaptor/phy/CMakeFiles/phy_fapi_adaptor.dir/depend

