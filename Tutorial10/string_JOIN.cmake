set(a "A")
set(b "B")
set(c "C")
string(JOIN ";" result ${a} ${b} ${c})
message(${result})
message("${result}")