#include <stdio.h>
#include <stdbool.h>

int main(){

	/*
	 * while(condition){
	 *     code block to be executed
	 *
	 * }
	 * */

	int i = 0;
	while (i<5){
		printf("%d\n", i);
		i++;
	}

	/*  do{
	 *     code block to be execute 
	 *  }while(condition);
	 *  */
  printf("======\n");
	int ii = 0;
	do{
		printf("%d\n",ii);
		ii++;
	}while(ii<5);


	/* syntax
	 *
	 * for(expression1, expression 2, expression 3){
	 *     code block to be executed
	 * }
	 * */

  printf("******======\n");
	int x;
	for(x = 1; x <= 5; x++){
		if(x == 3){
		//	break;
		continue;
		}
		printf("%d\n",x);
	}


	return 0;

}
