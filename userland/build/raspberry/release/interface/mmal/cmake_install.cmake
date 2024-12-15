# Install script for directory: /home/pi/userland/interface/mmal

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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/userland/build/lib/libmmal.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmmal.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/interface/mmal" TYPE FILE FILES
    "/home/pi/userland/interface/mmal/mmal.h"
    "/home/pi/userland/interface/mmal/mmal_buffer.h"
    "/home/pi/userland/interface/mmal/mmal_clock.h"
    "/home/pi/userland/interface/mmal/mmal_common.h"
    "/home/pi/userland/interface/mmal/mmal_component.h"
    "/home/pi/userland/interface/mmal/mmal_encodings.h"
    "/home/pi/userland/interface/mmal/mmal_events.h"
    "/home/pi/userland/interface/mmal/mmal_format.h"
    "/home/pi/userland/interface/mmal/mmal_logging.h"
    "/home/pi/userland/interface/mmal/mmal_metadata.h"
    "/home/pi/userland/interface/mmal/mmal_parameters.h"
    "/home/pi/userland/interface/mmal/mmal_parameters_audio.h"
    "/home/pi/userland/interface/mmal/mmal_parameters_camera.h"
    "/home/pi/userland/interface/mmal/mmal_parameters_clock.h"
    "/home/pi/userland/interface/mmal/mmal_parameters_common.h"
    "/home/pi/userland/interface/mmal/mmal_parameters_video.h"
    "/home/pi/userland/interface/mmal/mmal_pool.h"
    "/home/pi/userland/interface/mmal/mmal_port.h"
    "/home/pi/userland/interface/mmal/mmal_queue.h"
    "/home/pi/userland/interface/mmal/mmal_types.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/userland/build/raspberry/release/interface/mmal/core/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/util/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/vc/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/components/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/openmaxil/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/client/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/interface/mmal/test/cmake_install.cmake")

endif()

