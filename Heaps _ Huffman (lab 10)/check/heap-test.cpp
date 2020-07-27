// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std;

#include "binary_heap.h"

binary_heap bh;

int main() {
  bh.insert(3);
  bh.insert(1);
  bh.insert(1);
  bh.insert(2);
  bh.print();
  return 0;
}
