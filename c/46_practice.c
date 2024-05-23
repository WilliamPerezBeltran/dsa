#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(){
int p=23;
int *ptr=&p;


printf("%d\n",p);// ptr apunta a p 
printf("%p\n",ptr);
printf("%d\n",*ptr);

printf("\n\n");
int x = 1, y=2, z[10];
int *ip; // ip is a pointer to int 
ip = &x; // ip now point to x  
	y = *ip; // y = 1
	*ip = 0; // x is now 0
ip = &z[0];// ip apunta a z[0]



void swap(int x, int y){
	int temp;
	temp = x;
	x = y;
	y = temp;
	printf("PRINT");
};

swap(23,34);

int strlen(char *s){
	int n;
	for (n = 0; *s != '\0'; s++){
		n++;
	};
	return n;
};


strlen("hello, world"); /* string constant */

int my_array[] = {1,23,34,43,23,-3};
int my_array_size = sizeof(my_array)/sizeof(my_array[0]);
int *punter;
punter = &my_array[0];
int xx;
for(xx=0; xx<my_array_size; xx++){
	printf("%d\n",my_array[xx]);
};
printf("\n\n");
for(xx=0; xx<my_array_size; xx++){
	printf("%d\n",*(punter + xx));
};
printf("size of array: %d\n",my_array_size);
printf("punter: %p\n",punter);
printf("*punter: %d\n",*punter);

printf("THE NAME OF THE ARRAY IS THE ADDRESS OF FIRTS ELEMENT IN THE ARRAY ");
printf("the name of the array is the address of firts element in the array ");
printf("the name of the array is the address of first element of the array \n");

printf("=========\n");
char *pA;
char *pB;
char strA[80] = "A string to be used for demostration purposes ";
char strB[80];
puts(strA);
pA = strA;
puts(pA);
pB = strB;
putchar('\n');
while(*pA != '\0'){
	*pB ++ = *pA++;
};
*pB = '\0';
puts(strB);

char name[30] = "william perez beltran ";
printf("\n\n");
printf("print reference number\n\n");
printf("%p\n",name);
printf("%p\n",name + 0);
printf("%p\n",name + 1);
printf("%p\n",name + 2);
printf("%p\n",name + 3);
printf("\n\n");

printf("print value number of string \n\n");
printf("%p\n",name);
printf("%c",*(name + 0));
printf("%c",*(name + 1));
printf("%c",*(name + 2));
printf("%c",*(name + 3));
printf("\n");
printf("print string with for \n");
for(int a=0;a<30;a++){
	printf("%c",*(name + a ));
};
	printf("\n");

char *ptt1;
char *ptt2;
char string_will[129] = "lo que podemos esperar observar tiene que estar limitado por las condiciones necesarias para nuestra presencia como observadores";
int size_cpy_string_willi= sizeof(string_will)/sizeof(string_will[0]);
puts(string_will);
char cpy_string_willi[129];
printf("%d\n",size_cpy_string_willi);

ptt1 = string_will;
ptt2 = cpy_string_willi;

while(*ptt1 != '\0'){
	printf("%p\n",*ptt1);
	*ptt2++ = *ptt1++;
};

printf("%d\n",size_cpy_string_willi);
puts(cpy_string_willi);













































return 0;
}
