///@description Windows DLL string_function
///@param string

// We assume the DLL has been loaded (external_define)  into the global variable. This is now a handle that we can call using this function, for easy access inside of GM.
// We simply return the output of the external call, after passing in the argument.
return external_call(global.__windll_string_function, argument0);