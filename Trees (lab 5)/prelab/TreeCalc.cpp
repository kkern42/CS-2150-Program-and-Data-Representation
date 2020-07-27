// Insert your header information here
//User: Kevin Kern
//Lab 5: prelab
//Date: 10/14/2019
//File: TreeCalc.cpp
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <cstdlib>
#include  <stack>
#include <string>


using namespace std;

//Constructor
TreeCalc::TreeCalc() {
}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
  cleanTree(mystack.top());
}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
  if (ptr != NULL) {
     cleanTree(ptr->left);
     cleanTree(ptr->right);
     delete ptr;
  }
}

//Gets data from user
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
    // insert a value into the tree
  if(val == "+" || val == "-" || val == "/" || val == "*"){
    TreeNode * newNode = new TreeNode(val);
    newNode->right = mystack.top();
    mystack.pop();
    newNode->left  =  mystack.top();
    mystack.pop();
    mystack.push(newNode); 
  }
  else{
    TreeNode * newNode = new TreeNode(val);
    mystack.push(newNode);      
  }
}

//Prints data in prefix form
void TreeCalc::printPrefix(TreeNode* ptr) const {
    // print the tree in prefix format
  if (ptr != NULL) {
    cout << ptr->value << " " ;
    printPrefix(ptr->left);
    printPrefix(ptr->right);
  }
}

//Prints data in infix form
void TreeCalc::printInfix(TreeNode* ptr) const {
    // print tree in infix format with appropriate parentheses
    if (ptr != NULL) {
     if(ptr->value == "+" || ptr->value == "-" || ptr->value == "/" || ptr->value == "*"){
       cout << "(";
     }
     printInfix(ptr->left);
     if(ptr->value == "+" || ptr->value == "-" || ptr->value == "/" || ptr->value == "*"){
       cout << " " << ptr->value << " " ;
     }
     else{
        cout << ptr->value;
     }
     printInfix(ptr->right);
     if(ptr->value == "+" || ptr->value == "-" || ptr->value == "/" || ptr->value == "*"){
       cout << ")";
     }
  }
}

//Prints data in postfix form
void TreeCalc::printPostfix(TreeNode* ptr) const {
    // print the tree in postfix form
   if (ptr != NULL) {
     printPostfix(ptr->left);
     printPostfix(ptr->right);
     cout << ptr->value << " " ;
  }
}

// Prints tree in all 3 (pre,in,post) forms

void TreeCalc::printOutput() const {
    if (mystack.size()!=0 && mystack.top()!=NULL) {
        cout << "Expression tree in postfix expression: ";
        // call your implementation of printPostfix()
    printPostfix(mystack.top());
        cout << endl;
        cout << "Expression tree in infix expression: ";
        // call your implementation of printInfix()
    printInfix(mystack.top());
        cout << endl;
        cout << "Expression tree in prefix expression: ";
        // call your implementation of printPrefix()
    printPrefix(mystack.top());
        cout << endl;
    } else
        cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
    // Traverse the tree and calculates the result
  if(ptr->left == NULL && ptr->right == NULL){
    return stoi(ptr->value);
  }
  else{
    int right = calculate(ptr->left);
    int left = calculate(ptr->right);
    string s = ptr->value;
     if(s == "+"){
      return right + left;
    }
    else if(s == "*"){
      return right * left;
    }
    else if(s== "/"){
      return right / left;
    }
    else{
    return right - left;
    }
    
  }
  return 0;
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    // call private calculate method here
    int i = calculate(mystack.top()) ;
    delete mystack.top();
    return i;
}
