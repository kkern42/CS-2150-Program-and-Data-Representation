//User: kjk9cd
//Date: 9/1/2019
//File: xToN.cpp
//Lab 1: Pre-lab

#include <iostream>
using namespace std;

int xton(int x, int n){
  if(n==0){
    return 1;
  }
  if(n==1){
    return x;
  }
  else{
    return x*xton(x,n-1);
  }
}

int main(){
  int x, y, z;
  cin >> x;
  cin >> y;
  z = xton(x,y);
  cout << z << endl;
}


