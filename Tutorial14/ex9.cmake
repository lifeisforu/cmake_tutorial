function(foo arg1)
	message(${arg1})
	message(${ARGV})
	message(${ARGN})
endfunction()

set(my_list "a;b;c;d;e")
foo(${my_list})