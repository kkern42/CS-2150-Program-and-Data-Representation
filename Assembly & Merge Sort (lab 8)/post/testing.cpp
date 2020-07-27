/*
University of Virginia
CS 2150 In-Lab 8
Spring 2018 
Test file for mergeSort
*/
#include <iostream>
using namespace std;
#include <list>

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
  int size;

  list<int> obj;

  int* point;
  int arr[5];
 
};

void doesNothing(int x);

//Default Constructor
myClass::myClass(){
  size  = 4;
 
}
void myClass :: passByReference(int& ref){
  ref = 5;
}
void myClass ::passByValue(int value){
  value = 4;
}
void myClass :: passCharRef(char& ref){
  ref = 'a';
}
void myClass :: passCharVal(char value){
  value = 'a';
}
void myClass :: passFloatRef(float& ref){
  ref = 2.2;
}
void myClass :: passFloatVal(float val){
  
}
void myClass :: passPointerVal(int* val){
}
void myClass ::passPointerRef(int& ref){
}
void myClass :: passObjectVal(list<int> obj){
}
void myClass :: passObjectRef(list<int>& obj){
}
void myClass :: passArray(int arr[]){
}

int main(){
   int s  = 5;

  //declar ean object 
  list<int> obj;
  obj.push_back(5);
  obj.front();

  myClass a;
  int* point = &s;
  int arr[5];

  a.passArray(arr);

  a.passByValue(s);
  
  a.passByReference(s);

  a.passCharVal('a');

  char b = 'a';

  a.passCharRef(b);

  a.passPointerVal(point);

  a.passPointerRef(*point);

  return 0;

}
