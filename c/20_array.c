#include <stdio.h>
#include <stdbool.h>

int main(){

	// int name_array[] = {item, item, item}
	int a[] = { 23,34,45,354};
	printf("%d\n",a[0]);

	int i;
 	for(i=0; i<4;i++){
		printf("%d\n",i);	
	};

	//Declare an array of four integer;
	int myArray[3];
	 myArray[0] = 10;
	 myArray[1] = 20;
	 myArray[2] = 20;

	int x;	
	 for(x=0;x<3;x++){
			printf("%d\n",myArray[x]);
	 };
	

	return 0;

}
