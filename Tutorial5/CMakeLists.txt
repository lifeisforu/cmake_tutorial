cmake_minimum_required(VERSION 3.22)

project(Tutorial5)

add_library(foo SHARED ./foo/foo.cpp)

add_executable(main main.cpp)
target_link_libraries(main foo)