function(foo)
	message(${ARGV0})
	message(${ARGV1})
	message(${ARGV2})
	message(${ARGV3})
	message(${ARGV4})
endfunction()

set(my_list "a;b;c;d;e")
foo(${my_list})
