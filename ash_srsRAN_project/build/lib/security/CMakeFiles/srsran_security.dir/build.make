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
include lib/security/CMakeFiles/srsran_security.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include lib/security/CMakeFiles/srsran_security.dir/compiler_depend.make

# Include the progress variables for this target.
include lib/security/CMakeFiles/srsran_security.dir/progress.make

# Include the compile flags for this target's objects.
include lib/security/CMakeFiles/srsran_security.dir/flags.make

lib/security/CMakeFiles/srsran_security.dir/security.cpp.o: lib/security/CMakeFiles/srsran_security.dir/flags.make
lib/security/CMakeFiles/srsran_security.dir/security.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/security/security.cpp
lib/security/CMakeFiles/srsran_security.dir/security.cpp.o: lib/security/CMakeFiles/srsran_security.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object lib/security/CMakeFiles/srsran_security.dir/security.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/security/CMakeFiles/srsran_security.dir/security.cpp.o -MF CMakeFiles/srsran_security.dir/security.cpp.o.d -o CMakeFiles/srsran_security.dir/security.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/security/security.cpp

lib/security/CMakeFiles/srsran_security.dir/security.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_security.dir/security.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/security/security.cpp > CMakeFiles/srsran_security.dir/security.cpp.i

lib/security/CMakeFiles/srsran_security.dir/security.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_security.dir/security.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/security/security.cpp -o CMakeFiles/srsran_security.dir/security.cpp.s

lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o: lib/security/CMakeFiles/srsran_security.dir/flags.make
lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/security/s3g.cpp
lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o: lib/security/CMakeFiles/srsran_security.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o -MF CMakeFiles/srsran_security.dir/s3g.cpp.o.d -o CMakeFiles/srsran_security.dir/s3g.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/security/s3g.cpp

lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_security.dir/s3g.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/security/s3g.cpp > CMakeFiles/srsran_security.dir/s3g.cpp.i

lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_security.dir/s3g.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/security/s3g.cpp -o CMakeFiles/srsran_security.dir/s3g.cpp.s

lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o: lib/security/CMakeFiles/srsran_security.dir/flags.make
lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o: /home/cci/ashish/ash_srsRAN_project/lib/security/zuc.cpp
lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o: lib/security/CMakeFiles/srsran_security.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o -MF CMakeFiles/srsran_security.dir/zuc.cpp.o.d -o CMakeFiles/srsran_security.dir/zuc.cpp.o -c /home/cci/ashish/ash_srsRAN_project/lib/security/zuc.cpp

lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/srsran_security.dir/zuc.cpp.i"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/cci/ashish/ash_srsRAN_project/lib/security/zuc.cpp > CMakeFiles/srsran_security.dir/zuc.cpp.i

lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/srsran_security.dir/zuc.cpp.s"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/cci/ashish/ash_srsRAN_project/lib/security/zuc.cpp -o CMakeFiles/srsran_security.dir/zuc.cpp.s

# Object files for target srsran_security
srsran_security_OBJECTS = \
"CMakeFiles/srsran_security.dir/security.cpp.o" \
"CMakeFiles/srsran_security.dir/s3g.cpp.o" \
"CMakeFiles/srsran_security.dir/zuc.cpp.o"

# External object files for target srsran_security
srsran_security_EXTERNAL_OBJECTS =

lib/security/libsrsran_security.a: lib/security/CMakeFiles/srsran_security.dir/security.cpp.o
lib/security/libsrsran_security.a: lib/security/CMakeFiles/srsran_security.dir/s3g.cpp.o
lib/security/libsrsran_security.a: lib/security/CMakeFiles/srsran_security.dir/zuc.cpp.o
lib/security/libsrsran_security.a: lib/security/CMakeFiles/srsran_security.dir/build.make
lib/security/libsrsran_security.a: lib/security/CMakeFiles/srsran_security.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/cci/ashish/ash_srsRAN_project/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library libsrsran_security.a"
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && $(CMAKE_COMMAND) -P CMakeFiles/srsran_security.dir/cmake_clean_target.cmake
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/srsran_security.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/security/CMakeFiles/srsran_security.dir/build: lib/security/libsrsran_security.a
.PHONY : lib/security/CMakeFiles/srsran_security.dir/build

lib/security/CMakeFiles/srsran_security.dir/clean:
	cd /home/cci/ashish/ash_srsRAN_project/build/lib/security && $(CMAKE_COMMAND) -P CMakeFiles/srsran_security.dir/cmake_clean.cmake
.PHONY : lib/security/CMakeFiles/srsran_security.dir/clean

lib/security/CMakeFiles/srsran_security.dir/depend:
	cd /home/cci/ashish/ash_srsRAN_project/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/cci/ashish/ash_srsRAN_project /home/cci/ashish/ash_srsRAN_project/lib/security /home/cci/ashish/ash_srsRAN_project/build /home/cci/ashish/ash_srsRAN_project/build/lib/security /home/cci/ashish/ash_srsRAN_project/build/lib/security/CMakeFiles/srsran_security.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : lib/security/CMakeFiles/srsran_security.dir/depend

