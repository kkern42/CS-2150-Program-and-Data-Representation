//User: Kevin Kern (kjk9cd)
//File: prelab4.cpp
//Date: 9/23/2019
//Lab 4: pre-lab

#include <iostream>
#include <math.h>
#include <limits.h>
using namespace std;


void sizeOfTest(){
  int a;
  unsigned int b;
  float c; 
  double d;
  char e;
  bool f;
  int* g;
  char* h;
  double* i;

  cout<< "The size of int is: " << sizeof(a) << endl;
  cout<< "The size of unsigned int is: " << sizeof(b) << endl;
  cout<< "The size of float is: " << sizeof(c) << endl;
  cout<< "The size of double is: " << sizeof(d) << endl;
  cout<< "The size of char is: " << sizeof(e) << endl;
  cout<< "The size of bool is: " << sizeof(f) << endl;
  cout<< "The size of int* is: " << sizeof(g) << endl;
  cout<< "The size ofchar* is: " << sizeof(h) << endl;
  cout<< "The size of double* is: " << sizeof(i) << endl;
}

void outputBinary(unsigned int x){
  double p  = 0;
  string print  = "";
  for(int i = 31; i>=0; i--){
    p = pow(2.0,i);
    if(p < x || p  == x){
      print = print + "1";
      x = x - p;
    }
    else{
      print = print + "0";
    }

    if(i%4  == 0){
      print = print + " ";
    }
  }
  cout <<  print << endl;
}

void overflow(){
  unsigned int x = UINT_MAX;
  x = x + 1;
  cout << x << endl;
  cout << "The reason why the output is zero is because once the max value is stored every bit in the number is set to one,once 1 more is added to the number all the 1's flip and turn to zeros an extra 1 is added to the front however this causes an overflow as there is no space more avaliable space to represent the larger number and you are left with 32 zeros which evaluates to zero" << endl;
  
}


int main(){
  sizeOfTest();
}
