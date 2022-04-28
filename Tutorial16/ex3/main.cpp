// main.cpp

#include "Config.h"
#include <iostream>

#if defined(IS_EDITOR)
int main_editor()
{
	std::cout << "Editor is running" << std::endl;
	return 0;
}
#else // NOT IS_EDITOR
int main_game()
{
	std::cout << "Game is running" << std::endl;
	return 0;
}
#endif // IS_EDITOR

int main()
{
	std::cout << "Version=" << VERSION << "." << std::endl;
	#if defined(IS_EDITOR) 
	return main_editor();
	#else // NOT IS_EDITOR
	return main_game();
	#endif // IS_EDITOR
}