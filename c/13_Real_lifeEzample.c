#include <stdio.h>

int main(){

	int item = 23;
	float item_cost = 9.99;
	float total = item * item_cost;
	char currency = '$';

	printf("Number of items %d\n", item );
	printf("cost per item %.1f %c\n", item_cost, currency);
	printf(" total cost: %.2f%c\n", total, currency);

	return 1;
}
