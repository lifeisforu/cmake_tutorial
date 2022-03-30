set(var "asdf sdf bsdf ccsdf")
string(REGEX REPLACE ".s" "X" result ${var})
message(${result})