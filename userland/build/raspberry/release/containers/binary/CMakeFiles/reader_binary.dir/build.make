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
include containers/binary/CMakeFiles/reader_binary.dir/depend.make

# Include the progress variables for this target.
include containers/binary/CMakeFiles/reader_binary.dir/progress.make

# Include the compile flags for this target's objects.
include containers/binary/CMakeFiles/reader_binary.dir/flags.make

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o: containers/binary/CMakeFiles/reader_binary.dir/flags.make
containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o: ../../../containers/binary/binary_reader.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/userland/build/raspberry/release/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o"
	cd /home/pi/userland/build/raspberry/release/containers/binary && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/reader_binary.dir/binary_reader.c.o   -c /home/pi/userland/containers/binary/binary_reader.c

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/reader_binary.dir/binary_reader.c.i"
	cd /home/pi/userland/build/raspberry/release/containers/binary && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -E /home/pi/userland/containers/binary/binary_reader.c > CMakeFiles/reader_binary.dir/binary_reader.c.i

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/reader_binary.dir/binary_reader.c.s"
	cd /home/pi/userland/build/raspberry/release/containers/binary && /usr/bin/cc  $(C_DEFINES) $(C_FLAGS) -S /home/pi/userland/containers/binary/binary_reader.c -o CMakeFiles/reader_binary.dir/binary_reader.c.s

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.requires:
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.requires

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.provides: containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.requires
	$(MAKE) -f containers/binary/CMakeFiles/reader_binary.dir/build.make containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.provides.build
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.provides

containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.provides.build: containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o

# Object files for target reader_binary
reader_binary_OBJECTS = \
"CMakeFiles/reader_binary.dir/binary_reader.c.o"

# External object files for target reader_binary
reader_binary_EXTERNAL_OBJECTS =

../../lib/reader_binary.so: containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o
../../lib/reader_binary.so: containers/binary/CMakeFiles/reader_binary.dir/build.make
../../lib/reader_binary.so: ../../lib/libcontainers.so
../../lib/reader_binary.so: ../../lib/libvcos.so
../../lib/reader_binary.so: containers/binary/CMakeFiles/reader_binary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C shared library ../../../../lib/reader_binary.so"
	cd /home/pi/userland/build/raspberry/release/containers/binary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reader_binary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
containers/binary/CMakeFiles/reader_binary.dir/build: ../../lib/reader_binary.so
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/build

containers/binary/CMakeFiles/reader_binary.dir/requires: containers/binary/CMakeFiles/reader_binary.dir/binary_reader.c.o.requires
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/requires

containers/binary/CMakeFiles/reader_binary.dir/clean:
	cd /home/pi/userland/build/raspberry/release/containers/binary && $(CMAKE_COMMAND) -P CMakeFiles/reader_binary.dir/cmake_clean.cmake
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/clean

containers/binary/CMakeFiles/reader_binary.dir/depend:
	cd /home/pi/userland/build/raspberry/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/userland /home/pi/userland/containers/binary /home/pi/userland/build/raspberry/release /home/pi/userland/build/raspberry/release/containers/binary /home/pi/userland/build/raspberry/release/containers/binary/CMakeFiles/reader_binary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : containers/binary/CMakeFiles/reader_binary.dir/depend

