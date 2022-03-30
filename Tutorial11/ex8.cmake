set(var "Phone Number is 010-1234-5678.")
string(REGEX REPLACE "[0-9]" "x" result ${var})
message(${result})