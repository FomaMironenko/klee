#include "klee/klee.h"
#include <cassert>

void foo(int *x)
{
	*x *= *x * (*x);
}
void boo(int *x)
{
	if (*x < 0)
	{
		*x *= *x;
	}
}


int main()
{
	int *x = new int(2);
	klee_make_symbolic(x, sizeof(int), "x");


	klee_set_origin();

	klee_start_isolated(0);
		klee_start_isolated(1);
			*x -= 100;
			boo(x);
		klee_end_isolated(1);
		klee_start_isolated(2);
			if(*x & 127 > 64)
			{
				*x = -*x;
			}
		klee_end_isolated(2);
	klee_end_isolated(0);
}