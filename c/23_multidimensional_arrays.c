#include <stdio.h>
#include <stdbool.h>

int main(){

	int matrix[2][3] = { {1, 4, 2}, {3, 6, 8} };
	
	int x, y, sum;

	for(x = 0;x<2;x++){
		for(y=0;y<3;y++){
			printf(" %d " ,matrix[x][y]);
		};
		printf("\n");
	};

	
	return 0;
}
