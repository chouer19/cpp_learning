# Install script for directory: /home/yousong/workspace/cpp_learning/senior-detection/dox/time

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_time_time.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_time_time.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_time_time.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_time_duration.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_time_duration.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_time_duration.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_time_rate.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_time_rate.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_time_rate.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_time_clock.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_time_clock.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_time_clock.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/include/dox/time")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/include/dox" TYPE DIRECTORY FILES "/home/yousong/workspace/cpp_learning/senior-detection/dox/time" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/share/time/cmake/timeConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/share/time/cmake" TYPE FILE FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/time/timeConfig.cmake")
endif()

