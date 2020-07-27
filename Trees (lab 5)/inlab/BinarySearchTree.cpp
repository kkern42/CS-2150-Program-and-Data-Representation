//User: Kevin Kern (kjk9cd)
//Lab5: inlab
//Date: 10/15/2019
//File: BInarySearchTree.cpp
#include "BinarySearchTree.h"
#include <string>
#include "BinaryNode.h"
#include <iostream> 
using namespace std;

BinarySearchTree::BinarySearchTree() {
  root = NULL;
}

BinarySearchTree::~BinarySearchTree() {
  delete root;
  root = NULL;
}

// insert finds a position for x in the tree and places it there.
void BinarySearchTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  insertHelp(root, x);
}

// remove finds x's position in the tree and removes it.
void BinarySearchTree::remove(const string& x) { root = remove(root, x); }

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string BinarySearchTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return  pathHelp(root, x);
}

// find determines whether or not x exists in the tree.
bool BinarySearchTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return findHelp(root, x);

}

int BinarySearchTree:: numHelp(BinaryNode *n) const{
  int x = 1;
  if(n->left != NULL){
    x= numHelp(n->left) + x;
  }
  if(n->right != NULL){
    x = numHelp(n->right) + x;
  }
  return x;
}

// numNodes returns the total number of nodes in the tree.
int BinarySearchTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  return numHelp(root);
}

bool BinarySearchTree::findHelp(BinaryNode*  n, const string& x) const{
  if(n == NULL){
    return false;
  }
  else if(x < n->value ){
    return findHelp(n->left, x);
  }
  else if(x > n->value ){
    return findHelp(n->right,x);
  }
  else{
    return true;
  }
}



string  BinarySearchTree::pathHelp(BinaryNode*  n, const string& x) const{
  string paths = "";
  if(n == NULL){
    return "";
  }
  else if(x < n->value ){
    paths = n->value;
    return paths + " " + pathHelp(n->left, x);
  }
  else if(x > n->value ){
    paths = n->value;
    return paths + " " + pathHelp(n->right,x);
  }
  else{
    paths = n->value;
    return paths;
  }
}

void BinarySearchTree::insertHelp(BinaryNode*& n, const string& x) {
  if(n == NULL){
    n = new BinaryNode();
    n->value = x;
    n->left = NULL;
    n->right = NULL;
  }
  else if(x < n->value ){
    insertHelp(n->left, x);
  }
  else if(x > n->value ){
    insertHelp(n->right, x);
  }
  else{
  }
}

// private helper for remove to allow recursion over different nodes. returns
// a BinaryNode* that is assigned to the original node.
BinaryNode* BinarySearchTree::remove(BinaryNode*& n, const string& x) {
  if (n == NULL) {
    return NULL;
  }
  // first look for x
  if (x == n->value) {
    // found
    // no children
    if (n->left == NULL && n->right == NULL) {
      delete n;
      n = NULL;
      return NULL;
    }
    // single child
    if (n->left == NULL) {
      BinaryNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      BinaryNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  return n;
}

// min finds the string with the smallest value in a subtree.
string BinarySearchTree::min(BinaryNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == nullptr) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void BinarySearchTree::printTree(BinaryNode* root, Trunk* prev, bool isLeft) {
  if (root == NULL) return;

  string prev_str = "    ";
  Trunk* trunk = new Trunk(prev, prev_str);

  printTree(root->left, trunk, true);

  if (!prev)
    trunk->str = "---";
  else if (isLeft) {
    trunk->str = ".---";
    prev_str = "   |";
  } else {
    trunk->str = "`---";
    prev->str = prev_str;
  }

  showTrunks(trunk);
  cout << root->value << endl;

  if (prev) prev->str = prev_str;
  trunk->str = "   |";

  printTree(root->right, trunk, false);
}

void BinarySearchTree::printTree() { printTree(root, NULL, false); }
