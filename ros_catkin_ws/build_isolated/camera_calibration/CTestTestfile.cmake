# CMake generated Testfile for 
# Source directory: /home/pi/ros_catkin_ws/src/image_pipeline/camera_calibration
# Build directory: /home/pi/ros_catkin_ws/build_isolated/camera_calibration
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_camera_calibration_nosetests_test.directed.py "/home/pi/ros_catkin_ws/build_isolated/camera_calibration/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration/nosetests-test.directed.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/image_pipeline/camera_calibration/test/directed.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration/nosetests-test.directed.py.xml")
add_test(_ctest_camera_calibration_nosetests_test.multiple_boards.py "/home/pi/ros_catkin_ws/build_isolated/camera_calibration/catkin_generated/env_cached.sh" "/usr/bin/python" "/opt/ros/indigo/share/catkin/cmake/test/run_tests.py" "/home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration/nosetests-test.multiple_boards.py.xml" "--return-code" "/usr/bin/cmake -E make_directory /home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration" "/usr/bin/nosetests-2.7 -P --process-timeout=60 /home/pi/ros_catkin_ws/src/image_pipeline/camera_calibration/test/multiple_boards.py --with-xunit --xunit-file=/home/pi/ros_catkin_ws/build_isolated/camera_calibration/test_results/camera_calibration/nosetests-test.multiple_boards.py.xml")
subdirs(gtest)
