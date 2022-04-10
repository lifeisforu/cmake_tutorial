function(foo)
	message(${ARGN})
endfunction()

set(my_list "a;b;c;d;e")
foo(${my_list})