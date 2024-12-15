# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/pi/userland/interface/mmal/components/aggregator.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/aggregator.c.o"
  "/home/pi/userland/interface/mmal/components/artificial_camera.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/artificial_camera.c.o"
  "/home/pi/userland/interface/mmal/components/clock.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/clock.c.o"
  "/home/pi/userland/interface/mmal/components/container_reader.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/container_reader.c.o"
  "/home/pi/userland/interface/mmal/components/copy.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/copy.c.o"
  "/home/pi/userland/interface/mmal/components/null_sink.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/null_sink.c.o"
  "/home/pi/userland/interface/mmal/components/passthrough.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/passthrough.c.o"
  "/home/pi/userland/interface/mmal/components/scheduler.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/scheduler.c.o"
  "/home/pi/userland/interface/mmal/components/spdif.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/spdif.c.o"
  "/home/pi/userland/interface/mmal/components/splitter.c" "/home/pi/userland/build/raspberry/release/interface/mmal/components/CMakeFiles/mmal_components.dir/splitter.c.o"
  )
set(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS
  "EGL_SERVER_DISPMANX"
  "HAVE_CMAKE_CONFIG"
  "HAVE_VMCS_CONFIG"
  "OMX_SKIP64BIT"
  "TV_SUPPORTED_MODE_NO_DEPRECATED"
  "USE_VCHIQ_ARM"
  "VCHI_BULK_ALIGN=1"
  "VCHI_BULK_GRANULARITY=1"
  "_FILE_OFFSET_BITS=64"
  "_HAVE_SBRK"
  "_LARGEFILE64_SOURCE"
  "_LARGEFILE_SOURCE"
  "_REENTRANT"
  "__VIDEOCORE4__"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/mmal/util/CMakeFiles/mmal_util.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/mmal/core/CMakeFiles/mmal_core.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/DependInfo.cmake"
  )

# The include file search paths:
set(CMAKE_C_TARGET_INCLUDE_PATH
  "../../inc"
  "../../../host_applications/framework"
  "../../.."
  "../../../interface/vcos/pthreads"
  "../../../interface/vmcs_host/linux"
  "../../../interface/vmcs_host"
  "../../../interface/vmcs_host/khronos"
  "../../../interface/khronos/include"
  "."
  "../../../interface/vchiq_arm"
  "../../../host_support/include"
  "../../../interface/mmal"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
