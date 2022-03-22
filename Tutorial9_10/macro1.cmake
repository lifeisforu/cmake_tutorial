macro(foo)
	foreach(loop_var IN LISTS ARGN)
		message(${loop_var})
	endforeach()
endmacro()

function(foo2)
	foo(x y z)
endfunction()

function(foo3)
	foreach(loop_var IN LISTS ARGN)
		message(${loop_var})
	endforeach()
endfunction()

foo(a b c)
foo2(d e f)
foo3(h i j)