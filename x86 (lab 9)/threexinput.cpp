// Kevin Kern (kjk9cd)
// CS 2150 Pre-Lab 9
//11/17/2019
//threexinput.cpp

#include <iostream>
#include "timer.h"
using namespace std;

extern "C" long threexplusone(long);
 
int main(){
  long x, n, steps;
  double average = 0;
  cout << "Enter positive int: ";
  cin >> x;
  cout << "Enter number of runs: ";
  cin >> n;

  long count = 0;
  while(count < n){
    timer newTimer;
    newTimer.start();
    steps = threexplusone(x);
    newTimer.stop();
    average += newTimer.getTime();
    count++; 
  }
  cout << "Number of steps is: " << steps  << endl;
  cout << "The average time for " << n  << " runs is: " << average/n <<endl;
  return 0;

}
