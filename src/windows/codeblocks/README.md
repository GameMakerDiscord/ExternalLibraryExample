# Code::Blocks project to compile DLL's for Game Maker Studio 2

  * [Installation](#installation)
  * [Editing the project](#editing)
  * [Compiling](#compiling)
  * [Using the DLL](#usage)

<a name="installation" />
## Installation
This folder contains a .cbp file - the Code::Blocks project file. This project has been made using Code::Blocks version 17.12. Code::Blocks is a free IDE to create C++ applications. 
To begin, download Code::Blocks from their [website](http://www.codeblocks.org/). You may want to get the **mingw binary release setup**. This includes the GCC/G++ compiler and GDB debugger. Make sure its selected in the installation program (MinGW Compiler Suite). This is needed to compile your sourcecode.

<a name="editing" />
## Editing the project
Once C::B is installed, you can open up the .cbp file and you should see all required files in your IDE - in this case main.cpp (the main source code) and main.h (the header file).

<a name="compiling" />
## Compiling
You can compile your project by going into the menu Build -> Build. You can change the build target to Debug or Release by selecting the target in the same menu. The compiler status will be shown below in the build log, and the compiled .dll file will be available in the Bin/Release folder (or Bin/Debug, if you've built the Debug target).

<a name="usage" />
## Using the DLL in Game Maker Studio 2
If the DLL is not yet in the included files sections, you might want to add it there. Go into Included Files in the workspace and rightclick -> Insert Included File (or press ALT+I). Select the DLL you've just built.
To be sure its only included in windows (it doesn't work on other platforms) - you can double-click it and make sure only Windows, Xbox One and Windows UWP is selected.

![Only the Windows targets are selected](https://raw.githubusercontent.com/GameMakerDiscord/ExternalLibraryExample/master/docAssets/dll_settings.png)

In order to use the DLL inside of your project, you will need 3 functions;

#### external_define
Here we define the functions we've made inside the DLL. The DLL has some "exported" functions - we should use those names inside of external define. The argument count should be the same, as well as the argument types. In GM a number (integer / double) is a DOUBLE in C++, and a string is a char* in C++. The result is a handle that we can use with the next function;

#### external_call
Call the function! We have the handle from external_define, and we can now call it using this function.

#### external_free
If we don't need the DLL anymore, we can unload it from memory and all handles become invalid.