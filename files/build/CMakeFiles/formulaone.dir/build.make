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
include CMakeFiles/formulaone.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/formulaone.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/formulaone.dir/flags.make

CMakeFiles/formulaone.dir/src/dijkstra.c.o: CMakeFiles/formulaone.dir/flags.make
CMakeFiles/formulaone.dir/src/dijkstra.c.o: ../src/dijkstra.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/formulaone.dir/src/dijkstra.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/formulaone.dir/src/dijkstra.c.o   -c /home/baudes_h/afs/baudes_h-formulaone/files/src/dijkstra.c

CMakeFiles/formulaone.dir/src/dijkstra.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/formulaone.dir/src/dijkstra.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/baudes_h/afs/baudes_h-formulaone/files/src/dijkstra.c > CMakeFiles/formulaone.dir/src/dijkstra.c.i

CMakeFiles/formulaone.dir/src/dijkstra.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/formulaone.dir/src/dijkstra.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/baudes_h/afs/baudes_h-formulaone/files/src/dijkstra.c -o CMakeFiles/formulaone.dir/src/dijkstra.c.s

CMakeFiles/formulaone.dir/src/dijkstra.c.o.requires:

.PHONY : CMakeFiles/formulaone.dir/src/dijkstra.c.o.requires

CMakeFiles/formulaone.dir/src/dijkstra.c.o.provides: CMakeFiles/formulaone.dir/src/dijkstra.c.o.requires
	$(MAKE) -f CMakeFiles/formulaone.dir/build.make CMakeFiles/formulaone.dir/src/dijkstra.c.o.provides.build
.PHONY : CMakeFiles/formulaone.dir/src/dijkstra.c.o.provides

CMakeFiles/formulaone.dir/src/dijkstra.c.o.provides.build: CMakeFiles/formulaone.dir/src/dijkstra.c.o


CMakeFiles/formulaone.dir/src/update.c.o: CMakeFiles/formulaone.dir/flags.make
CMakeFiles/formulaone.dir/src/update.c.o: ../src/update.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/formulaone.dir/src/update.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/formulaone.dir/src/update.c.o   -c /home/baudes_h/afs/baudes_h-formulaone/files/src/update.c

CMakeFiles/formulaone.dir/src/update.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/formulaone.dir/src/update.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/baudes_h/afs/baudes_h-formulaone/files/src/update.c > CMakeFiles/formulaone.dir/src/update.c.i

CMakeFiles/formulaone.dir/src/update.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/formulaone.dir/src/update.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/baudes_h/afs/baudes_h-formulaone/files/src/update.c -o CMakeFiles/formulaone.dir/src/update.c.s

CMakeFiles/formulaone.dir/src/update.c.o.requires:

.PHONY : CMakeFiles/formulaone.dir/src/update.c.o.requires

CMakeFiles/formulaone.dir/src/update.c.o.provides: CMakeFiles/formulaone.dir/src/update.c.o.requires
	$(MAKE) -f CMakeFiles/formulaone.dir/build.make CMakeFiles/formulaone.dir/src/update.c.o.provides.build
.PHONY : CMakeFiles/formulaone.dir/src/update.c.o.provides

CMakeFiles/formulaone.dir/src/update.c.o.provides.build: CMakeFiles/formulaone.dir/src/update.c.o


CMakeFiles/formulaone.dir/src/upd_fonc.c.o: CMakeFiles/formulaone.dir/flags.make
CMakeFiles/formulaone.dir/src/upd_fonc.c.o: ../src/upd_fonc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/formulaone.dir/src/upd_fonc.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/formulaone.dir/src/upd_fonc.c.o   -c /home/baudes_h/afs/baudes_h-formulaone/files/src/upd_fonc.c

CMakeFiles/formulaone.dir/src/upd_fonc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/formulaone.dir/src/upd_fonc.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/baudes_h/afs/baudes_h-formulaone/files/src/upd_fonc.c > CMakeFiles/formulaone.dir/src/upd_fonc.c.i

CMakeFiles/formulaone.dir/src/upd_fonc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/formulaone.dir/src/upd_fonc.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/baudes_h/afs/baudes_h-formulaone/files/src/upd_fonc.c -o CMakeFiles/formulaone.dir/src/upd_fonc.c.s

CMakeFiles/formulaone.dir/src/upd_fonc.c.o.requires:

.PHONY : CMakeFiles/formulaone.dir/src/upd_fonc.c.o.requires

