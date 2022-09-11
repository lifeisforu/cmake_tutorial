cmake_minimum_required(VERSION 3.22)

# FooFind 가 있는 경로를 CMAKE_MODULE_PATH 에 추가합니다.
set(CMAKE_MODULE_PATH "c:/foo/cmake;${CMAKE_MODULE_PATH}")
# FooFind 를 실행합니다.
find_package(Foo)

if(Foo_FOUND)
	project(Tutorial19)
	# FooFind 가 제공한 include 경로를 추가합니다.
	include_directories(${Foo_INCLUDE_DIRS})
	add_executable(Main "main.cpp")
	# FooFind 가 제공한 라이브러리를 링크합니다.
	target_link_libraries(Main ${Foo_LIBRARIES})
else()
	message( "Failed to find Foo" )
endif()