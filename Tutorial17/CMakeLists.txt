cmake_minimum_required(VERSION 3.22)

project(Tutorial17)

add_library(foo STATIC ./foo/foo.cpp )
set_target_properties(foo PROPERTIES
	OUTPUT_NAME $<IF:$<CONFIG:Debug>,foo_d,foo>)
	
add_executable(main main.cpp)

target_link_libraries(main foo)

file(GENERATE OUTPUT "debuggen_$<CONFIG>.txt" CONTENT "$<IF:$<CONFIG:Debug>,foo_d,foo>")