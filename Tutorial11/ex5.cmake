set(var "a.sdf as.df asd.f")
string(REGEX REPLACE "\\." "X" result ${var})
message(${result})