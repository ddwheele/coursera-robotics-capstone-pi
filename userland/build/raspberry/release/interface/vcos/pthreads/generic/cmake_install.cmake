# Install script for directory: /home/pi/userland/interface/vcos/generic

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/interface/vcos/generic" TYPE FILE FILES
    "/home/pi/userland/interface/vcos/generic/vcos_common.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_blockpool.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_event_flags.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_named_sem.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_quickslow_mutex.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_reentrant_mtx.h"
    "/home/pi/userland/interface/vcos/generic/vcos_generic_tls.h"
    "/home/pi/userland/interface/vcos/generic/vcos_joinable_thread_from_plain.h"
    "/home/pi/userland/interface/vcos/generic/vcos_latch_from_sem.h"
    "/home/pi/userland/interface/vcos/generic/vcos_mem_from_malloc.h"
    "/home/pi/userland/interface/vcos/generic/vcos_mutexes_are_reentrant.h"
    "/home/pi/userland/interface/vcos/generic/vcos_thread_reaper.h"
    )
endif()

