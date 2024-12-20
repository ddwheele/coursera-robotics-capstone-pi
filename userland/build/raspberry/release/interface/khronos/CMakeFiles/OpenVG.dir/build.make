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
include interface/khronos/CMakeFiles/OpenVG.dir/depend.make

# Include the progress variables for this target.
include interface/khronos/CMakeFiles/OpenVG.dir/progress.make

# Include the compile flags for this target's objects.
include interface/khronos/CMakeFiles/OpenVG.dir/flags.make

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o: interface/khronos/CMakeFiles/OpenVG.dir/flags.make
interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o: ../../../interface/khronos/vg/vg_client.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/OpenVG.dir/vg/vg_client.c.o   -c /home/pi/userland/interface/khronos/vg/vg_client.c

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenVG.dir/vg/vg_client.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/khronos/vg/vg_client.c > CMakeFiles/OpenVG.dir/vg/vg_client.c.i

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenVG.dir/vg/vg_client.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/khronos/vg/vg_client.c -o CMakeFiles/OpenVG.dir/vg/vg_client.c.s

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.requires

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.provides: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/OpenVG.dir/build.make interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.provides

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.provides.build: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o: interface/khronos/CMakeFiles/OpenVG.dir/flags.make
interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o: ../../../interface/khronos/vg/vg_int_mat3x3.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o   -c /home/pi/userland/interface/khronos/vg/vg_int_mat3x3.c

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.i"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/khronos/vg/vg_int_mat3x3.c > CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.i

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.s"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/khronos/vg/vg_int_mat3x3.c -o CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.s

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.requires:
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.requires

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.provides: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.requires
	$(MAKE) -f interface/khronos/CMakeFiles/OpenVG.dir/build.make interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.provides.build
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.provides

interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.provides.build: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o

# Object files for target OpenVG
OpenVG_OBJECTS = \
"CMakeFiles/OpenVG.dir/vg/vg_client.c.o" \
"CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o"

# External object files for target OpenVG
OpenVG_EXTERNAL_OBJECTS =

../../lib/libOpenVG.so: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o
../../lib/libOpenVG.so: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o
../../lib/libOpenVG.so: interface/khronos/CMakeFiles/OpenVG.dir/build.make
../../lib/libOpenVG.so: ../../lib/libEGL.so
../../lib/libOpenVG.so: ../../lib/libkhrn_client.a
../../lib/libOpenVG.so: ../../lib/libbcm_host.so
../../lib/libOpenVG.so: ../../lib/libvchostif.a
../../lib/libOpenVG.so: ../../lib/libvchiq_arm.so
../../lib/libOpenVG.so: ../../lib/libvcos.so
../../lib/libOpenVG.so: ../../lib/libvcfiled_check.a
../../lib/libOpenVG.so: interface/khronos/CMakeFiles/OpenVG.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/libOpenVG.so"
	cd /home/pi/userland/build/raspberry/release/interface/khronos && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OpenVG.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
interface/khronos/CMakeFiles/OpenVG.dir/build: ../../lib/libOpenVG.so
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/build

interface/khronos/CMakeFiles/OpenVG.dir/requires: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_client.c.o.requires
interface/khronos/CMakeFiles/OpenVG.dir/requires: interface/khronos/CMakeFiles/OpenVG.dir/vg/vg_int_mat3x3.c.o.requires
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/requires

interface/khronos/CMakeFiles/OpenVG.dir/clean:
	cd /home/pi/userland/build/raspberry/release/interface/khronos && $(CMAKE_COMMAND) -P CMakeFiles/OpenVG.dir/cmake_clean.cmake
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/clean

interface/khronos/CMakeFiles/OpenVG.dir/depend:
	cd /home/pi/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/userland /home/pi/userland/interface/khronos /home/pi/userland/build/raspberry/release /home/pi/userland/build/raspberry/release/interface/khronos /home/pi/userland/build/raspberry/release/interface/khronos/CMakeFiles/OpenVG.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : interface/khronos/CMakeFiles/OpenVG.dir/depend

