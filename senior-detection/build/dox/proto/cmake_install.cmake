# Install script for directory: /home/yousong/workspace/cpp_learning/senior-detection/dox/proto

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
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_choreography_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_choreography_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_classic_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_classic_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_monopoly_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_monopoly_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_clock_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_clock_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_clock_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_component_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_component_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_component_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_dox_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dox_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_dag_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_dag_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_parameter_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_parameter_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_parameter_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_perf_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_perf_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_proto_desc_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_proto_desc_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_qos_profile_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_qos_profile_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_record_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_record_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_record_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_role_attributes_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_role_attributes_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_run_mode_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_run_mode_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_scheduler_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_scheduler_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_topology_change_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_topology_change_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so"
         OLD_RPATH "/usr/local/lib:/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_topology_change_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_transport_conf_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_transport_conf_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/lib/proto/libdox_proto_unit_test_proto.so")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/lib/proto" TYPE SHARED_LIBRARY FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/BuildProducts/opt/dox/lib/libdox_proto_unit_test_proto.so")
  if(EXISTS "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/opt/dox/lib/proto/libdox_proto_unit_test_proto.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/include/dox/proto/choreography_conf.pb.h;/opt/dox/include/dox/proto/classic_conf.pb.h;/opt/dox/include/dox/proto/monopoly_conf.pb.h;/opt/dox/include/dox/proto/clock.pb.h;/opt/dox/include/dox/proto/component_conf.pb.h;/opt/dox/include/dox/proto/dox_conf.pb.h;/opt/dox/include/dox/proto/dag_conf.pb.h;/opt/dox/include/dox/proto/parameter.pb.h;/opt/dox/include/dox/proto/perf_conf.pb.h;/opt/dox/include/dox/proto/proto_desc.pb.h;/opt/dox/include/dox/proto/qos_profile.pb.h;/opt/dox/include/dox/proto/record.pb.h;/opt/dox/include/dox/proto/role_attributes.pb.h;/opt/dox/include/dox/proto/run_mode_conf.pb.h;/opt/dox/include/dox/proto/scheduler_conf.pb.h;/opt/dox/include/dox/proto/topology_change.pb.h;/opt/dox/include/dox/proto/transport_conf.pb.h;/opt/dox/include/dox/proto/unit_test.pb.h")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/include/dox/proto" TYPE FILE FILES
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/choreography_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/classic_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/monopoly_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/clock.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/component_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/dox_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/dag_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/parameter.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/perf_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/proto_desc.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/qos_profile.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/record.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/role_attributes.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/run_mode_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/scheduler_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/topology_change.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/transport_conf.pb.h"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/unit_test.pb.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/python/dox/proto/choreography_conf_pb2.py;/opt/dox/python/dox/proto/classic_conf_pb2.py;/opt/dox/python/dox/proto/monopoly_conf_pb2.py;/opt/dox/python/dox/proto/clock_pb2.py;/opt/dox/python/dox/proto/component_conf_pb2.py;/opt/dox/python/dox/proto/dox_conf_pb2.py;/opt/dox/python/dox/proto/dag_conf_pb2.py;/opt/dox/python/dox/proto/parameter_pb2.py;/opt/dox/python/dox/proto/perf_conf_pb2.py;/opt/dox/python/dox/proto/proto_desc_pb2.py;/opt/dox/python/dox/proto/qos_profile_pb2.py;/opt/dox/python/dox/proto/record_pb2.py;/opt/dox/python/dox/proto/role_attributes_pb2.py;/opt/dox/python/dox/proto/run_mode_conf_pb2.py;/opt/dox/python/dox/proto/scheduler_conf_pb2.py;/opt/dox/python/dox/proto/topology_change_pb2.py;/opt/dox/python/dox/proto/transport_conf_pb2.py;/opt/dox/python/dox/proto/unit_test_pb2.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/python/dox/proto" TYPE FILE FILES
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/choreography_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/classic_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/monopoly_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/clock_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/component_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/dox_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/dag_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/parameter_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/perf_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/proto_desc_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/qos_profile_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/record_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/role_attributes_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/run_mode_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/scheduler_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/topology_change_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/transport_conf_pb2.py"
    "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/unit_test_pb2.py"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/opt/dox/share/proto/cmake/protoConfig.cmake")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/opt/dox/share/proto/cmake" TYPE FILE FILES "/home/yousong/workspace/cpp_learning/senior-detection/build/dox/proto/protoConfig.cmake")
endif()

