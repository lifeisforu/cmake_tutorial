function(foo arg1 out_var)
	message("arg1=${arg1}")
	set(${out_var} "out_var of foo" PARENT_SCOPE)
endfunction()

foo("arg1" foo_out)
message("foo_out=${foo_out}")