set(input "My phone number is 010-1234-5678")
string(REGEX REPLACE "[0-9]" "x" encryption ${input})
message(${encryption}) 