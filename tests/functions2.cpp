//#include "klee/klee.h"
#include <cassert>
#include <iostream>

int foo(int x)
{
	return x*x*x;
}

int boo(int x)
{
	return x * x;
}

typedef int(*f)(int);


int main()
{
	int n;
	klee_make_symbolic(&n, sizeof(int), "n");
	f F = foo;

	klee_set_origin();

	klee_start_isolated(0);
		klee_start_isolated(1);
			if(n % 2)
			{
				F = boo;
			}
		klee_end_isolated(1);
		klee_start_isolated(2);
			if(n < 0)
			{
				n = F(n);
			}
			if (n < 0)
			{
				assert(0);
			}
		klee_end_isolated(2);
	klee_end_isolated(0);
	int n;
	std::cin >> n;
	f F;
	if (n % 2)
	{
		F = &foo;
	}
	else
	{
		F = boo;
	}

	std::cout << F(n);
}