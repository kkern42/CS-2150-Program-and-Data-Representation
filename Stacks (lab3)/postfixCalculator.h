//User: kjk9cd (Kevin Kern)
//File: postfixCalculator.h
//Date: 9/17/2019
//Lab3: Post-Lab

#ifndef POSTFIXCALCULATOR_H
#define POSTFIXCALCULATOR_H
#include <stack>
#include "stack.h"
#include <iostream>
using namespace std;

class postfixCalculator{
public:
  postfixCalculator();
  void pushOn(int x);
  void popOff();
  int seeTop();
  void add();
  void sub();
  void multiply();
  void divide();
  void unaryNegation();
  int answer();

 private:
  Stack calcStack;
};
#endif
