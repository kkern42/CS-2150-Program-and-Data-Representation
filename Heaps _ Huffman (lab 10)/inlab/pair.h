//Kevin Kern (kjk9cd)
//inlab10
//pair.h
//11/24/2019

#ifndef PAIR_H
#define PAIR_H
#include <iostream>
using namespace std;

class pairs {
public:
  pairs(char letter, int frequency);      // default constructor
  int freq;
  char let;
  pairs* right;
  pairs* left;
};
#endif
