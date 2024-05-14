#include <stdio.h>
#include <stdbool.h>

int main(){
	char m[]="hellow word!";
	int x,length;

	printf("%s\n",m);

	printf("access strings , print a charactern\n");
	printf("%c\n",m[0]);

	printf("Modify strings");
	m[0] = 'P';
	printf("%s\n",m);
	printf("loop through a string");
	length = sizeof(m)/sizeof(m[0]);
	
	for(x=0;x<length;x++){
		printf("character: %c\n",m[x]);



	};
	printf("another way of creating strings\n");
	printf("%s\n",m);

	printf("======================\n" );

	char message[] = "hey we need to bla abla,";
	char name[] = "wiliam";
	printf("%s %s\n", message, name);

	return 0;
}
