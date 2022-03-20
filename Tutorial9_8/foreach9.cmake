foreach(item IN ITEMS "a b" "c\;d" "e;f")
	message(${item})
endforeach()