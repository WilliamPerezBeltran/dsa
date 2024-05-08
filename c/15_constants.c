#include <stdio.h>

int main(){
	/*
	 * const keyword
	 *
	 * this will declare the variable as "constant", 
	 * which means unchangeable and read-only
	 */
	const int AGE = 23;
	const float RATIO = 23.34;
	const char NAME[] = "Richard";

	printf("My age: %d\n", AGE);
	printf("my Float: %f\n", RATIO);
	printf("My name is: %s\n", NAME);

	return 0;
}
