# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sensor_msgs: 27 messages, 1 services")

set(MSG_I_FLAGS "-Isensor_msgs:/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sensor_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg" "std_msgs/Header:sensor_msgs/PointField"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg" "sensor_msgs/LaserEcho:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv" "sensor_msgs/CameraInfo:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg" "std_msgs/Header:sensor_msgs/NavSatStatus"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg" "geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg" "sensor_msgs/JoyFeedback"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg" "geometry_msgs/Wrench:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/Twist"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg" ""
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg" "geometry_msgs/Point32:std_msgs/Header:sensor_msgs/ChannelFloat32"
)

get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_custom_target(_sensor_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sensor_msgs" "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_cpp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_cpp(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sensor_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_cpp _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_gencpp)
add_dependencies(sensor_msgs_gencpp sensor_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)
_generate_msg_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_lisp(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_lisp(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sensor_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_lisp _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_genlisp)
add_dependencies(sensor_msgs_genlisp sensor_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Wrench.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)
_generate_msg_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)

### Generating Services
_generate_srv_py(sensor_msgs
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv"
  "${MSG_I_FLAGS}"
  "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
)

### Generating Module File
_generate_module_py(sensor_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sensor_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sensor_msgs_generate_messages sensor_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/FluidPressure.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/TimeReference.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/BatteryState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Temperature.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RegionOfInterest.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Range.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud2.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CameraInfo.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiEchoLaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/CompressedImage.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MagneticField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointField.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserScan.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedback.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Illuminance.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/srv/SetCameraInfo.srv" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatFix.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Imu.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Joy.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/JoyFeedbackArray.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/MultiDOFJointState.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/Image.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/RelativeHumidity.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/NavSatStatus.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/LaserEcho.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/PointCloud.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pi/ros_catkin_ws/src/common_msgs/sensor_msgs/msg/ChannelFloat32.msg" NAME_WE)
add_dependencies(sensor_msgs_generate_messages_py _sensor_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sensor_msgs_genpy)
add_dependencies(sensor_msgs_genpy sensor_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sensor_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sensor_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(sensor_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(sensor_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(sensor_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(sensor_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sensor_msgs/.+/__init__.pyc?$"
  )
endif()
add_dependencies(sensor_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(sensor_msgs_generate_messages_py std_msgs_generate_messages_py)
