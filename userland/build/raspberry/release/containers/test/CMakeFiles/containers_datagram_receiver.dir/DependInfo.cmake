# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/pi/userland/containers/test/datagram_receiver.c" "/home/pi/userland/build/raspberry/release/containers/test/CMakeFiles/containers_datagram_receiver.dir/datagram_receiver.c.o"
  )
set(CMAKE_C_COMPILER_ID "GNU")

# Preprocessor definitions for this target.
set(CMAKE_TARGET_DEFINITIONS
  "DL_PATH_PREFIX=\"/opt/vc/lib/plugins/\""
  "EGL_SERVER_DISPMANX"
  "ENABLE_CONTAINER_IO_HTTP"
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
  "_POSIX_C_SOURCE=200112L"
  "_REENTRANT"
  "__VIDEOCORE4__"
  )

# Targets to which this target links.
set(CMAKE_TARGET_LINKED_INFO_FILES
  "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/DependInfo.cmake"
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
  "../../../containers/./.."
  "../../../containers/./../interface/vcos"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
