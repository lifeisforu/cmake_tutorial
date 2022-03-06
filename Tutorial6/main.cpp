// main.cpp

#include <Windows.h>

typedef void (*foo_func)();

int main()
{
	HMODULE fooModule = LoadLibraryA("foo.dll");
	if (nullptr == fooModule)
		return -1;
	
	foo_func foo = reinterpret_cast<foo_func>(GetProcAddress(fooModule, "foo"));
	if (nullptr == foo)
		return -1;
	
	foo();
	
	FreeLibrary(fooModule);

	return 0;
}