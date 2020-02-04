#include <vulkan/vulkan.h>

#include <iostream>
#include <stdexcept>
#include <functional>
#include <cstdlib>

class Application
{
public:
	void Run()
	{
		InitVulkan();
		MainLoop();
		Cleanup();
	}

private:
	void InitVulkan(){
	
	}

	void MainLoop() {

	}

	void Cleanup() {

	}
};

int main()
{
	Application app;
	
	try {
		app.Run();
	}
	catch (const std::exception & e)
	{
		std::cerr << e.what() << std::endl;
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}