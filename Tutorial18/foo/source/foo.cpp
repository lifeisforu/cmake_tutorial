#include <iostream>
#include "foo.h"

void printLibraryName()
{
	#if defined(_DEBUG)
	std::cout << "foo_d" << std::endl;
	#else // NOT _DEBUG
	std::cout << "foo" << std::endl;
	#endif // _DEBUG
}