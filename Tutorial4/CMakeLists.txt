cmake_minimum_required(VERSION 3.22)

project(Tutorial4)

add_library(foo ./foo/foo.cpp)

add_executable(main main.cpp)

target_link_libraries(main foo)