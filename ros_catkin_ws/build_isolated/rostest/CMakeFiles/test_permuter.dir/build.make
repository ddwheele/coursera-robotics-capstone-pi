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
CMAKE_SOURCE_DIR = /home/pi/ros_catkin_ws/src/ros_comm/rostest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/ros_catkin_ws/build_isolated/rostest

# Include any dependencies generated for this target.
include CMakeFiles/test_permuter.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_permuter.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_permuter.dir/flags.make

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o: CMakeFiles/test_permuter.dir/flags.make
CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o: /home/pi/ros_catkin_ws/src/ros_comm/rostest/test/test_permuter.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/pi/ros_catkin_ws/build_isolated/rostest/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o -c /home/pi/ros_catkin_ws/src/ros_comm/rostest/test/test_permuter.cpp

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_permuter.dir/test/test_permuter.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/pi/ros_catkin_ws/src/ros_comm/rostest/test/test_permuter.cpp > CMakeFiles/test_permuter.dir/test/test_permuter.cpp.i

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_permuter.dir/test/test_permuter.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/pi/ros_catkin_ws/src/ros_comm/rostest/test/test_permuter.cpp -o CMakeFiles/test_permuter.dir/test/test_permuter.cpp.s

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.requires:
.PHONY : CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.requires

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.provides: CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.requires
	$(MAKE) -f CMakeFiles/test_permuter.dir/build.make CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.provides.build
.PHONY : CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.provides

CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.provides.build: CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o

# Object files for target test_permuter
test_permuter_OBJECTS = \
"CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o"

# External object files for target test_permuter
test_permuter_EXTERNAL_OBJECTS =

/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: CMakeFiles/test_permuter.dir/build.make
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: gtest/libgtest.so
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: /usr/lib/arm-linux-gnueabihf/libboost_system.so
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: /usr/lib/arm-linux-gnueabihf/libboost_thread.so
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: /usr/lib/arm-linux-gnueabihf/libpthread.so
/home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter: CMakeFiles/test_permuter.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_permuter.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_permuter.dir/build: /home/pi/ros_catkin_ws/devel_isolated/rostest/lib/rostest/test_permuter
.PHONY : CMakeFiles/test_permuter.dir/build

CMakeFiles/test_permuter.dir/requires: CMakeFiles/test_permuter.dir/test/test_permuter.cpp.o.requires
.PHONY : CMakeFiles/test_permuter.dir/requires

CMakeFiles/test_permuter.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_permuter.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_permuter.dir/clean

CMakeFiles/test_permuter.dir/depend:
	cd /home/pi/ros_catkin_ws/build_isolated/rostest && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/ros_catkin_ws/src/ros_comm/rostest /home/pi/ros_catkin_ws/src/ros_comm/rostest /home/pi/ros_catkin_ws/build_isolated/rostest /home/pi/ros_catkin_ws/build_isolated/rostest /home/pi/ros_catkin_ws/build_isolated/rostest/CMakeFiles/test_permuter.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_permuter.dir/depend

