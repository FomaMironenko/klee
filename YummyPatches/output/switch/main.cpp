#include <iostream>
#include <cassert>
#include <algorithm>

#include <klee/klee.h>

using namespace std;


bool check_pow(int x)
{
    return x == (x & -x);
}

int foo(int i, int j)
{
	if(i > j)
    {
	    swap(i, j);
    }
	int ans = 0;
	for(; i < j; i++)
    {
	    if(i == 42)
        {
	        assert(false);
        }
	    switch(i%4)
        {
            case(0):
	            ans += 3*i;
	            break;
            case(1):
                ans += 349034;
                break;
            case(2):
                ans *= 2;
            case(3):
                ans += i*j;
        }
    }
	return ans;
}


int main()
{
    int i = 0, j = 0;
    klee_make_symbolic(&i, sizeof(i), "i");
    klee_make_symbolic(&j, sizeof(j), "j");
    int ans = foo(i, j);

    return 0;
}
