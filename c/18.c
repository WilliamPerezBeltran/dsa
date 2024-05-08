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
	
	return 0;
}
