set(arg2 "outer_arg2")

function(foo arg1)
	message("arg1=${arg1}")
	message("arg2=${arg2}")
endfunction()

foo("my_arg1")