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
include lib/srsvec/CMakeFiles/srsvec.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/srsvec/CMakeFiles/srsvec.dir/progress.make

# Include the compile flags for this target's objects.
include lib/srsvec/CMakeFiles/srsvec.dir/flags.make

lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/accumulate.cpp
lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o -MF CMakeFiles/srsvec.dir/accumulate.cpp.o.d -o CMakeFiles/srsvec.dir/accumulate.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/accumulate.cpp

lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/accumulate.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/accumulate.cpp > CMakeFiles/srsvec.dir/accumulate.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/accumulate.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/accumulate.cpp -o CMakeFiles/srsvec.dir/accumulate.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/add.cpp
lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o -MF CMakeFiles/srsvec.dir/add.cpp.o.d -o CMakeFiles/srsvec.dir/add.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/add.cpp

lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/add.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/add.cpp > CMakeFiles/srsvec.dir/add.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/add.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/add.cpp -o CMakeFiles/srsvec.dir/add.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/aligned_vec.cpp
lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o -MF CMakeFiles/srsvec.dir/aligned_vec.cpp.o.d -o CMakeFiles/srsvec.dir/aligned_vec.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/aligned_vec.cpp

lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/aligned_vec.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/aligned_vec.cpp > CMakeFiles/srsvec.dir/aligned_vec.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/aligned_vec.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/aligned_vec.cpp -o CMakeFiles/srsvec.dir/aligned_vec.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/bit.cpp
lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o -MF CMakeFiles/srsvec.dir/bit.cpp.o.d -o CMakeFiles/srsvec.dir/bit.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/bit.cpp

lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/bit.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/bit.cpp > CMakeFiles/srsvec.dir/bit.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/bit.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/bit.cpp -o CMakeFiles/srsvec.dir/bit.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/clip.cpp
lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o -MF CMakeFiles/srsvec.dir/clip.cpp.o.d -o CMakeFiles/srsvec.dir/clip.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/clip.cpp

lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/clip.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/clip.cpp > CMakeFiles/srsvec.dir/clip.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/clip.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/clip.cpp -o CMakeFiles/srsvec.dir/clip.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/compare.cpp
lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o -MF CMakeFiles/srsvec.dir/compare.cpp.o.d -o CMakeFiles/srsvec.dir/compare.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/compare.cpp

lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/compare.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/compare.cpp > CMakeFiles/srsvec.dir/compare.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/compare.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/compare.cpp -o CMakeFiles/srsvec.dir/compare.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/conversion.cpp
lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o -MF CMakeFiles/srsvec.dir/conversion.cpp.o.d -o CMakeFiles/srsvec.dir/conversion.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/conversion.cpp

lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/conversion.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/conversion.cpp > CMakeFiles/srsvec.dir/conversion.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/conversion.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/conversion.cpp -o CMakeFiles/srsvec.dir/conversion.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/division.cpp
lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o -MF CMakeFiles/srsvec.dir/division.cpp.o.d -o CMakeFiles/srsvec.dir/division.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/division.cpp

lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/division.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/division.cpp > CMakeFiles/srsvec.dir/division.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/division.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/division.cpp -o CMakeFiles/srsvec.dir/division.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/dot_prod.cpp
lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o -MF CMakeFiles/srsvec.dir/dot_prod.cpp.o.d -o CMakeFiles/srsvec.dir/dot_prod.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/dot_prod.cpp

lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/dot_prod.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/dot_prod.cpp > CMakeFiles/srsvec.dir/dot_prod.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/dot_prod.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/dot_prod.cpp -o CMakeFiles/srsvec.dir/dot_prod.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/modulus_square.cpp
lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o -MF CMakeFiles/srsvec.dir/modulus_square.cpp.o.d -o CMakeFiles/srsvec.dir/modulus_square.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/modulus_square.cpp

lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/modulus_square.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/modulus_square.cpp > CMakeFiles/srsvec.dir/modulus_square.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/modulus_square.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/modulus_square.cpp -o CMakeFiles/srsvec.dir/modulus_square.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/prod.cpp
lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o -MF CMakeFiles/srsvec.dir/prod.cpp.o.d -o CMakeFiles/srsvec.dir/prod.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/prod.cpp

lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/prod.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/prod.cpp > CMakeFiles/srsvec.dir/prod.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/prod.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/prod.cpp -o CMakeFiles/srsvec.dir/prod.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/sc_prod.cpp
lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o -MF CMakeFiles/srsvec.dir/sc_prod.cpp.o.d -o CMakeFiles/srsvec.dir/sc_prod.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/sc_prod.cpp

lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/sc_prod.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/sc_prod.cpp > CMakeFiles/srsvec.dir/sc_prod.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/sc_prod.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/sc_prod.cpp -o CMakeFiles/srsvec.dir/sc_prod.cpp.s

lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/flags.make
lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/srsvec/subtract.cpp
lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o: lib/srsvec/CMakeFiles/srsvec.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o -MF CMakeFiles/srsvec.dir/subtract.cpp.o.d -o CMakeFiles/srsvec.dir/subtract.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/srsvec/subtract.cpp

lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsvec.dir/subtract.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/srsvec/subtract.cpp > CMakeFiles/srsvec.dir/subtract.cpp.i

lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsvec.dir/subtract.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/srsvec/subtract.cpp -o CMakeFiles/srsvec.dir/subtract.cpp.s

# Object files for target srsvec
srsvec_OBJECTS = \
"CMakeFiles/srsvec.dir/accumulate.cpp.o" \
"CMakeFiles/srsvec.dir/add.cpp.o" \
"CMakeFiles/srsvec.dir/aligned_vec.cpp.o" \
"CMakeFiles/srsvec.dir/bit.cpp.o" \
"CMakeFiles/srsvec.dir/clip.cpp.o" \
"CMakeFiles/srsvec.dir/compare.cpp.o" \
"CMakeFiles/srsvec.dir/conversion.cpp.o" \
"CMakeFiles/srsvec.dir/division.cpp.o" \
"CMakeFiles/srsvec.dir/dot_prod.cpp.o" \
"CMakeFiles/srsvec.dir/modulus_square.cpp.o" \
"CMakeFiles/srsvec.dir/prod.cpp.o" \
"CMakeFiles/srsvec.dir/sc_prod.cpp.o" \
"CMakeFiles/srsvec.dir/subtract.cpp.o"

# External object files for target srsvec
srsvec_EXTERNAL_OBJECTS =

lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/accumulate.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/add.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/aligned_vec.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/bit.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/clip.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/compare.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/conversion.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/division.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/dot_prod.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/modulus_square.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/prod.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/sc_prod.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/subtract.cpp.o
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/build.make
lib/srsvec/libsrsvec.a: lib/srsvec/CMakeFiles/srsvec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX static library libsrsvec.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && $(CMAKE_COMMAND) -P CMakeFiles/srsvec.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsvec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/srsvec/CMakeFiles/srsvec.dir/build: lib/srsvec/libsrsvec.a
.PHONY : lib/srsvec/CMakeFiles/srsvec.dir/build

lib/srsvec/CMakeFiles/srsvec.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec && $(CMAKE_COMMAND) -P CMakeFiles/srsvec.dir/cmake_clean.cmake
.PHONY : lib/srsvec/CMakeFiles/srsvec.dir/clean

lib/srsvec/CMakeFiles/srsvec.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/srsvec /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec /home/cci/ashish/ash_srsRAN_project/build/lib/srsvec/CMakeFiles/srsvec.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/srsvec/CMakeFiles/srsvec.dir/depend

