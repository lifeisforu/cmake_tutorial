add_library(foo STATIC "./source/foo.cpp")
target_include_directories(foo PUBLIC "./include")

# Debug Libraries
install(TARGETS foo 
	CONFIGURATIONS Debug 
	ARCHIVE DESTINATION lib/Debug)

# Release Libraries
install(TARGETS foo 
	CONFIGURATIONS Release 
	ARCHIVE DESTINATION lib/Release)
	
# PDBs
install(FILES "$<TARGET_FILE_DIR:foo>/$<TARGET_FILE_BASE_NAME:foo>.pdb" 
	DESTINATION "lib/$<CONFIG>" OPTIONAL)

# Headers
install(FILES "./include/foo.h" DESTINATION include)