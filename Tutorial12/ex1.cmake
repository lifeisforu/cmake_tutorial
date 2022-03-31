set(var1 "ab")
set(var2 "ba")

string(COMPARE LESS ${var1} ${var2} less)
string(COMPARE GREATER ${var1} ${var2} greater)
string(COMPARE EQUAL ${var1} ${var2} equal)
string(COMPARE LESS_EQUAL ${var1} ${var2} less_equal)
string(COMPARE GREATER_EQUAL ${var1} ${var2} greater_equal)

message(${less})
message(${greater})
message(${equal})
message(${less_equal})
message(${greater_equal})