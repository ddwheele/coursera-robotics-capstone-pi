# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/pi/userland/host_applications/linux/apps/raspicam/RaspiCLI.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/apps/raspicam/CMakeFiles/raspivid.dir/RaspiCLI.c.o"
  "/home/pi/userland/host_applications/linux/apps/raspicam/RaspiCamControl.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/apps/raspicam/CMakeFiles/raspivid.dir/RaspiCamControl.c.o"
  "/home/pi/userland/host_applications/linux/apps/raspicam/RaspiPreview.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/apps/raspicam/CMakeFiles/raspivid.dir/RaspiPreview.c.o"
  "/home/pi/userland/host_applications/linux/apps/raspicam/RaspiVid.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/apps/raspicam/CMakeFiles/raspivid.dir/RaspiVid.c.o"
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
  "/home/pi/userland/build/raspberry/release/interface/mmal/core/CMakeFiles/mmal_core.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/mmal/util/CMakeFiles/mmal_util.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/mmal/vc/CMakeFiles/mmal_vc_client.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/host_applications/linux/libs/sm/CMakeFiles/vcsm.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/vmcs_host/CMakeFiles/vchostif.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/vchiq_arm/CMakeFiles/vchiq_arm.dir/DependInfo.cmake"
  "/home/pi/userland/build/raspberry/release/interface/vmcs_host/linux/vcfiled/CMakeFiles/vcfiled_check.dir/DependInfo.cmake"
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
  "../../../host_applications/linux/libs/bcm_host/include"
  "../../../host_applications/linux/apps/raspicam"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
