# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/pi/userland

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/userland/build/raspberry/release

# Include any dependencies generated for this target.
include interface/vmcs_host/CMakeFiles/vcilcs.dir/depend.make

# Include the progress variables for this target.
include interface/vmcs_host/CMakeFiles/vcilcs.dir/progress.make

# Include the compile flags for this target's objects.
include interface/vmcs_host/CMakeFiles/vcilcs.dir/flags.make

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o: interface/vmcs_host/CMakeFiles/vcilcs.dir/flags.make
interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o: ../../../interface/vmcs_host/vcilcs.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcilcs.dir/vcilcs.c.o   -c /home/pi/userland/interface/vmcs_host/vcilcs.c

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcilcs.dir/vcilcs.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/vcilcs.c > CMakeFiles/vcilcs.dir/vcilcs.c.i

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcilcs.dir/vcilcs.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/vcilcs.c -o CMakeFiles/vcilcs.dir/vcilcs.c.s

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.requires:
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.requires

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.provides: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.requires
	$(MAKE) -f interface/vmcs_host/CMakeFiles/vcilcs.dir/build.make interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.provides.build
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.provides

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.provides.build: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o: interface/vmcs_host/CMakeFiles/vcilcs.dir/flags.make
interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o: ../../../interface/vmcs_host/vcilcs_in.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcilcs.dir/vcilcs_in.c.o   -c /home/pi/userland/interface/vmcs_host/vcilcs_in.c

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcilcs.dir/vcilcs_in.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/vcilcs_in.c > CMakeFiles/vcilcs.dir/vcilcs_in.c.i

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcilcs.dir/vcilcs_in.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/vcilcs_in.c -o CMakeFiles/vcilcs.dir/vcilcs_in.c.s

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.requires:
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.requires

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.provides: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.requires
	$(MAKE) -f interface/vmcs_host/CMakeFiles/vcilcs.dir/build.make interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.provides.build
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.provides

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.provides.build: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o: interface/vmcs_host/CMakeFiles/vcilcs.dir/flags.make
interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o: ../../../interface/vmcs_host/vcilcs_out.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcilcs.dir/vcilcs_out.c.o   -c /home/pi/userland/interface/vmcs_host/vcilcs_out.c

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcilcs.dir/vcilcs_out.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/vcilcs_out.c > CMakeFiles/vcilcs.dir/vcilcs_out.c.i

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcilcs.dir/vcilcs_out.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/vcilcs_out.c -o CMakeFiles/vcilcs.dir/vcilcs_out.c.s

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.requires:
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.requires

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.provides: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.requires
	$(MAKE) -f interface/vmcs_host/CMakeFiles/vcilcs.dir/build.make interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.provides.build
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.provides

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.provides.build: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o: interface/vmcs_host/CMakeFiles/vcilcs.dir/flags.make
interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o: ../../../interface/vmcs_host/vcilcs_common.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vcilcs.dir/vcilcs_common.c.o   -c /home/pi/userland/interface/vmcs_host/vcilcs_common.c

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vcilcs.dir/vcilcs_common.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/vcilcs_common.c > CMakeFiles/vcilcs.dir/vcilcs_common.c.i

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vcilcs.dir/vcilcs_common.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/vcilcs_common.c -o CMakeFiles/vcilcs.dir/vcilcs_common.c.s

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.requires:
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.requires

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.provides: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.requires
	$(MAKE) -f interface/vmcs_host/CMakeFiles/vcilcs.dir/build.make interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.provides.build
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.provides

interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.provides.build: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o

# Object files for target vcilcs
vcilcs_OBJECTS = \
"CMakeFiles/vcilcs.dir/vcilcs.c.o" \
"CMakeFiles/vcilcs.dir/vcilcs_in.c.o" \
"CMakeFiles/vcilcs.dir/vcilcs_out.c.o" \
"CMakeFiles/vcilcs.dir/vcilcs_common.c.o"

# External object files for target vcilcs
vcilcs_EXTERNAL_OBJECTS =

../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o
../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o
../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o
../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o
../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/build.make
../../lib/libvcilcs.a: interface/vmcs_host/CMakeFiles/vcilcs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C static library ../../../../lib/libvcilcs.a"
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && $(CMAKE_COMMAND) -P CMakeFiles/vcilcs.dir/cmake_clean_target.cmake
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vcilcs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/vmcs_host/CMakeFiles/vcilcs.dir/build: ../../lib/libvcilcs.a
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/build

interface/vmcs_host/CMakeFiles/vcilcs.dir/requires: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs.c.o.requires
interface/vmcs_host/CMakeFiles/vcilcs.dir/requires: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_in.c.o.requires
interface/vmcs_host/CMakeFiles/vcilcs.dir/requires: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_out.c.o.requires
interface/vmcs_host/CMakeFiles/vcilcs.dir/requires: interface/vmcs_host/CMakeFiles/vcilcs.dir/vcilcs_common.c.o.requires
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/requires

interface/vmcs_host/CMakeFiles/vcilcs.dir/clean:
	cd /home/pi/userland/build/raspberry/release/interface/vmcs_host && $(CMAKE_COMMAND) -P CMakeFiles/vcilcs.dir/cmake_clean.cmake
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/clean

interface/vmcs_host/CMakeFiles/vcilcs.dir/depend:
	cd /home/pi/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/userland /home/pi/userland/interface/vmcs_host /home/pi/userland/build/raspberry/release /home/pi/userland/build/raspberry/release/interface/vmcs_host /home/pi/userland/build/raspberry/release/interface/vmcs_host/CMakeFiles/vcilcs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/vmcs_host/CMakeFiles/vcilcs.dir/depend

