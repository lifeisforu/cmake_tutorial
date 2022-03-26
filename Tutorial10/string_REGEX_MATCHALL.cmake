set(input "abcDEFhijKLM")
string(REGEX MATCHALL "[A-Z]+" result ${input})
message("${result}")