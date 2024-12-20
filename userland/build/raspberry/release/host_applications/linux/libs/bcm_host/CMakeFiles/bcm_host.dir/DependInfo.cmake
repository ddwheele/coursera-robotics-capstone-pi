# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/pi/userland/interface/vmcs_host/linux/vcfiled/vcfiled_check.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfiled/vcfiled_check.c.o"
  "/home/pi/userland/interface/vmcs_host/linux/vcfilesys.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/__/__/__/__/interface/vmcs_host/linux/vcfilesys.c.o"
  "/home/pi/userland/host_applications/linux/libs/bcm_host/bcm_host.c" "/home/pi/userland/build/raspberry/release/host_applications/linux/libs/bcm_host/CMakeFiles/bcm_host.dir/bcm_host.c.o"
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
  "/home/pi/userland/build/raspberry/release/interface/vcos/pthreads/CMakeFiles/vcos.dir/DependInfo.cmake"
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
  "../../../host_applications/linux/libs/bcm_host/../../../.."
  "../../../host_applications/linux/libs/bcm_host/../../../../interface/vcos/pthreads"
  "../../../host_applications/linux/libs/bcm_host/../../../../host_support/linux/added/include"
  "../../../host_applications/linux/libs/bcm_host/../../../../host_applications/vmcs/test_apps/iltest"
  "../../../host_applications/linux/libs/bcm_host/../../../../host_applications/framework/common"
  )
set(CMAKE_CXX_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_Fortran_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
set(CMAKE_ASM_TARGET_INCLUDE_PATH ${CMAKE_C_TARGET_INCLUDE_PATH})
