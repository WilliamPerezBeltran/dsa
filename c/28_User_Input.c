#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(){

	//user input
	printf("=========11111===========\n");
	int number;
	printf("type a number ");
	scanf("%d", &number);
	printf("%d\n", number);

	//multiple inputs 
	int num;
	char del;
	printf("type a number and a character\n");
	printf("=========2222===========\n");
	scanf("%d %c", &num, &del);
	printf("the number is: %d\n", num);
	printf("the character is: %c\n",del);
	printf("=========2222===========\n");


	printf("========multiples word===========\n");
	char fullName[30];
	printf("Type your full name: \n");
	fgets(fullName, sizeof(fullName), stdin);
	printf("Hello %s", fullName);
	printf("========multiples word===========\n");



	printf("\n\n");
	printf("\n\n");
	int age = 28;
	printf("%d\n",age );
	printf("%p\n",&age );

	printf("a pointer is a variable that stores the memory address\nn of another variable as its values");
	printf("\n\n");

	printf("there are a pointer and a pointer variable\n");
	printf("concepts: pointer, pointer varible\n\n");
	
	int myAge = 32;// an int variable name myAge
	int* ptr = &myAge;// an pointer varible named ptr that storage the address of myAge
	
	printf("%d\n", myAge);
	printf("%p\n", ptr);
	printf("\n");


	printf("====\n");
	int rasta = 21;
	int* pry = &rasta;

	printf("%p\n", pry);
	printf("%d\n",*pry);
	printf("====\n");



	printf("\n\n");
	printf("\n\n");

	int x = 23;
	int* y = &x;
	printf("%d\n",x);
	printf("%p\n",&x);
	printf("%p\n",y);
	printf("%p\n",&y);
	
	printf("\n\n");
	printf("\n\n");

	int numero;
	printf("%d\n",numero);
	printf("%p\n",&numero);
	printf("\n\n");
	printf("\n\n");

	return 0;
}
