find_package(Protobuf REQUIRED)
#if(NOT PROTOBUF_FOUND)
if(NOT PROTOBUF_FOUND)
    BUILD_ERROR ("Missing: Google Protobuf")
endif()

macro (dox_generate_proto_target _name)
    set(PROTO_HDRS)
    set(PROTO_SRCS)
    set(PROTO_PYS)
    file(GLOB PROTOS ${ARGN}/*.proto)
    foreach(FIL ${PROTOS})
        GET_FILENAME_COMPONENT(ABS_FIL ${FIL} ABSOLUTE)
        GET_FILENAME_COMPONENT(FIL_WE ${FIL} NAME_WE)

        string(REGEX REPLACE "(.proto)$" ".pb.h" HDR ${ABS_FIL})
        string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" HDR ${HDR})
        string(REGEX REPLACE "(.proto)$" ".pb.cc" SRC ${ABS_FIL})
        string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" SRC ${SRC})
        string(REGEX REPLACE "(.proto)$" "_pb2.py" PY ${ABS_FIL})
        string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" PY ${PY})

        LIST(APPEND PROTO_SRCS "${SRC}")
        LIST(APPEND PROTO_HDRS "${HDR}")
        LIST(APPEND PROTO_PYS "${PY}")

        add_custom_command(
          OUTPUT "${SRC}" "${HDR}" "${PY}"
          COMMAND  ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${CMAKE_SOURCE_DIR}  --cpp_out ${CMAKE_BINARY_DIR} ${ABS_FIL}  
          COMMAND  ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${CMAKE_SOURCE_DIR}  --python_out ${CMAKE_BINARY_DIR} ${ABS_FIL}  
          #COMMAND  ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${CMAKE_SOURCE_DIR} 
          #ARGS --cpp_out ${CMAKE_BINARY_DIR} ${ABS_FIL}  --python_output ${CMAKE_BINARY_DIR} ${ABS_FIL}
          DEPENDS ${ABS_FIL}
          COMMENT "Running C++ protocol buffer compiler on ${FIL}"
          VERBATIM 
        )
    endforeach()

    #add_custom_target(
    #    ${_name}
    #    DEPENDS ${PROTO_HDRS} ${PROTO_SRCS}
    #            ${Protobuf_LIBRARIES} 
    #)

    #add_library(${_name}  ${PROTO_HDRS} ${PROTO_SRCS})
    add_library(${_name} SHARED ${PROTO_HDRS} ${PROTO_SRCS})
    target_link_libraries(${_name}
        ${Protobuf_LIBRARIES} 
    )

    set(${_name}_SRCS ${PROTO_SRCS})
    set(${_name}_HDRS ${PROTO_HDRS})
#add_library(dox_proto ${PROTO_SRCS})
#target_link_libraries(dox_proto ${Protobuf_LIBRARIES})
endmacro (dox_generate_proto_target)


macro (dox_install_proto_target _name)

endmacro (dox_install_proto_target)

macro (dox_generate_proto_code _name)
    #file(GLOB PROTOS ${ARGN}/*.proto)
    GET_FILENAME_COMPONENT(ABS_FIL ${ARGN} ABSOLUTE)
    GET_FILENAME_COMPONENT(FIL_WE ${ARGN} NAME_WE)

    string(REGEX REPLACE "(.proto)$" ".pb.h" HDR ${ABS_FIL})
    string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" HDR ${HDR})
    string(REGEX REPLACE "(.proto)$" ".pb.cc" SRC ${ABS_FIL})
    string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" SRC ${SRC})
    string(REGEX REPLACE "(.proto)$" "_pb2.py" PY ${ABS_FIL})
    string(REGEX REPLACE "${CMAKE_SOURCE_DIR}" "${CMAKE_BINARY_DIR}" PY ${PY})

    set(${_name}_HDR ${HDR})
    set(${_name}_SRC ${SRC})
    set(${_name}_PY ${PY})

    add_custom_command(
      OUTPUT "${SRC}" "${HDR}" "${PY}"
      COMMAND  ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${CMAKE_SOURCE_DIR}  --cpp_out ${CMAKE_BINARY_DIR} ${ABS_FIL}  
      COMMAND  ${PROTOBUF_PROTOC_EXECUTABLE} --proto_path=${CMAKE_SOURCE_DIR}  --python_out ${CMAKE_BINARY_DIR} ${ABS_FIL}  
      DEPENDS ${ABS_FIL}
      COMMENT "Running C++ protocol buffer compiler on ${proto}"
      VERBATIM 
    )

endmacro (dox_generate_proto_code)


macro (dox_install_proto_target _name)

endmacro (dox_install_proto_target)

