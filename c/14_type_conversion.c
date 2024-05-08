#include <stdio.h>

int main(){

	// ==== type conversion ====
	int x = 3;
	int y = 4;
	int result = x + y;

	printf("result: %d\n", result); // outputs 2 ( int not float )

	// automatic conversion 
	float myFloat = 8 ;
	int myInteger = 3.4;

	printf("%f\n", myFloat);
	printf("%d\n", myInteger);

	// Explicit conversion 
	float sum = (float) 4/3;
	printf("%f\n", sum);
	printf("%.1f\n", sum);


 	return 1;
}
