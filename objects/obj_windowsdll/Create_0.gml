//Initialize the DLL.
init_windows_dll();

//Run the number multiplying function
show_message("We are now going to run number_function from the dll, multiplying 10 and 5:");
var outcome = windows_dll_number_function(10, 5); //Store the income in a temporary variable
show_message("The outcome is: " + string(outcome)); //Be sure to cast the outcome to string, if we want to use it as such :)

//Run the string function
show_message("We are now going to run string_function from the dll, it should append some extra text to our string 'TEST':");
var stringOutcome = windows_dll_string_function("TEST"); //Store the income in a temporary variable
show_message("The outcome is: " + stringOutcome); //No need to cast to string, as it already is a string.