//User: kjk9cd (Kevin Kern)
//File: testPostfixCalc.cpp
//Date: 9/17/2019
//Lab3: In-Lab

#include "postfixCalculator.h"
#include <iostream>
#include <cstdlib>
using namespace std;


int main(){
  postfixCalculator inLab;
  string s;
  while (cin >> s) {
    if(s[0] == '+'){
      inLab.add();
    }
    else if(s[0] == '~'){
      inLab.unaryNegation();
    }
    else if(s[0] == '*'){
      inLab.multiply();
    }
    else if(s[0] == '/'){
      inLab.divide();
    }
    else if(s[0] == '-' && s.length() == 1){
      inLab.sub();
    }
    else{
      int x  = stoi(s);
      inLab.pushOn(x);
    }
     
  }
  cout << inLab.answer() << endl;
  return 0;
}
