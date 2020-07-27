//User: Kevin Kern(kjk9cd)
//File: inlab4.cpp
//Date: 9/24/2019
//Lab 4: in lab


#include <iostream>

using namespace std;

int main(){

  //first portion of lab
  char* t = NULL;
  double* u  = NULL;
  int x = 89;

  int x2 = 1;
  int* r = &x;
  unsigned int y = 0;
  unsigned int y2 = 1;

  float a = 1.0;
  float a2 = 0.0;

  double b = 0.0;
  double b2 = 1.0;

  char c = '0';
  char c2 = '1';

  bool d = false;
  bool d2 = true;
  

  cout << x <<endl;
  cout << y <<endl;
  cout << a <<endl;
  cout << b <<endl;
  cout << c <<endl;
  cout << d <<endl;
  cout << r <<endl;

  //second part of in lab below

  int IntArray[10];
  for(int i= 0; i<10; i++){
    IntArray[i] = i;
  }
  
  char CharArray[10];
  for(int i= 0; i<10; i++){
    CharArray[i] = i;
  }

  int IntArray2D[6][5];
  for(int i= 0; i<6; i++){
    for(int j= 0; j<5; j++){
      IntArray2D[i][j] = j;
    }
  }
  
  char CharArray2D[6][5];
  for(int i= 0; i<6; i++){
    for(int j= 0; j<5; j++){
      CharArray2D[i][j] = j;
    }
  }

  cout << "end" << endl;
  
  
}
