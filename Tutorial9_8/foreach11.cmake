set(A a b c d)
set(B e f g h)
set(C i j k l)
foreach(a b c IN ZIP_LISTS A B C)
	message(${a} ${b} ${c})
endforeach()