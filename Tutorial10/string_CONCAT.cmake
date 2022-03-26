set(input1 "Hello ")
set(input2 "World~")
string(CONCAT result ${input1} ${input2})
message(${result})