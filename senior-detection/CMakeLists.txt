#-----------------------------------------------------------------------
# Copyright (c) 2021, Xue Chong<XueChong@xxx.xx.xx>
#
#-----------------------------------------------------------------------
cmake_minimum_required(VERSION 3.15 FATAL_ERROR)
project(senior-detection)

#set(CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake" "${CMAKE_MODULE_PATH}")
set (dox_cmake_dir ${PROJECT_SOURCE_DIR}/cmake CACHE PATH "Location of CMake scripts")

set (DOX_MAJOR_VERSION 1)
set (DOX_MINOR_VERSION 0)
set (DOX_PATCH_VERSION 0)

set (DOX_VERSION ${DOX_MAJOR_VERSION}.${DOX_MINOR_VERSION})
set (DOX_VERSION_FULL ${DOX_MAJOR_VERSION}.${DOX_MINOR_VERSION}.${DOX_PATCH_VERSION})
# Package Creation:
set (CPACK_GENERATOR "DEB")
set (CPACK_PACKAGE_VERSION "${DOX_VERSION_FULL}")
set (CPACK_PACKAGE_VERSION_MAJOR "${DOX_MAJOR_VERSION}")
set (CPACK_PACKAGE_VERSION_MINOR "${DOX_MINOR_VERSION}")
set (CPACK_PACKAGE_VERSION_PATCH "${DOX_PATCH_VERSION}")
set (CPACK_PACKAGE_CONTACT "XUECHONG @xxx.com")
include (${dox_cmake_dir}/dox_cpack.cmake)

#configure_file("${dox_cmake_dir}/cpack_options.cmake.in" ${DOX_CPACK_CFG_FILE} @ONLY)
#set(CPACK_PROJECT_CONFIG_FILE ${DOX_CPACK_CFG_FILE})
include(CPack)

#----------------------------------------------------------------------
# Define the project configuration
# Allow configuration of the CMAKE_CXX_STANDARD variable
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_STANDARD 11 CACHE STRING "C++ Standard to compile against")

# - Install paths: a standard *NIX program, libraries, and resources
include(GNUInstallDirs)

#install
#dox
# |-include
# | |-time/time.h
# | |_dox.h
# |
# |-bin
# | |-mainboard
# | |-dox_launch
# |
# |-lib
# |-share
# | |-xxx/cmake
# | |-xxx/resource
# |
# |-python
# | |-internal
# |
# |-setup.sh
# Add a path for plugins (immutable)
set(ROOT "dox")
set(CMAKE_INSTALL_ROOT "/opt/dox")
set(CMAKE_INSTALL_INCLUDEDIR "${CMAKE_INSTALL_ROOT}/include")
# Add a path for CMake config files (immutable)
set(CMAKE_INSTALL_BINDIR "${CMAKE_INSTALL_ROOT}/bin")
set(CMAKE_INSTALL_LIBDIR "${CMAKE_INSTALL_ROOT}/lib")
set(CMAKE_INSTALL_SHAREDIR "${CMAKE_INSTALL_ROOT}/share")
set(CMAKE_INSTALL_CONFDIR "${CMAKE_INSTALL_ROOT}/conf")

# Add a path for pkgconf files (immutable)
set(CMAKE_INSTALL_PKGCONFIGDIR "${CMAKE_INSTALL_ROOT}/pkgconfig")
set(CMAKE_INSTALL_FULL_PKGCONFIGDIR "${CMAKE_INSTALL_FULL_LIBDIR}/pkgconfig")

file(RELATIVE_PATH PROJECT_BINDIR_TO_LIBDIR "${CMAKE_INSTALL_FULL_BINDIR}" "${CMAKE_INSTALL_FULL_LIBDIR}")
file(RELATIVE_PATH PROJECT_LIBDIR_TO_RESOURCEDIR "${CMAKE_INSTALL_FULL_LIBDIR}" "${CMAKE_INSTALL_FULL_DATAROOTDIR}/${PROJECT_NAME}")

set(BASE_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/BuildProducts")

#bin,lib,share
if(NOT CMAKE_CONFIGURATION_TYPES)
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/${CMAKE_INSTALL_BINDIR}")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/${CMAKE_INSTALL_LIBDIR}")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/${CMAKE_INSTALL_LIBDIR}")

  #configure_file(resources/Resourceful.json "${BASE_OUTPUT_DIRECTORY}/${CMAKE_INSTALL_DATAROOTDIR}/Resourceful/Resourceful.json" COPYONLY)
else()
  set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/$<CONFIG>/${CMAKE_INSTALL_BINDIR}")
  set(CMAKE_LIBRARY_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/$<CONFIG>/${CMAKE_INSTALL_LIBDIR}")
  set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY "${BASE_OUTPUT_DIRECTORY}/$<CONFIG>/${CMAKE_INSTALL_LIBDIR}")
  
  #configure_file(resources/Resourceful.json "${BASE_OUTPUT_DIRECTORY}/${CMAKE_INSTALL_DATAROOTDIR}/Resourceful/Resourceful.json" COPYONLY)
endif()

include (${dox_cmake_dir}/FindProtobuf.cmake)
include_directories(./)
include_directories(${CMAKE_BINARY_DIR})
add_subdirectory(dox)
