project(time)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
    time
    duration
    rate
    clock
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

set(${prefixname}_ALL 
    ${REAL_LIBRARIES} 
    PARENT_SCOPE
)

##############################
### custom libraries links ###
##############################

target_link_libraries(${prefixname}_time PUBLIC 
    ${prefixname}_duration)
target_link_libraries(${prefixname}_rate PUBLIC 
    ${prefixname}_time 
    ${prefixname}_duration 
    dox::common::log)
target_link_libraries(${prefixname}_clock PUBLIC 
    ${prefixname}_time 
    dox::common::global_data
    dox::proto::run_mode_conf_proto
    ${prefixname}_time
    dox::base::atomic_rw_lock
    dox::common::log
    dox::common::macros
    dox::common::util
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
