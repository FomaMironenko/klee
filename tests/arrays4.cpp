#include "klee/klee.h"
#include <cassert>

int main()
{
	const int n = 10;
	int a[n];
	int i;
	int j;
	klee_make_symbolic(&i, sizeof(int), "i");
	klee_make_symbolic(&j, sizeof(int), "j");
	klee_make_symbolic(a, n * sizeof(int), "a");

	klee_set_origin();

	klee_start_isolated(0);
		klee_start_isolated(1);
			if(i < 0)
			{
				i = -i;
			}
			if (j < 0)
			{
				j = -j;
			}
			i = i % n;
			j = j % n;
			a[i] += a[j];
			a[(j + 1) % n] &= a[i];
		klee_end_isolated(1);
		klee_start_isolated(2);
			if(a[(j + 1) % n] == a[i])
			{
				if ((j + 1) % n != i)
				{
					a[i] = -a[(j + 1) % n];
				}
				else
				{
					a[i] = 0;
				}
			}
		klee_end_isolated(2);
	klee_end_isolated(0);
}