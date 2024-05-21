#include <stdio.h>
#include <stdlib.h>

int main(){
	int *ptr1, *ptr2, size;
	size = 4 * sizeof(*ptr1);
	ptr1 = malloc(size);

	printf("%d size of allocated to address %p\n", size, ptr1);
	printf("=========\n");
	printf("ptr1 =%p \n",ptr1); 
	printf("*ptr1 =%d \n",*ptr1); 
	printf("=========\n");

	size = 6 * sizeof(*ptr1);
	ptr2 = realloc(ptr1,size);
	printf("%d bytes reallocated at address %p \n", size, ptr2);
	return 0;
}
