project(croutine)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
    croutine
)
set(THE_INTERFACES
    routine_factory
)

add_library(${prefixname}_croutine SHARED)
add_library(${prefix}::croutine ALIAS ${prefixname}_croutine)
list(APPEND REAL_LIBRARIES ${prefixname}_croutine )
target_sources(${prefixname}_croutine PRIVATE 
    croutine.cc
)
target_link_libraries(${prefixname}_croutine PUBLIC
    atomic
    dox::base::atomic_hash_map
    dox::base::atomic_rw_lock
    dox::base::bounded_queue
    dox::base::concurrent_object_pool
    dox::base::macros
    dox::base::wait_strategy
    dox::common
    dox::croutine::routine_factory
    dox::time
)

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
#add_library(${prefixname}_routine_factory INTERFACE)
target_link_libraries(${prefixname}_routine_factory INTERFACE
    dox::common
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
