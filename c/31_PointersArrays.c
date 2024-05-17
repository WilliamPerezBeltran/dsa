#include <stdio.h>

int main(){
	int array[5] = { 12,32,43,54,11};
	printf("%p\n",array);
	printf("%p\n", &array[0]);

	int i;
	for(i=0;i<5;i++){
		printf("%d\n",array[i]);
	};
	
	for(i=0;i<5;i++){
		printf("%d\n",*(array+i));
	};
	printf("========\n");
	printf("========\n");
	printf("%d\n",*array);
	printf("%p\n",array);
	printf("%p\n",array+1);
	printf("%d\n",*(array+1));
	printf("*****************\n");
	int is[5]={1,2,3,4,5};
	int* ptr = is;
	int x;
	for(x=0;x<4;x++){
		printf("%d ",is[x]);
	};
	printf("\n");
	
	for(x=0;x<4;x++){
		printf("%d ",*(ptr + x));
	};
	printf("\n");
	printf("\n");
	printf("%d\n",*ptr);

	*ptr = 100;
	*(ptr + 1) = 200;
	for(x=0;x<5;x++){
		printf("%d ",*(ptr + x));
	};
	printf("\n");


	



		




	return 0;
}
