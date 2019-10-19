cmake_minimum_required(VERSION 3.13)
project(project)

set(CMAKE_CXX_STANDARD 17)
file(GLOB CPP_FILES lib/*.cpp)
set(SOURCE_FILES ${CPP_FILES})

include_directories(lib)
add_executable(project ${SOURCE_FILES})
