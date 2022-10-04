message("====== Begin foo")

set(VAR1 "foo1")
set(VAR2 "foo2" PARENT_SCOPE)

message("CMAKE_SOURCE_DIR=${CMAKE_SOURCE_DIR}")
message("CMAKE_BINARY_DIR=${CMAKE_BINARY_DIR}")
message("CMAKE_CURRENT_SOURCE_DIR=${CMAKE_CURRENT_SOURCE_DIR}")
message("CMAKE_CURRENT_BINARY_DIR=${CMAKE_CURRENT_BINARY_DIR}")
message("VAR1=${VAR1}")
message("VAR2=${VAR2}")

message("====== End foo")
