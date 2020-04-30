#include <iostream>
#include <cassert>
#include <algorithm>

#include <klee/klee.h>

using namespace std;


int main()
{
    int a, b, x;
    klee_make_symbolic(&a, sizeof(a), "a");
    klee_make_symbolic(&b, sizeof(b), "b");
	klee_make_symbolic(&x, sizeof(x), "x");
    if(a > 0)
	{
		x = a + b;
	}
	else
	{
		x = a*b + 10;
	}
	
	if(b < 0)
	{
		x -= b;
	}
	else
	{
		x = 10;
	}
	
	klee_print_expr("x = ", x);


    return 0;
}
