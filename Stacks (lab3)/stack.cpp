//User: kjk9cd(Kevin Kern)
//File: stack.cpp
//Date: 9/17/2019
//Lab3: Post Lab


#include "stack.h"
#include <iostream>
using namespace std;


void Stack :: push(int x){
  stack.insertAtHead(x);
}

void Stack:: pop(){
  if(empty()){
    cout << "can not use pop, stack is empty. Exiting program....." << endl;
    exit(-1);
  }
  else{
    stack.removeFirst();
  }
}

int Stack :: top(){
  if(empty()){
    cout << "can not use pop, stack is empty. Exiting program....." << endl;
    exit(-1);
  }
  else{
    return stack.getFirst();
  }
}

bool Stack :: empty(){
  return stack.isEmpty();
}
