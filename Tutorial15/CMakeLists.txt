cmake_minimum_required(VERSION 3.22)

project(Tutorial15)

add_library(foo STATIC ./foo/foo.cpp )
set(foo_genexpr "$<TARGET_PROPERTY:foo,BINARY_DIR>/My$<CONFIG>")
set_property(TARGET foo PROPERTY
	ARCHIVE_OUTPUT_DIRECTORY ${foo_genexpr})

add_executable(main main.cpp)
set(main_genexpr "$<TARGET_PROPERTY:main,BINARY_DIR>/My$<CONFIG>")
set_property(TARGET main PROPERTY
	RUNTIME_OUTPUT_DIRECTORY ${main_genexpr})
	
target_link_libraries(main foo)

file(GENERATE OUTPUT "debuggen_$<CONFIG>.txt" CONTENT "${foo_genexpr}")

add_custom_target(debuggen COMMAND ${CMAKE_COMMAND} -E echo "${main_genexpr}")