CMakeFiles/formulaone.dir/src/upd_fonc.c.o.provides: CMakeFiles/formulaone.dir/src/upd_fonc.c.o.requires
	$(MAKE) -f CMakeFiles/formulaone.dir/build.make CMakeFiles/formulaone.dir/src/upd_fonc.c.o.provides.build
.PHONY : CMakeFiles/formulaone.dir/src/upd_fonc.c.o.provides

CMakeFiles/formulaone.dir/src/upd_fonc.c.o.provides.build: CMakeFiles/formulaone.dir/src/upd_fonc.c.o


CMakeFiles/formulaone.dir/src/math_fonc.c.o: CMakeFiles/formulaone.dir/flags.make
CMakeFiles/formulaone.dir/src/math_fonc.c.o: ../src/math_fonc.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/formulaone.dir/src/math_fonc.c.o"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/formulaone.dir/src/math_fonc.c.o   -c /home/baudes_h/afs/baudes_h-formulaone/files/src/math_fonc.c

CMakeFiles/formulaone.dir/src/math_fonc.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/formulaone.dir/src/math_fonc.c.i"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/baudes_h/afs/baudes_h-formulaone/files/src/math_fonc.c > CMakeFiles/formulaone.dir/src/math_fonc.c.i

CMakeFiles/formulaone.dir/src/math_fonc.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/formulaone.dir/src/math_fonc.c.s"
	gcc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/baudes_h/afs/baudes_h-formulaone/files/src/math_fonc.c -o CMakeFiles/formulaone.dir/src/math_fonc.c.s

CMakeFiles/formulaone.dir/src/math_fonc.c.o.requires:

.PHONY : CMakeFiles/formulaone.dir/src/math_fonc.c.o.requires

CMakeFiles/formulaone.dir/src/math_fonc.c.o.provides: CMakeFiles/formulaone.dir/src/math_fonc.c.o.requires
	$(MAKE) -f CMakeFiles/formulaone.dir/build.make CMakeFiles/formulaone.dir/src/math_fonc.c.o.provides.build
.PHONY : CMakeFiles/formulaone.dir/src/math_fonc.c.o.provides

CMakeFiles/formulaone.dir/src/math_fonc.c.o.provides.build: CMakeFiles/formulaone.dir/src/math_fonc.c.o


# Object files for target formulaone
formulaone_OBJECTS = \
"CMakeFiles/formulaone.dir/src/dijkstra.c.o" \
"CMakeFiles/formulaone.dir/src/update.c.o" \
"CMakeFiles/formulaone.dir/src/upd_fonc.c.o" \
"CMakeFiles/formulaone.dir/src/math_fonc.c.o"

# External object files for target formulaone
formulaone_EXTERNAL_OBJECTS =

libformulaone.so: CMakeFiles/formulaone.dir/src/dijkstra.c.o
libformulaone.so: CMakeFiles/formulaone.dir/src/update.c.o
libformulaone.so: CMakeFiles/formulaone.dir/src/upd_fonc.c.o
libformulaone.so: CMakeFiles/formulaone.dir/src/math_fonc.c.o
libformulaone.so: CMakeFiles/formulaone.dir/build.make
libformulaone.so: CMakeFiles/formulaone.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C shared library libformulaone.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/formulaone.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/formulaone.dir/build: libformulaone.so

.PHONY : CMakeFiles/formulaone.dir/build

CMakeFiles/formulaone.dir/requires: CMakeFiles/formulaone.dir/src/dijkstra.c.o.requires
CMakeFiles/formulaone.dir/requires: CMakeFiles/formulaone.dir/src/update.c.o.requires
CMakeFiles/formulaone.dir/requires: CMakeFiles/formulaone.dir/src/upd_fonc.c.o.requires
CMakeFiles/formulaone.dir/requires: CMakeFiles/formulaone.dir/src/math_fonc.c.o.requires

.PHONY : CMakeFiles/formulaone.dir/requires

CMakeFiles/formulaone.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/formulaone.dir/cmake_clean.cmake
.PHONY : CMakeFiles/formulaone.dir/clean

CMakeFiles/formulaone.dir/depend:
	cd /home/baudes_h/afs/baudes_h-formulaone/files/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/baudes_h/afs/baudes_h-formulaone/files /home/baudes_h/afs/baudes_h-formulaone/files /home/baudes_h/afs/baudes_h-formulaone/files/build /home/baudes_h/afs/baudes_h-formulaone/files/build /home/baudes_h/afs/baudes_h-formulaone/files/build/CMakeFiles/formulaone.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/formulaone.dir/depend

