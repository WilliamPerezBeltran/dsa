#include <stdio.h>

int main(){

	float myFloat = 3.5;
	double myDouble = 19.99;

	printf("%f\n", myFloat);
	printf("%f\n", myDouble);

	/*
	 * if you want to remove the extra zeros , you can use a dot( .) 
	 * followed by a number
	 */

	printf("%.1f\n", myFloat); // only show 1 digit
	printf("%.3f\n", myFloat); // only show 3 digit

	return 1;
}
