set(result "Hello ")
string(PREPEND result "World~")
message(${result})