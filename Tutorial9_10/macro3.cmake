macro(foo)
	message(${CMAKE_CURRENT_FUNCTION})
endmacro()

function(foo2)
	foo()
endfunction()

foo2()