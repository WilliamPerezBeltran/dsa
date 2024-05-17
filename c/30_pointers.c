#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(){
	int number = 23;
	printf("the number itself: %d\n",number);
	int* d = &number;
	printf("memory: %d\n",number);
	printf("memory: %p\n",d);
	printf("memory: %d\n",*d);



	int babo=234;
	int* ptr = &babo;
	printf("%d\n",babo);
	printf("%p\n",ptr);
	printf("%d\n",*ptr);



	return 0;
}
