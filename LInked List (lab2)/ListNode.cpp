//User: kjk9cd (Kevin Kern)
//File: List.cpp
//Date: 9/10/2019
//Lab2: Post-Lab

#include "ListNode.h"
#include <iostream>
// next line needed because NULL is part of std namespace
using namespace std;

ListNode :: ListNode(){
  value = 0;
  next = NULL;
  previous = NULL;
}
