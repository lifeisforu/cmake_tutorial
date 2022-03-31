set(var1 "cba")
set(var2 "abcdefg")

function(ascending in1 in2)
	string(COMPARE LESS_EQUAL ${in1} ${in2} result)
	if(result)
		message("${in1}\n${in2}")
	else()
		message("${in2}\n${in1}")
	endif()
endfunction()

ascending(${var1} ${var2})