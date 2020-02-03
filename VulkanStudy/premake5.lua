project "VulkanStudy"
kind "StaticLib"
language "c++"
cppdialect "c++17"
staticruntime "on"

targetdir("bin/" .. outputdir .. "%{prj.name}")
objdir("bin-obj/" .. outputdir .. "%{prj.name}")

pchheader "aspch.h"
pchsource "src/aspch.cpp"

files
{
    "src/**.h",
    "src/**.cpp",
    "3rdparty/glm/glm/**.hpp",
    "3rdparty/glm/glm/**.inl"
}

defines
{
    "_CRT_SECURE_NO_WARNINGS"
}

includedirs
{
    "src",
    "%{IncludeDir.glm}"
}

links
{

}

filter "system:windows"
    systemversion "latest"

    defines
    {

    }

filter "configurations:Debug"
    defines "AS_DEBUG"
    runtime "Debug"
    symbols "on"

filter "configurations:Release"
    defines "AS_RELEASE"
    runtime "Release"
    optimize "on"