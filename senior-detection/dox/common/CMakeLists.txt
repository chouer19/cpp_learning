project(common)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
    file
    global_data
)
set(THE_INTERFACES
    log
    environment
    macros
    time_conversion
    types
    util
)

foreach(THE_LIB ${THE_LIBRARIES})
    add_library(${prefixname}_${THE_LIB} SHARED)
    target_sources(${prefixname}_${THE_LIB} PRIVATE ${THE_LIB}.cc)
    list(APPEND REAL_LIBRARIES ${prefixname}_${THE_LIB})
    add_library(${prefix}::${THE_LIB} ALIAS ${prefixname}_${THE_LIB})
endforeach(THE_LIB ${THE_LIBRARIES})

foreach(THE_LIB ${THE_INTERFACES})
    add_library(${prefixname}_${THE_LIB} INTERFACE)
    list(APPEND REAL_LIBRARIES ${prefixname}_${THE_LIB})
    add_library(${prefix}::${THE_LIB} ALIAS ${prefixname}_${THE_LIB})
endforeach(THE_LIB ${THE_INTERFACE})
add_library(${prefixname} INTERFACE)
target_link_libraries(${prefixname} INTERFACE
    ${REAL_LIBRARIES}
)
add_library(${prefix} ALIAS ${prefixname})

##############################
### custom libraries links ###
##############################

target_link_libraries(${prefixname}_macros INTERFACE
    dox::base::macros
)

target_link_libraries(${prefixname}_environment INTERFACE
    ${prefixname}_log
)

target_link_libraries(${prefixname}_log INTERFACE
    dox::binary
    -lglog
)

target_link_libraries(${prefixname}_file PUBLIC
    ${Protobuf_LIBRARIES}
)

target_link_libraries(${prefixname}_global_data PUBLIC
    dox::binary
    dox::proto::dox_conf_proto
    ${proto_LIBRARIES}
    #glog::glog
    -lglog
)
set(${prefixname}_ALL 
    ${REAL_LIBRARIES} 
    PARENT_SCOPE
)

#######################
### install targets ###
#######################
install(TARGETS 
    ${REAL_LIBRARIES} ${prefixname}
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

################################
### install targets imported ###
################################

#######################
### install headers ###
#######################
install(DIRECTORY ${CMAKE_CURRENT_LIST_DIR}
        DESTINATION ${CMAKE_INSTALL_INCLUDEDIR}/${ROOT}
        FILES_MATCHING
        PATTERN "*.h"
)

##############################
### install targets config ###
##############################
configure_file(${PROJECT_NAME}Config.cmake.in ${PROJECT_NAME}Config.cmake @ONLY)
install(FILES
    "${PROJECT_BINARY_DIR}/${PROJECT_NAME}Config.cmake"
    DESTINATION ${CMAKE_INSTALL_SHAREDIR}/${PROJECT_NAME}/cmake
)
