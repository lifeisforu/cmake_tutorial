set(input "abcDEFhijKLM")
string(REGEX MATCH "[A-Z]+" result ${input})
message("${result}")