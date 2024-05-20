#include <stdio.h>
#include <stdlib.h>

int main(){

	int myInt;
	float myFloat;
	double myDouble;
	char myChar;
	char myString[20];

	printf("int store    ==> %lu bytes\n", sizeof(myInt));   // 4  bytes 
	printf("float store  ==> %lu bytes\n", sizeof(myFloat)); // 4  bytes
	printf("double store ==> %lu bytes\n", sizeof(myDouble));// 8  bytes
	printf("char store   ==> %lu bytes\n", sizeof(myChar));  // 1  bytes
	printf("string store ==> %lu bytes\n", sizeof(myString));// 20 bytes

	int *ptr1, *ptr2;

	ptr1 = malloc(sizeof(*ptr1));
	ptr2 = calloc(1,sizeof(*ptr2));
	printf("%p\n", ptr1);
	printf("%p\n", ptr2);

	 

	return 0;

}
