set(MyList a b c d e)
foreach(i RANGE 3)
	list(GET MyList ${i} item)
	message(${item})
endforeach()