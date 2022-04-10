function(foo arg1)
	message(${arg1})
endfunction()

set(my_list "a;b;c;d;e")
foo(${my_list})
