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
include lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/progress.make

# Include the compile flags for this target's objects.
include lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/flags.make

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/flags.make
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rb_allocation.cpp
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o -MF CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o.d -o CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rb_allocation.cpp

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rb_allocation.cpp > CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.i

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rb_allocation.cpp -o CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.s

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/flags.make
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rx_softbuffer_pool_impl.cpp
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o -MF CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o.d -o CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rx_softbuffer_pool_impl.cpp

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rx_softbuffer_pool_impl.cpp > CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.i

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/rx_softbuffer_pool_impl.cpp -o CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.s

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/flags.make
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/vrb_to_prb_mapper.cpp
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o -MF CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o.d -o CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/vrb_to_prb_mapper.cpp

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/vrb_to_prb_mapper.cpp > CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.i

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/phy/upper/vrb_to_prb_mapper.cpp -o CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.s

# Object files for target srsran_upper_phy_support
srsran_upper_phy_support_OBJECTS = \
"CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o" \
"CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o" \
"CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o"

# External object files for target srsran_upper_phy_support
srsran_upper_phy_support_EXTERNAL_OBJECTS =

lib/phy/upper/libsrsran_upper_phy_support.a: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rb_allocation.cpp.o
lib/phy/upper/libsrsran_upper_phy_support.a: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/rx_softbuffer_pool_impl.cpp.o
lib/phy/upper/libsrsran_upper_phy_support.a: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/vrb_to_prb_mapper.cpp.o
lib/phy/upper/libsrsran_upper_phy_support.a: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/build.make
lib/phy/upper/libsrsran_upper_phy_support.a: lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libsrsran_upper_phy_support.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && $(CMAKE_COMMAND) -P CMakeFiles/srsran_upper_phy_support.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_upper_phy_support.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/build: lib/phy/upper/libsrsran_upper_phy_support.a
.PHONY : lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/build

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper && $(CMAKE_COMMAND) -P CMakeFiles/srsran_upper_phy_support.dir/cmake_clean.cmake
.PHONY : lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/clean

lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/phy/upper /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper /home/cci/ashish/ash_srsRAN_project/build/lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/phy/upper/CMakeFiles/srsran_upper_phy_support.dir/depend

