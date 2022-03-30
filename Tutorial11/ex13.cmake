set(var "01011035")
string(REGEX REPLACE "(01|03)+" "x" result ${var})
message(${result})