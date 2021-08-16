project(dox)

#find_package(Poco REQUIRED Foundation Net XML Util)

set(subs
    croutine
    common
    base
    data
    event
    time
    scheduler
)
foreach(sub ${subs})
    add_subdirectory(${sub})
endforeach(sub ${subs})
add_subdirectory(proto)

add_library(binary SHARED)
target_sources(binary PRIVATE binary.cc)
add_library(dox::binary ALIAS binary)
set_target_properties(binary PROPERTIES PREFIX "lib${ROOT}_")

add_library(state SHARED)
target_sources(state PRIVATE state.cc)
target_link_libraries(state PUBLIC
    dox::common
)
add_library(dox::state ALIAS state)
set_target_properties(state PROPERTIES PREFIX "lib${ROOT}_")

