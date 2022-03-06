// A.h

#pragma once

#if defined(foo_EXPORTS)
	#define FOO_API __declspec(dllexport)
#else //  NOT defined(foo_EXPORTS)
	#define FOO_API __declspec(dllimport)
#endif // foo_EXPORTS

extern "C" FOO_API void foo();
