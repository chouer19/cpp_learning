project(proto)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(protos
    choreography_conf
    classic_conf
    monopoly_conf
    clock
    component_conf
    dox_conf
    dag_conf
    parameter
    perf_conf
    proto_desc
    qos_profile
    record
    role_attributes
    run_mode_conf
    scheduler_conf
    topology_change
    transport_conf
    unit_test
)

set(PROTO_HDRS)
set(PROTO_SRCS)
set(PROTO_PYS)
set(${PROJECT_NAME}_LIBS)
include_directories(${CMAKE_BINARY_DIR})
foreach(proto ${protos})
    dox_generate_proto_code(${proto} "${proto}.proto")
    list(APPEND PROTO_HDRS ${${proto}_HDR})
    list(APPEND PROTO_PYS ${${proto}_PY})
    list(APPEND PROTO_SRCS ${${proto}_SRC})
    add_library(${prefixname}_${proto}_proto SHARED ${${proto}_SRC})
    list(APPEND REAL_LIBRARIES ${prefixname}_${proto}_proto)
    target_link_libraries(${prefixname}_${proto}_proto PUBLIC ${Protobuf_LIBRARIES})
    add_library(${prefix}::${proto}_proto ALIAS ${prefixname}_${proto}_proto)
    list(APPEND ${PROJECT_NAME}_LIBS ${prefixname}_${proto}_proto)
endforeach(proto ${protos})
add_library(${prefixname} INTERFACE)
target_link_libraries(${prefixname} INTERFACE
    ${REAL_LIBRARIES}
)
add_library(${prefix} ALIAS ${prefixname})

set(${prefixname}_ALL 
    ${REAL_LIBRARIES} 
    PARENT_SCOPE
)

##############################
### custom libraries links ###
##############################
target_link_libraries(${prefixname}_component_conf_proto PUBLIC
        ${prefixname}_qos_profile_proto
        ${Protobuf_LIBRARIES}
)
target_link_libraries(${prefixname}_dox_conf_proto PUBLIC
        ${prefixname}_scheduler_conf_proto
        ${prefixname}_transport_conf_proto
        ${prefixname}_run_mode_conf_proto
        ${prefixname}_perf_conf_proto
        ${Protobuf_LIBRARIES}
)
target_link_libraries(${prefixname}_dag_conf_proto PUBLIC
    ${prefixname}_component_conf_proto
        ${Protobuf_LIBRARIES}
)
target_link_libraries(${prefixname}_topology_change_proto PUBLIC
        ${prefixname}_role_attributes_proto
        ${Protobuf_LIBRARIES}
)
target_link_libraries(${prefixname}_scheduler_conf_proto PUBLIC
        ${prefixname}_classic_conf_proto
        ${prefixname}_monopoly_conf_proto
        ${prefixname}_choreography_conf_proto
        ${Protobuf_LIBRARIES}
)
target_link_libraries(${prefixname}_role_attributes_proto PUBLIC 
    ${prefixname}_qos_profile_proto
        ${Protobuf_LIBRARIES}
)

#######################
### install targets ###
#######################
install(TARGETS 
    ${REAL_LIBRARIES} ${prefixname}
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}/${PROJECT_NAME}
    #DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

################################
### install targets imported ###
################################

#######################
### install headers ###
#######################
install(FILES ${PROTO_HDRS}
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${ROOT}/${PROJECT_NAME})

install(FILES ${PROTO_PYS}
        DESTINATION ${CMAKE_INSTALL_ROOT}/python/dox/${PROJECT_NAME})


##############################
### install targets config ###
##############################
configure_file(${PROJECT_NAME}Config.cmake.in ${PROJECT_NAME}Config.cmake @ONLY)
install(FILES
    "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_SHAREDIR}/${PROJECT_NAME}/cmake
)
