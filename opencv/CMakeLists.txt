cmake_minimum_required(VERSION 2.8.3)
find_package(OpenCV REQUIRED)
include_directories(
  ${OpenCV_INCLUDE_DIRS}
)
add_executable(testVectorPoint testVectorPoint.cpp)
target_link_libraries(testVectorPoint ${OpenCV_LIBS})
