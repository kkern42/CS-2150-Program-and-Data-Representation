//User: Kevin Kern (kjk9cd)
//Lab 6: postlab (9:30 lab time)
//Date: 10/25/2019
//File: hashTable.cpp
#include "hashTable.h"
#include <cstdlib>
#include <iostream>
#include <cmath>
#include <string>
#include <list>
#include <iterator>
#include <array>

using namespace std;

hashTable::hashTable(){
  arr = new list<string>[200003];
  int size = 20;
  for(int i = 0; i< size; i++){
    powersOf[i] = pow(13,i);
  }

  
				
}

hashTable::hashTable(int x){
  arr = new list<string>[x];
  arrSize = x;
  int size = 20;
  for(int i = 0; i< size; i++){
     powersOf[i] = pow(37,i);
  }
}

void hashTable:: hashInsert(string s){
  int index = hashFunc(s);
  arr[index].push_back(s);
}

bool hashTable:: hashFind(string s){
  int index = hashFunc(s);
  //incase the value is stored at the front so it does not have 
  if(arr[index].front() == s){
    return true;
  }
 
  for(auto it = arr[index].begin(); it != arr[index].end(); it++){
    if(*it == s){
      return true;
    }
  }
  return false;
}

//Hash function call an array that already stores the powers of 37 and
//calls the array which is faster then computing  
int hashTable:: hashFunc(string s){
  unsigned int sum1 = 0;
  for(int i = 0; i < s.length(); i++){
    sum1 += s[i] * powersOf[i];
    // sum1 += s[i] * pow(37,i);
  }
  return sum1 % arrSize;
  
				
}
