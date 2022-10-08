set(A "initialized")

function(func A)
	set(A "func") # 지역변수입니다
	message("[in function] A = ${A}")
endfunction()

macro(macro1 INPUT)
	set(INPUT "macro1") # set(A "macro1") A 지역변수 생성해서 "macro1" 할당
	message("[in macro] INPUT = ${INPUT}") # INPUT = ${A} 로 변환됨
	message("[in macro] A = ${A}")
	if( ${INPUT} STREQUAL ${A} ) # {A} STREQUALS ${A} 로 변환됨
		message("[in macro] INPUT equals A")
	endif()
endmacro()

func(A)
message("A = ${A}")
macro1(A)
message("A = ${A}")