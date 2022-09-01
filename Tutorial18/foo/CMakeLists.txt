add_library(foo STATIC "./source/foo.cpp")
target_include_directories(foo PUBLIC "./include")

# Debug Libraries
install(TARGETS foo 
	CONFIGURATIONS Debug 
	ARCHIVE DESTINATION Debug/lib)

# Release Libraries
install(TARGETS foo 
	CONFIGURATIONS Release 
	ARCHIVE DESTINATION Release/lib)
	
# PDBs
install(FILES "$<TARGET_FILE_DIR:foo>/$<TARGET_FILE_BASE_NAME:foo>.pdb" 
	DESTINATION Debug/lib OPTIONAL)

# Headers
install(FILES "./include/foo.h" DESTINATION include)