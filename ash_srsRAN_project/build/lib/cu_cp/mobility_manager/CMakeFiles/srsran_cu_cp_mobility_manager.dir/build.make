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
include lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/progress.make

# Include the compile flags for this target's objects.
include lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/flags.make

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/flags.make
lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_factory.cpp
lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o -MF CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o.d -o CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_factory.cpp

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_factory.cpp > CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.i

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_factory.cpp -o CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.s

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/flags.make
lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_impl.cpp
lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o -MF CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o.d -o CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_impl.cpp

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_impl.cpp > CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.i

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager/mobility_manager_impl.cpp -o CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.s

# Object files for target srsran_cu_cp_mobility_manager
srsran_cu_cp_mobility_manager_OBJECTS = \
"CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o" \
"CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o"

# External object files for target srsran_cu_cp_mobility_manager
srsran_cu_cp_mobility_manager_EXTERNAL_OBJECTS =

lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_factory.cpp.o
lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/mobility_manager_impl.cpp.o
lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/build.make
lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a: lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libsrsran_cu_cp_mobility_manager.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && $(CMAKE_COMMAND) -P CMakeFiles/srsran_cu_cp_mobility_manager.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_cu_cp_mobility_manager.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/build: lib/cu_cp/mobility_manager/libsrsran_cu_cp_mobility_manager.a
.PHONY : lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/build

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager && $(CMAKE_COMMAND) -P CMakeFiles/srsran_cu_cp_mobility_manager.dir/cmake_clean.cmake
.PHONY : lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/clean

lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/cu_cp/mobility_manager /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager /home/cci/ashish/ash_srsRAN_project/build/lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/cu_cp/mobility_manager/CMakeFiles/srsran_cu_cp_mobility_manager.dir/depend

