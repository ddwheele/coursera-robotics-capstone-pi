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
include interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/depend.make

# Include the progress variables for this target.
include interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/progress.make

# Include the compile flags for this target's objects.
include interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/flags.make

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/flags.make
interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o: ../../../interface/vchiq_arm/vchiq_lib.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o   -c /home/pi/userland/interface/vchiq_arm/vchiq_lib.c

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vchiq_arm.dir/vchiq_lib.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vchiq_arm/vchiq_lib.c > CMakeFiles/vchiq_arm.dir/vchiq_lib.c.i

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vchiq_arm.dir/vchiq_lib.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vchiq_arm/vchiq_lib.c -o CMakeFiles/vchiq_arm.dir/vchiq_lib.c.s

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.requires:
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.requires

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.provides: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.requires
	$(MAKE) -f interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/build.make interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.provides.build
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.provides

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.provides.build: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/flags.make
interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o: ../../../interface/vchiq_arm/vchiq_util.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/vchiq_arm.dir/vchiq_util.c.o   -c /home/pi/userland/interface/vchiq_arm/vchiq_util.c

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/vchiq_arm.dir/vchiq_util.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vchiq_arm/vchiq_util.c > CMakeFiles/vchiq_arm.dir/vchiq_util.c.i

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/vchiq_arm.dir/vchiq_util.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vchiq_arm/vchiq_util.c -o CMakeFiles/vchiq_arm.dir/vchiq_util.c.s

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.requires:
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.requires

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.provides: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.requires
	$(MAKE) -f interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/build.make interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.provides.build
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.provides

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.provides.build: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o

# Object files for target vchiq_arm
vchiq_arm_OBJECTS = \
"CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o" \
"CMakeFiles/vchiq_arm.dir/vchiq_util.c.o"

# External object files for target vchiq_arm
vchiq_arm_EXTERNAL_OBJECTS =

../../lib/libvchiq_arm.so: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o
../../lib/libvchiq_arm.so: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o
../../lib/libvchiq_arm.so: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/build.make
../../lib/libvchiq_arm.so: ../../lib/libvcos.so
../../lib/libvchiq_arm.so: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/libvchiq_arm.so"
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/vchiq_arm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/build: ../../lib/libvchiq_arm.so
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/build

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/requires: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_lib.c.o.requires
interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/requires: interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/vchiq_util.c.o.requires
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/requires

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/clean:
	cd /home/pi/userland/build/raspberry/release/interface/vchiq_arm && $(CMAKE_COMMAND) -P CMakeFiles/vchiq_arm.dir/cmake_clean.cmake
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/clean

interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/depend:
	cd /home/pi/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/userland /home/pi/userland/interface/vchiq_arm /home/pi/userland/build/raspberry/release /home/pi/userland/build/raspberry/release/interface/vchiq_arm /home/pi/userland/build/raspberry/release/interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/depend

