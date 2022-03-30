set(var "aacc aadd acdd")
string(REGEX REPLACE "a|c" "X" result ${var})
message(${result})