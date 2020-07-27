//User: Kevin Kern (kjk9cd)
//Date: 11/4/2019
//lab8: prelab
// File : mathfun.cpp

#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" int product (int, int);
extern "C" int power (int, int);

int  main () {

    // delcare the local variables
    int  x, y, prodResult;
    int powResult;
    cout << "Please the first integer:  ";
    cin >> x;

    cout << "Please the second integer:  ";
    cin >> y;

    prodResult = product(x, y);
    powResult = power(x, y);
    cout << x << " times "<< y  << " is " <<  prodResult << endl;
    //cout << prodResult << endl;
    cout << x << " to the power of " << y << " is " << powResult <<  endl;
    //cout << powResult << endl;
    // all done!
    return 0;
}
