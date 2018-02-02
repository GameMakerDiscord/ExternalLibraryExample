#include "main.h"

//Sample integral function. Takes doubles and multiplies them!
DLL_EXPORT double number_function(double number1, double number2) {
	return number1 * number2;
}

//Sample string function. Takes a string (char* in C++) and returns a string.
DLL_EXPORT const char* string_function(char* str) {
    strcat(str," is a string!"); //Concatenate a string to the original string
	return str;
}
