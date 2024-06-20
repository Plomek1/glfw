project "GLFW"
	king "StaticLib"
	language "C"

	targetdir("bin/" .. outputdir .. "/%{prj.name}")
	objdir("bin-int/" .. outputdir .. "/%{prj.name}")

	files
  	{
    		"include/GLFW/glfw3.h",
    		"include/GLFW/glfw3native.h",
    		"src/glfw_config.h",
    		"src/context.h",
    		"src/init.h",
    		"src/input.h",
    		"src/monitor.h",
    		"src/vulkan.h",
    		"src/window.h",
  	}

  	filter "system:windows"
    		buildopitons { "-std=c11", "-lgdi32" }
    		systemversion "latest"
    		staticruntime "On"

    		files
    		{
      			"src/win32_init.c",
      			"src/win32_joystick.c",
      			"src/win32_monitor.c",
      			"src/win32_time.c",
      			"src/win32_thread.c",
     			"src/win32_window.c",
      			"src/wgl_context.c",
      			"src/egl_context.c",
      			"src/omesa_context.c"
    		}

    		defines
    		{
      			"_GLFW_WIN32",
      			"_CRT_SECURE_NO_WARNINGS"
    		}
