set(ascii_chars "")
foreach(i RANGE 1 127 1)
	string(ASCII ${i} ascii)
	list(APPEND ascii_chars ${ascii})
endforeach()
message(${ascii_chars})