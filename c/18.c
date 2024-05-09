#include <stdio.h>
#include <stdbool.h>

int main(){

	int a = 10;
	int b = 20;

	if(a < b ){
		printf("true \n");
	}else if(a == b){
		printf("same number \n");
	}else{
		printf("greater than \n");
	};

	( a > b )? printf("true\n"):printf("false\n");

	int day = 4;
	switch(day){
		case 1:
			printf("monday\n");
			break;
		case 2:
			printf("tuesday\n");
			break;
		case 3:
			printf("wednesday\n");
			break;
		case 4:
			printf("thursday\n");
			break;
		case 5:
			printf("friday\n");
			break;
	}

	char letter = 'z';
	switch(letter){
		case 'a':
			printf("letter a\n");
			break;
		case 'b':
			printf("letter b\n");
			break;
		case 'c':
			printf("letter c\n");
			break;
		case 'd':
			printf("letter d\n");
			break;
		default:
		 printf("the default\n");
	}
	
	return 0;
}
