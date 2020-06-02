#include "klee/klee.h"
#include <cassert>

int to_ind(int i, int n)
{
	if (i < 0)
	{
		i = -i;
	}
	return i % n;
}

int main()
{
	const int n = 10;
	int a[10];
	klee_make_symbolic(a, n * sizeof(int), "a");

	klee_set_origin();

	klee_start_isolated(0);
		klee_start_isolated(1);
			if(a[0] + a[9] == a[1])
			{
				a[(int)(a[0] == a[9])] = a[1];
			}
			a[to_ind(a[4], n)] = a[5] & a[6];
		klee_end_isolated(1);
		klee_start_isolated(2);
			if(a[2] == a[5] && a[5] == a[8])
			{
				a[5] *= 2;
			}
		klee_end_isolated(2);
	klee_end_isolated(0);
}