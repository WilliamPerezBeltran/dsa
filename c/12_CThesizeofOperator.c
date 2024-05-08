#include <stdio.h>

int main(){

	/* Data type        Size
	 *
	 *   int         2 or 4 bytes 
	 *   float       2 bytes
	 *   double      4 bytes
	 *   char        1 bytes 
	 *
	 *
	 *   The memory size refers to how much space a type occupies 
	 *   in the computer9s memory
	 *
	 *   To actually get the size (in bytes) of a data 
	 *   tupe or variable, use the "" sizeof  "" operator:
	 */

	int myInt = 23;
	float myFloat = 23.3;
	double myDouble = 23.3;
	char myChar = 'c';


	printf("%lu\n", sizeof(myInt));
	printf("%lu\n", sizeof(myFloat));
	printf("%lu\n", sizeof(myDouble));
	printf("%lu\n", sizeof(myChar));

	/* note that we use the %lu format specifer this is 
	 * really usefull when you use 
	 * sizeof to get the size of you variable in bytes .
	 * Using the right data tyupe for the right purpose
	 * will sabe memory and improve the performance of your program .*/



	return 0;
}

