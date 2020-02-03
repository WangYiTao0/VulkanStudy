workspace "VulkanStudy"
    architecture "x64"
    targetdir "build"
    startproject "VulkanStudy"

    configurations
    {
        "Debug",
        "Release",
        "Dist"
    }

    flags
    {
        "MultiProcessorCompile"
    }

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Include directories relative to 
IncludeDir = {}
IncludeDir["glm"] = "3rdpart/glm"
IncludeDir["GLFW"] = "3rdpart/GLFW/include"
IncludeDir["Vulkan"] = "3rdpart/Vulkan1.2.131.1"
-- Projects
group "Dependencies"
    include "VulkanStudy/3rdpart/GLFW"
group ""

include "VulkanStudy"
include "Sandbox"

