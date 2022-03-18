#------------------------------------------------------------------------------
# if<constant>
#------------------------------------------------------------------------------

message("if<constant>")
if(${CMAKE_VERSION} VERSION_EQUAL "3.1.1")
	message("Version is same")
else()
	message("Version is different")
endif()
message("")

#------------------------------------------------------------------------------
# if<variable>
#------------------------------------------------------------------------------

message("if<variable>")
if(${MyValue})
	message("if() block is executed")
else()
	message("else() block is executed")
endif()

set(MyValue 1)
if(${MyValue})
	message("if() block is executed")
else()
	message("else() block is executed")
endif()
message("")

#------------------------------------------------------------------------------
# if<string>
#------------------------------------------------------------------------------

message("if<string>")
cmake_policy(SET CMP0012 NEW)
if("1")
	message("if() block is executed")
else()
	message("else() block is executed")
endif()

if("0")
	message("if() block is executed")
else()
	message("else() block is executed")
endif()

set(MyString "kkk")
if(${MyString})
	message("if() block is executed")
else()
	message("else() block is executed")
endif()

set(MyString "TRUE")
if(${MyString})
	message("if() block is executed")
else()
	message("else() block is executed")
endif()
message("")

cmake_policy(SET CMP0012 OLD) #Turn off previous CMP0012

#------------------------------------------------------------------------------
# CMP0054
#------------------------------------------------------------------------------

message("CMP0054")
set(MyString2 "hhh")

if("MyString2")
	message("if() block is executed")
else()
	message("else() block is executed")
endif()

cmake_policy(SET CMP0054 NEW)
if("MyString2")
	message("if() block is executed")
else()
	message("else() block is executed")
endif()
message("")


