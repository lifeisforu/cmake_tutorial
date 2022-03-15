cmake_minimum_required(VERSION 3.22)

project(PersistentCache)

set(VAR "Hello World~" CACHE STRING "VAR is printed out in main.exe")

add_subdirectory(./foo)

add_executable(main main.cpp)

target_link_libraries(main foo)