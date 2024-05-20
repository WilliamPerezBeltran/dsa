#include <stdio.h>
#include <stdlib.h>

int main(){

	int variable = 10;
	int *puntero = &variable;

	printf("Imprime la direccion de memoria de la variable /' variable  /' = %p  \n", &variable);
	printf("Imprime el contenido de la variable /' variable /' = %d \n", variable);
	printf("Imprime el contenido de la variable \n");
	printf(":puntero que va ser una direccion de memoria  /' = %p \n", puntero);
	printf("Imprime el contenido del puntero llamado puntero \n");
	printf("que es el mismo valor de la variable llamada variable  = %d \n", *puntero);

	int *ptr1, *ptr2;
ptr1 = malloc(sizeof(*ptr1));
ptr2 = calloc(1, sizeof(*ptr2));


printf("%p\n", ptr1);
printf("%p\n", ptr2);


int *students;
int numStudents = 12;
students = calloc(numStudents, sizeof(*students));
printf("%ld", numStudents * sizeof(*students)); // 48 bytes

printf("consider \n");
printf("=====================");
printf("=====================");
printf("=====================\n");

int j,k;
k = 2;
j = 7;
k = j;

int *ptr;
printf("%p\n",ptr);
printf("%d\n",*ptr);

ptr = &k;

printf("\n");
printf("%p\n",ptr);
printf("%d\n",*ptr);

printf("\n");
printf("j has the values %d and is stored at %p\n", j,(void *)&j);
printf("k has the value %d and is stored at %p\n",k, (void *)&k);
printf("ptr has the value %p and is stored at %p\n", ptr, (void *)&ptr);
printf("*ptr has the value %d \n", *ptr);

	return 0;

}
