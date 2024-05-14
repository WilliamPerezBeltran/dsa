#include <stdio.h>
#include <stdbool.h>

int main(){
	int myNumbers[] = {10,20,30,40,50};
	printf("%lu in bytes\n",sizeof(myNumbers));

	printf("Real size of elements: %lu\n", sizeof(myNumbers)/sizeof(myNumbers[0]));
	return 0;
}
