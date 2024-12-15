# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/geometry2/tf2_geometry_msgs
# Build directory: /home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_tf2_geometry_msgs_rostest_test_test.launch "/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/test_results/tf2_geometry_msgs/rostest-test_test.xml" "--return-code" "/opt/ros/indigo/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/geometry2/tf2_geometry_msgs --package=tf2_geometry_msgs --results-filename test_test.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/test_results\" /home/pi/ros_catkin_ws/src/geometry2/tf2_geometry_msgs/test/test.launch ")
add_test(_ctest_tf2_geometry_msgs_rostest_test_test_python.launch "/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/test_results/tf2_geometry_msgs/rostest-test_test_python.xml" "--return-code" "/opt/ros/indigo/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/pi/ros_catkin_ws/src/geometry2/tf2_geometry_msgs --package=tf2_geometry_msgs --results-filename test_test_python.xml --results-base-dir \"/home/pi/ros_catkin_ws/build_isolated/tf2_geometry_msgs/test_results\" /home/pi/ros_catkin_ws/src/geometry2/tf2_geometry_msgs/test/test_python.launch ")
subdirs(gtest)
