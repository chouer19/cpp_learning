project(data)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
)
set(THE_INTERFACES
    data
    cache_buffer
    channel_buffer
    data_dispatcher
    data_visitor
    data_visitor_base
    data_notifier
    data_fusion
    all_latest
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

set(${prefixname}_ALL 
    ${REAL_LIBRARIES} 
    PARENT_SCOPE
)

##############################
### custom libraries links ###
##############################

target_link_libraries(${prefixname}_data INTERFACE
    ${prefixname}_all_latest
    ${prefixname}_cache_buffer
    ${prefixname}_channel_buffer
    ${prefixname}_data_dispatcher
    ${prefixname}_data_fusion
    ${prefixname}_data_notifier
    ${prefixname}_data_visitor
    ${prefixname}_data_visitor_base
)

target_link_libraries(${prefixname}_channel_buffer INTERFACE
    ${prefixname}_data_notifier
    dox::proto::component_conf_proto
)

target_link_libraries(${prefixname}_data_dispatcher INTERFACE
    ${prefixname}_channel_buffer
)

target_link_libraries(${prefixname}_data_notifier INTERFACE
    ${prefixname}_cache_buffer
)

target_link_libraries(${prefixname}_all_latest INTERFACE
    ${prefixname}_channel_buffer
    ${prefixname}_data_fusion
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
