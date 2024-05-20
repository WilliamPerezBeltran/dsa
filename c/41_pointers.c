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

	return 0;

}
