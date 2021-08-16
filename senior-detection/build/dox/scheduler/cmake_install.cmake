# Install script for directory: /home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler

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
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_processor.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_processor.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_processor_context.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_processor_context.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_processor_context.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_scheduler.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_scheduler.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_scheduler_factory.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_factory.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_factory.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_pin_thread.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_pin_thread.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_pin_thread.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_scheduler_choreography.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_choreography.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_choreography.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_scheduler_classic.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_classic.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_classic.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_scheduler_monopoly.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_choreography_context.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_choreography_context.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_choreography_context.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_classic_context.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_classic_context.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so"
         OLD_RPATH "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_classic_context.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/libdox_scheduler_monopoly_context.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_scheduler_monopoly_context.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/libdox_scheduler_monopoly_context.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/include/dox/scheduler")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/include/dox" TYPE DIRECTORY FILES "/home/yousong/workspace/cpp_learning/senior-detection/dox/scheduler" FILES_MATCHING REGEX "/[^/]*\\.h$")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/share/scheduler/cmake/schedulerConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/share/scheduler/cmake" TYPE FILE FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/scheduler/schedulerConfig.cmake")
endif()

