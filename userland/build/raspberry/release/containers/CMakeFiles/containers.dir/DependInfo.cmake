# The set of languages for which implicit dependencies are needed:
set(CMAKE_DEPENDS_LANGUAGES
  "C"
  )
# The set of files for implicit dependencies of each language:
set(CMAKE_DEPENDS_CHECK_C
  "/home/pi/userland/containers/core/containers.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers.c.o"
  "/home/pi/userland/containers/core/containers_bits.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_bits.c.o"
  "/home/pi/userland/containers/core/containers_codecs.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_codecs.c.o"
  "/home/pi/userland/containers/core/containers_filters.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_filters.c.o"
  "/home/pi/userland/containers/core/containers_index.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_index.c.o"
  "/home/pi/userland/containers/core/containers_io.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_io.c.o"
  "/home/pi/userland/containers/core/containers_io_helpers.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_io_helpers.c.o"
  "/home/pi/userland/containers/core/containers_list.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_list.c.o"
  "/home/pi/userland/containers/core/containers_loader.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_loader.c.o"
  "/home/pi/userland/containers/core/containers_logging.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_logging.c.o"
  "/home/pi/userland/containers/core/containers_uri.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_uri.c.o"
  "/home/pi/userland/containers/core/containers_utils.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_utils.c.o"
  "/home/pi/userland/containers/core/containers_writer_utils.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/containers_writer_utils.c.o"
  "/home/pi/userland/containers/core/packetizers.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/core/packetizers.c.o"
  "/home/pi/userland/containers/h264/avc1_packetizer.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/h264/avc1_packetizer.c.o"
  "/home/pi/userland/containers/io/io_file.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/io/io_file.c.o"
  "/home/pi/userland/containers/io/io_http.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/io/io_http.c.o"
  "/home/pi/userland/containers/io/io_net.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/io/io_net.c.o"
  "/home/pi/userland/containers/io/io_null.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/io/io_null.c.o"
  "/home/pi/userland/containers/io/io_pktfile.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/io/io_pktfile.c.o"
  "/home/pi/userland/containers/mpga/mpga_packetizer.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/mpga/mpga_packetizer.c.o"
  "/home/pi/userland/containers/mpgv/mpgv_packetizer.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/mpgv/mpgv_packetizer.c.o"
  "/home/pi/userland/containers/net/net_sockets_bsd.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/net/net_sockets_bsd.c.o"
  "/home/pi/userland/containers/net/net_sockets_common.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/net/net_sockets_common.c.o"
  "/home/pi/userland/containers/pcm/pcm_packetizer.c" "/home/pi/userland/build/raspberry/release/containers/CMakeFiles/containers.dir/pcm/pcm_packetizer.c.o"
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
