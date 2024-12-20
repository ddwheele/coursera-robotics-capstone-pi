# generated from ros_comm/tools/roslaunch/cmake/roslaunch-extras.cmake.em

# set path to roslaunch-check script in develspace
set(roslaunch_check_script /home/pi/ros_catkin_ws/src/ros_comm/roslaunch/scripts/roslaunch-check)

#
# Check ROS launch files for validity as part of the unit tests.
#
# :param path: the path to a launch file or a directory containing launch files
#   either relative to th current CMakeLists file or absolute
# :type url: string
# :param DEPENDENCIES: the targets which must be built before executing
#   the test
# :type DEPENDENCIES: list of strings
# :param ARGV: arbitrary arguments in the form 'key=value'
#   which will be set as environment variables
# :type ARGV: string
#
function(roslaunch_add_file_check path)
  cmake_parse_arguments(_roslaunch "" "" "DEPENDENCIES" ${ARGN})
  if(IS_ABSOLUTE ${path})
    set(abspath ${path})
  else()
    set(abspath "${CMAKE_CURRENT_SOURCE_DIR}/${path}")
  endif()
  if(NOT EXISTS ${abspath})
    message(FATAL_ERROR "roslaunch_add_file_check() path '${abspath}' was not found")
  endif()

  string(REPLACE "/" "_" testname ${path})
  set(output_path ${CATKIN_TEST_RESULTS_DIR}/${PROJECT_NAME})
  set(cmd "${CMAKE_COMMAND} -E make_directory ${output_path}")
  set(output_file_name "roslaunch-check_${testname}.xml")
  set(cmd ${cmd} "${roslaunch_check_script} -o '${output_path}/${output_file_name}' '${abspath}' ${_roslaunch_UNPARSED_ARGUMENTS}")
  catkin_run_tests_target("roslaunch-check" ${testname} "${output_file_name}" COMMAND ${cmd} DEPENDENCIES ${_roslaunch_DEPENDENCIES})
endfunction()
