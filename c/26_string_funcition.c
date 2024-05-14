#include <stdio.h>
#include <stdbool.h>
#include <string.h>

int main(){
char alphabet[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
printf("%ld\n", strlen(alphabet));
printf("%ld\n", sizeof(alphabet));

char a[] = "la vida es bella ";
printf("%ld\n", strlen(a));

char b[] = "la vitta";
char c[] = " bella";
// Concatenate str2 to str1 (result is stored in str1)
strcat(b, c);
printf("la respuesta de la concatenacion: %s\n", b);

// COPy STRINGS 
char str1[20] = "hellow parcero";
char str2[20];
strcpy(str2,str1);
printf("%s\n",str2);


return 0;
};
