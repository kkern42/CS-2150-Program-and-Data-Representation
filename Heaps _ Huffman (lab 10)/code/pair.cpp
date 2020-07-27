//Kevin Kern (kjk9cd)
//prelab10
//huffmanenc.ccp
//11/24/2019

#include "pair.h"
#include <iostream>
using namespace std;

pairs::pairs(char letter, int frequency){
  let = letter;
  freq = frequency;
  left = NULL;
  right = NULL;
}
