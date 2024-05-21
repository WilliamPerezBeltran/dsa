#include <stdio.h>
#include <stdlib.h>

int main(){

	int *ptr1, *ptr2;
	printf("%p\n",ptr1);
	printf("%p\n",&ptr1);
	printf("%d\n",*ptr1);
	printf("\n\n");

  int *students;
  int numStudents = 12;
  students = calloc(numStudents, sizeof(*students));
  printf("%ld", numStudents * sizeof(*students)); // 48 bytes

  return 0;
}
