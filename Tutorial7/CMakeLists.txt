cmake_minimum_required(VERSION 3.22)

project(Tutorial7)

add_subdirectory(./foo)

add_executable(main main.cpp)

target_link_libraries(main foo)