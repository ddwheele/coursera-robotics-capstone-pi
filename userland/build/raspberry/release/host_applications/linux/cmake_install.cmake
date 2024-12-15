# Install script for directory: /home/pi/userland/host_applications/linux

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/opt/vc")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/gencmd/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/tvservice/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/vcmailbox/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/raspicam/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/libs/sm/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/smem/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/libs/debug_sym/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/dtoverlay/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/host_applications/linux/apps/dtmerge/cmake_install.cmake")

endif()

