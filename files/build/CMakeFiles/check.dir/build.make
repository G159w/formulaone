# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.6

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/baudes_h/afs/baudes_h-formulaone/files

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/baudes_h/afs/baudes_h-formulaone/files/build

# Include any dependencies generated for this target.
include CMakeFiles/check.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/check.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/check.dir/flags.make

CMakeFiles/check.dir/tests/test.c.o: CMakeFiles/check.dir/flags.make
CMakeFiles/check.dir/tests/test.c.o: ../tests/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/check.dir/tests/test.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/check.dir/tests/test.c.o   -c /home/baudes_h/afs/baudes_h-formulaone/files/tests/test.c

CMakeFiles/check.dir/tests/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/check.dir/tests/test.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/baudes_h/afs/baudes_h-formulaone/files/tests/test.c > CMakeFiles/check.dir/tests/test.c.i

CMakeFiles/check.dir/tests/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/check.dir/tests/test.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/baudes_h/afs/baudes_h-formulaone/files/tests/test.c -o CMakeFiles/check.dir/tests/test.c.s

CMakeFiles/check.dir/tests/test.c.o.requires:

.PHONY : CMakeFiles/check.dir/tests/test.c.o.requires

CMakeFiles/check.dir/tests/test.c.o.provides: CMakeFiles/check.dir/tests/test.c.o.requires
	$(MAKE) -f CMakeFiles/check.dir/build.make CMakeFiles/check.dir/tests/test.c.o.provides.build
.PHONY : CMakeFiles/check.dir/tests/test.c.o.provides

CMakeFiles/check.dir/tests/test.c.o.provides.build: CMakeFiles/check.dir/tests/test.c.o


# Object files for target check
check_OBJECTS = \
"CMakeFiles/check.dir/tests/test.c.o"

# External object files for target check
check_EXTERNAL_OBJECTS =

check: CMakeFiles/check.dir/tests/test.c.o
check: CMakeFiles/check.dir/build.make
check: libformulaone.so
check: CMakeFiles/check.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable check"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/check.dir/build: check

.PHONY : CMakeFiles/check.dir/build

CMakeFiles/check.dir/requires: CMakeFiles/check.dir/tests/test.c.o.requires

.PHONY : CMakeFiles/check.dir/requires

CMakeFiles/check.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check.dir/clean

CMakeFiles/check.dir/depend:
	cd /home/baudes_h/afs/baudes_h-formulaone/files/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/baudes_h/afs/baudes_h-formulaone/files /home/baudes_h/afs/baudes_h-formulaone/files /home/baudes_h/afs/baudes_h-formulaone/files/build /home/baudes_h/afs/baudes_h-formulaone/files/build /home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles/check.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check.dir/depend
