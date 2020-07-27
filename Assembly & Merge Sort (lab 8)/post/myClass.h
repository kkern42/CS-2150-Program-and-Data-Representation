//User: kjk9cd (kevin kern)
//File: List.h
//Date: 9/17/2019
//Lab3: Post-lab


#ifndef MYCLASS_H
#define MYCLASS_H

#include <list>
#include <iostream>
using namespace std;

class myClass {
public:
 myClass();
 void passByReference(int& ref);
 void passByValue(int value);
 void passCharRef(char& ref);
 void passCharVal(char value);
 void passFloatRef(float& ref);
 void passFloatVal(float val);
 void passPointerVal(int* val);
 void passPointerRef(int& ref);
 void passObjectVal(list<int> obj);
 void passObjectRef(list<int>& obj);
 void passArray(int arr[]);
private:
  int count;			//#of elements in list
  int size = 5;

  //declar ean object 
  list<int> obj;
  /* obj.push_back(5); */
  /* obj.front(); */

  int* point;
  int arr[5];
 
};

void doesNothing(int x);
#endif

