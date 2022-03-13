add_library(foo STATIC foo.cpp)

target_compile_definitions(foo PUBLIC VAR="${VAR}")