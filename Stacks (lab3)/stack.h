#ifndef STACK_H
#define STACK_H

#include "List.h"
#include <iostream>
using namespace std;

class Stack{
 public:
  void push(int x);
  void pop();
  int top();
  bool empty();

 private:
  List stack;
};

#endif
  

  
