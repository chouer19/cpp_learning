project(base)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
)
set(THE_INTERFACES
    atomic_hash_map
    atomic_rw_lock
    bounded_queue
    concurrent_object_pool
    for_each
    macros
    object_pool
    reentrant_rw_lock
    rw_lock_guard
    signal
    thread_pool
    thread_safe_queue
    unbounded_queue
    wait_strategy
)

foreach(THE_LIB ${THE_LIBRARIES})
    add_library(${prefixname}_${THE_LIB} SHARED)
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
target_link_libraries(${prefixname}_atomic_rw_lock INTERFACE
        dox::base::rw_lock_guard
)
target_link_libraries(${prefixname}_bounded_queue INTERFACE
        dox::base::macros
        dox::base::wait_strategy
)
target_link_libraries(${prefixname}_concurrent_object_pool INTERFACE 
        dox::base::for_each
)
target_link_libraries(${prefixname}_for_each  INTERFACE
        dox::base::macros
)
target_link_libraries(${prefixname}_object_pool  INTERFACE
        dox::base::macros
        dox::base::for_each
)

#######################
### install targets ###
#######################
install(TARGETS 
    ${REAL_LIBRARIES} ${prefixname}
    EXPORT ${PROJECT_NAME}Targets
    DESTINATION ${CMAKE_INSTALL_LIBDIR}
)

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
