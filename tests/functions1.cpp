#include "klee/klee.h"
#include <cassert>

void foo(int &x)
{
	x *= x*x;
}

void boo(int &x)
{
	x *= x;
}

int main()
{
	int x;
	klee_make_symbolic(&x, sizeof(x), "x");

	klee_set_origin();

	klee_start_isolated(0);
		klee_start_isolated(1);
			if(x < 0)
			{
				boo(x);
			}
			else
			{
				foo(x);
			}
		klee_end_isolated(1);
		klee_start_isolated(2);
			if (x < 0)
			{
				if (x >= -100)
				{
					x += 100;
				}
			}
		klee_end_isolated(2);
	klee_end_isolated(0);
}