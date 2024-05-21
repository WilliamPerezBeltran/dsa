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

	printf("\n");
	int numbers[20];
	printf("%lu\n",sizeof(numbers));

	int *pp1, *pp2;
	pp1 = malloc(sizeof(*pp1));
	pp2 = calloc(1,sizeof(*pp2));


	int *rare;
	rare = calloc(4,sizeof(*rare));
	*rare = 10;
	rare[1] = 20;
	rare[2] = 30;
	rare[3] = 40;
	int x;
	for(x = 0;x<4;x++){
		printf("contador %d array[%d] = %d \t\n",x,x,rare[x]);
	};

	printf("\n");
	int *ops;
	ops = calloc(4,sizeof(*ops));
	int y;
	for(y = 0;y<5;y++){
		printf("contador %d array[%d] = %d \t\n",y,y,rare[y]);
	};

	 

	return 0;

}
