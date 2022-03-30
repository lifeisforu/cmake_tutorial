set(var "aacc aadd acdd")
string(REGEX REPLACE "[ac]" "X" result ${var})
message(${result})