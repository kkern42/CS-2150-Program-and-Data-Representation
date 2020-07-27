//User: Kevin Kern (kjk9cd)
//File: bitCOunter.cpp
//Date: 9/26/2019
//Lab4: Post-lab

#include <iostream>
#include <stdlib.h>
using namespace std;

int numOnes(int n){

  if(n==0){
    return 0;
  }
  else if(n==1){
    return 1;
  }
  else if(n%2 == 1){
    return numOnes(n/2) + 1;
  }
  else{
    return numOnes(n/2);
  }
}


int main(int argc, char **argv){

  if(argc == 1){
    cout << "No input entered, program ending...." << endl;
  }
  else{
     cout << numOnes(atoi(argv[1])) << endl;
  }
  
}
