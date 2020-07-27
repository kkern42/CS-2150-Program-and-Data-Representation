
#include "TreeCalc.h"
#include "TreeNode.h"
#include <iostream>
using namespace std;

int main(){
  TreeCalc tree = TreeCalc();
  // tree.insert("1");
  // tree.insert("2");
  // tree.insert("+");
  // tree.insert("3");
  // tree.insert("4");
  // tree.insert("5");
  // tree.insert("+");
  // tree.insert("*");
  // tree.insert("*");
  tree.insert("34");
  tree.insert("6");
  tree.insert("+");
  tree.insert("-8");
  tree.insert("4");
  tree.insert("/");
  tree.insert("-");
  tree.printOutput();


  
  return 0;
}
