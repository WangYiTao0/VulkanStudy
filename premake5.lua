workspace "VulkanStudy"
    architecture "x64"
    targetdir "build"
    startproject "Sandbox"

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
-- Projects
group "Dependencies"
    
group ""

include "VulkanStudy"
include "Sandbox"

