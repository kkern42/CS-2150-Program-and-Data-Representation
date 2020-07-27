//User: kjk9cd (Kevin Kern)
//File: postfixCalculator.cpp
//Date: 9/17/2019
//Lab3: Post-Lab

#include "postfixCalculator.h"
#include "stack.h"
#include <iostream>
#include <cstdlib>
using namespace std;


postfixCalculator :: postfixCalculator(){
}

void postfixCalculator :: pushOn(int x){
  calcStack.push(x);
}

void postfixCalculator :: popOff(){
  if(calcStack.empty()){
    cout << "can not use pop, stack is empty. Exiting program....." << endl;
    exit(-1);
  }
  else{
    calcStack.pop();
  }
}

int  postfixCalculator :: seeTop(){
  if(calcStack.empty()){
    cout << "can not use pop, stack is empty. Exiting program....." << endl;
    exit(-1);
    return 0;
  }
  else{
   return calcStack.top();
  }
}

void  postfixCalculator :: add(){
  int num1  = seeTop();
  popOff();
  int num2  = seeTop();
  popOff();
  int ans = num1 + num2;
  calcStack.push(ans);
}

void  postfixCalculator :: sub(){
  int num1  = seeTop();
  popOff();
  int num2  = seeTop();
  popOff();
  int ans  = num2 - num1;
  calcStack.push(ans);
}

void  postfixCalculator :: multiply(){
  int num1  = seeTop();
  popOff();
  int num2  = seeTop();
  popOff();
  int ans  = num1 * num2;
  calcStack.push(ans);
}

void  postfixCalculator :: divide(){
  int num1  = seeTop();
  popOff();
  int num2  = seeTop();
  popOff();
  int ans  = num2 / num1;
  calcStack.push(ans);
}

void postfixCalculator :: unaryNegation(){
  int flip = seeTop();
  popOff();
  calcStack.push(-flip);
}

int postfixCalculator :: answer(){
  return seeTop();
}


