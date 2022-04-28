cmake_minimum_required(VERSION 3.22)

project(Tutorial16)

if(${EDITOR})
	set(IS_EDITOR OK)
	set(VERSION 2.0)
	add_executable(editor main.cpp)
else()
	set(VERSION 1.0)
	add_executable(game main.cpp)
endif()

configure_file(Config.h.in Config.h)

include_directories(${CMAKE_CURRENT_BINARY_DIR})
