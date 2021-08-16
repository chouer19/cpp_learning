project(scheduler)

set(prefix dox::${PROJECT_NAME})
set(prefixname dox_${PROJECT_NAME})
set(REAL_LIBRARIES)

set(THE_LIBRARIES
    processor
    processor_context
    scheduler
    pin_thread 
    scheduler_factory
    scheduler_choreography 
    scheduler_classic 
    scheduler_monopoly
    choreography_context 
    monopoly_context 
    classic_context
)
set(THE_INTERFACES
    mutex_wrapper
    cv_wrapper
)

foreach(THE_LIB processor processor_context scheduler scheduler_factory)
    add_library(${prefixname}_${THE_LIB} SHARED)
    target_sources(${prefixname}_${THE_LIB} PRIVATE ${THE_LIB}.cc)
    list(APPEND REAL_LIBRARIES ${prefixname}_${THE_LIB})
    add_library(${prefix}::${THE_LIB} ALIAS ${prefixname}_${THE_LIB})
endforeach(THE_LIB processor processor_context scheduler scheduler_factory)
foreach(THE_LIB ${THE_INTERFACES})
    add_library(${prefixname}_${THE_LIB} INTERFACE)
    list(APPEND REAL_LIBRARIES ${prefixname}_${THE_LIB})
    add_library(${prefix}::${THE_LIB} ALIAS ${prefixname}_${THE_LIB})
endforeach(THE_LIB ${THE_INTERFACE})
add_library(${prefixname}_pin_thread SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_pin_thread)
target_sources(${prefixname}_pin_thread PRIVATE common/pin_thread.cc)
add_library(${prefix}::pin_thread ALIAS ${prefixname}_pin_thread)

add_library(${prefixname}_scheduler_choreography SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_scheduler_choreography )
target_sources(${prefixname}_scheduler_choreography PRIVATE policy/scheduler_choreography.cc)
add_library(${prefix}::scheduler_choreography ALIAS ${prefixname}_scheduler_choreography)

add_library(${prefixname}_scheduler_classic SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_scheduler_classic )
target_sources(${prefixname}_scheduler_classic PRIVATE policy/scheduler_classic.cc)
add_library(${prefix}::scheduler_classic ALIAS ${prefixname}_scheduler_classic)

add_library(${prefixname}_scheduler_monopoly SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_scheduler_monopoly )
target_sources(${prefixname}_scheduler_monopoly PRIVATE policy/scheduler_monopoly.cc)
add_library(${prefix}::scheduler_monopoly ALIAS ${prefixname}_scheduler_monopoly)

add_library(${prefixname}_choreography_context SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_choreography_context )
target_sources(${prefixname}_choreography_context PRIVATE policy/choreography_context.cc)
add_library(${prefix}::choreography_context ALIAS ${prefixname}_choreography_context)

add_library(${prefixname}_classic_context SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_classic_context )
target_sources(${prefixname}_classic_context PRIVATE policy/classic_context.cc)
add_library(${prefix}::classic_context ALIAS ${prefixname}_classic_context)

add_library(${prefixname}_monopoly_context SHARED)
list(APPEND REAL_LIBRARIES ${prefixname}_monopoly_context )
target_sources(${prefixname}_monopoly_context PRIVATE policy/monopoly_context.cc)
add_library(${prefix}::monopoly_context ALIAS ${prefixname}_monopoly_context)

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

target_link_libraries(${prefixname}_processor PUBLIC
    dox::data
    ${prefixname}_processor_context
)
target_link_libraries(${prefixname}_processor_context PUBLIC
    dox::data
    dox::croutine
)
target_link_libraries(${prefixname}_scheduler PUBLIC
    dox::croutine
    ${prefixname}_mutex_wrapper
    ${prefixname}_processor
    ${prefixname}_pin_thread
)
target_link_libraries(${prefixname}_pin_thread PUBLIC
    dox::common::log
)
target_link_libraries(${prefixname}_scheduler_factory PUBLIC
    dox::proto::component_conf_proto
    dox::scheduler::scheduler_choreography
    dox::scheduler::scheduler_classic
)


target_link_libraries(${prefixname}_scheduler_choreography PUBLIC 
    #dox::scheduler
    ${prefixname}_choreography_context
    ${prefixname}_classic_context
)
   
target_link_libraries(${prefixname}_scheduler_classic PUBLIC
    #dox::scheduler
    dox::scheduler::classic_context
)
    
target_link_libraries(${prefixname}_choreography_context PUBLIC 
    dox::croutine
    dox::proto::choreography_conf_proto
    dox::scheduler::processor
)
    
target_link_libraries(${prefixname}_classic_context PUBLIC 
    dox::croutine
    dox::proto::classic_conf_proto
    dox::scheduler::processor
    dox::scheduler::cv_wrapper
    dox::scheduler::mutex_wrapper
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
