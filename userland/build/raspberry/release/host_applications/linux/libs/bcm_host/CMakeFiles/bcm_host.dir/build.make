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
include host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/depend.make

# Include the progress variables for this target.
include host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/progress.make

# Include the compile flags for this target's objects.
include host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/flags.make

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/flags.make
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o: ../../../host_applications/linux/libs/bcm_host/bcm_host.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bcm_host.dir/bcm_host.c.o   -c /home/pi/userland/host_applications/linux/libs/bcm_host/bcm_host.c

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bcm_host.dir/bcm_host.c.i"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/host_applications/linux/libs/bcm_host/bcm_host.c > CMakeFiles/bcm_host.dir/bcm_host.c.i

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bcm_host.dir/bcm_host.c.s"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/host_applications/linux/libs/bcm_host/bcm_host.c -o CMakeFiles/bcm_host.dir/bcm_host.c.s

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.requires:
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.requires

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.provides: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.requires
	$(MAKE) -f host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build.make host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.provides.build
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.provides

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.provides.build: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/flags.make
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o: ../../../interface/vmcs_host/linux/vcfilesys.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o   -c /home/pi/userland/interface/vmcs_host/linux/vcfilesys.c

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.i"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/linux/vcfilesys.c > CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.i

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.s"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/linux/vcfilesys.c -o CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.s

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.requires:
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.requires

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.provides: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.requires
	$(MAKE) -f host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build.make host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.provides.build
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.provides

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.provides.build: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/flags.make
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o: ../../../interface/vmcs_host/linux/vcfiled/vcfiled_check.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o   -c /home/pi/userland/interface/vmcs_host/linux/vcfiled/vcfiled_check.c

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.i"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/interface/vmcs_host/linux/vcfiled/vcfiled_check.c > CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.i

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.s"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/interface/vmcs_host/linux/vcfiled/vcfiled_check.c -o CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.s

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.requires:
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.requires

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.provides: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.requires
	$(MAKE) -f host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build.make host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.provides.build
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.provides

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.provides.build: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o

# Object files for target bcm_host
bcm_host_OBJECTS = \
"CMakeFiles/bcm_host.dir/bcm_host.c.o" \
"CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o" \
"CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o"

# External object files for target bcm_host
bcm_host_EXTERNAL_OBJECTS =

../../lib/libbcm_host.so: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o
../../lib/libbcm_host.so: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o
../../lib/libbcm_host.so: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o
../../lib/libbcm_host.so: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build.make
../../lib/libbcm_host.so: ../../lib/libvcos.so
../../lib/libbcm_host.so: ../../lib/libvchostif.a
../../lib/libbcm_host.so: ../../lib/libvchiq_arm.so
../../lib/libbcm_host.so: ../../lib/libvcos.so
../../lib/libbcm_host.so: ../../lib/libvcfiled_check.a
../../lib/libbcm_host.so: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../../../lib/libbcm_host.so"
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bcm_host.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build: ../../lib/libbcm_host.so
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/build

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/requires: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o.requires
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/requires: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o.requires
host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/requires: host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o.requires
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/requires

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/clean:
	cd /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host && $(CMAKE_COMMAND) -P CMakeFiles/bcm_host.dir/cmake_clean.cmake
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/clean

host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/depend:
	cd /home/pi/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/userland /home/pi/userland/host_applications/linux/libs/bcm_host /home/pi/userland/build/raspberry/release /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host /home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/depend

