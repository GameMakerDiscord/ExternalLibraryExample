///@description initialized the windows DLL to be ready for usage

//We store the "handles" in global variables. This allows multiple instances to use the global functions - this way we only have to declare the external functions once!

//From ExampleDLL.dll, use the number_function using the dll_cdecl method. Return argument is a real (double in the DLL), and there are 2 arguments, being a double (ty_real) and another one!
global.__windll_number_function = external_define("ExampleDLL.dll", "number_function", dll_cdecl, ty_real, 2, ty_real, ty_real);

//From ExampleDLL.dll, use the string_function using the dll_cdecl method. Return argument is a string (char* in the DLL), and there is 1 argument, being a char* (ty_string).
global.__windll_string_function = external_define("ExampleDLL.dll", "string_function", dll_cdecl, ty_string, 1, ty_string);