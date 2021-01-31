#include <stdio.h>

int g = 10;

int main()
{
	int a = 10;

	printf("global:%p\n", &g);
	printf("local :%p\n", &a);

	return 0;
}
