function(foo)
	math(EXPR last "${ARGC}-1")
	foreach(i RANGE 0 ${last} 1)
		message("${ARGV${i}}")
	endforeach()
endfunction()

set(my_list "a;b;c;d;e")
foo(${my_list})