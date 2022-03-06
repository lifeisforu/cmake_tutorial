cmake_minimum_required(VERSION 3.22)

project(Tutorial6)

add_library(foo MODULE ./foo/foo.cpp)

add_executable(main main.cpp)
add_dependencies(main foo)