# Install script for directory: /home/pi/userland/containers

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/pi/userland/build/lib/libcontainers.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so")
    file(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcontainers.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/pi/userland/build/raspberry/release/containers/mp4/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/mpeg/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/mpga/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/binary/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/mkv/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/wav/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/asf/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/flash/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/avi/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/rtp/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/rtsp/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/rcv/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/rv9/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/qsynth/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/simple/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/raw/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/dummy/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/metadata/id3/cmake_install.cmake")
  include("/home/pi/userland/build/raspberry/release/containers/test/cmake_install.cmake")

endif()

