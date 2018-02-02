///@description Windows DLL number_function
///@param number1
///@param number2

// We assume the DLL has been loaded (external_define)  into the global variable. This is now a handle that we can call using this function, for easy access inside of GM.
// We simply return the output of the external call, after passing in the 2 arguments.
return external_call(global.__windll_number_function, argument0, argument1);