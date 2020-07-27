//User: Kevin Kern (kjk9cd)
//Lab5: postlab
//Date: 10/16/2019
//File: AVLTree.cpp
#include "AVLTree.h"
#include <string>
#include "AVLNode.h"
#include <iostream>
using namespace std;

AVLTree::AVLTree() { root = NULL; }

AVLTree::~AVLTree() {
  delete root;
  root = NULL;
}

// insert finds a position for x in the tree and places it there, rebalancing
// as necessary.
void AVLTree::insert(const string& x) {
  // YOUR IMPLEMENTATION GOES HERE
  insertHelp(root, x);
}

// remove finds x's position in the tree and removes it, rebalancing as
// necessary.
void AVLTree::remove(const string& x) { root = remove(root, x); }

// pathTo finds x in the tree and returns a string representing the path it
// took to get there.
string AVLTree::pathTo(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return pathHelp(root, x);
}

// find determines whether or not x exists in the tree.
bool AVLTree::find(const string& x) const {
  // YOUR IMPLEMENTATION GOES HERE
  return findHelp(root, x);
}

// numNodes returns the total number of nodes in the tree.
int AVLTree::numNodes() const {
  // YOUR IMPLEMENTATION GOES HERE
  return numHelp(root);
}

// balance makes sure that the subtree with root n maintains the AVL tree
// property, namely that the balance factor of n is either -1, 0, or 1.
void AVLTree::balance(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  int bal = getHeight(n->right) - getHeight(n->left);
  if(bal == 2){
    if((getHeight(n->right->right) - getHeight(n->right->left)) < 0){
      n->right = rotateRight(n->right);
      n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
    }
    n= rotateLeft(n);
    n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
  }
  else if(bal == -2){
    if((getHeight(n->left->right) - getHeight(n->left->left)) >  0){
      n->left = rotateLeft(n->left);
      n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
    }
    n = rotateRight(n);
    n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
  }
}

// rotateLeft performs a single rotation on node n with its right child.
AVLNode* AVLTree::rotateLeft(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* newRoot = n->right;
  AVLNode* tempL = newRoot->left;
  newRoot->left = n;
  n->right = tempL;
  n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
  return newRoot;
}

// rotateRight performs a single rotation on node n with its left child.
AVLNode* AVLTree::rotateRight(AVLNode*& n) {
  // YOUR IMPLEMENTATION GOES HERE
  AVLNode* newRoot = n->left;
  AVLNode* tempR = newRoot->right;
  newRoot->right = n;
  n->left = tempR;
  n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
  return newRoot;
}


void AVLTree::insertHelp(AVLNode*& n, const string& x) {
  if(n == NULL){
    n = new AVLNode();
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
  n->height = max(getHeight(n->left),getHeight(n->right)) + 1;
  balance(n);

}

int AVLTree::getHeight(AVLNode* n){
  if(n == NULL){
    return 0;
  }
  else{
    return n->height;
  }
}


bool AVLTree::findHelp(AVLNode*  n, const string& x) const{
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

string  AVLTree::pathHelp(AVLNode*  n, const string& x) const{
  if(find(x)){
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
  else{
    return "";
  }
}


int AVLTree:: numHelp(AVLNode *n) const{
  int x = 1;
  if(n->left != NULL){
    x= numHelp(n->left) + x;
  }
  if(n->right != NULL){
    x = numHelp(n->right) + x;
  }
  return x;
}

// private helper for remove to allow recursion over different nodes. returns
// an AVLNode* that is assigned to the original node.
AVLNode* AVLTree::remove(AVLNode*& n, const string& x) {
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
      AVLNode* temp = n->right;
      n->right = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    if (n->right == NULL) {
      AVLNode* temp = n->left;
      n->left = NULL;
      delete n;
      n = NULL;
      return temp;
    }
    // two children -- tree may become unbalanced after deleting n
    string sr = min(n->right);
    n->value = sr;
    n->right = remove(n->right, sr);
  } else if (x < n->value) {
    n->left = remove(n->left, x);
  } else {
    n->right = remove(n->right, x);
  }
  n->height = 1 + max(height(n->left), height(n->right));
  balance(n);
  return n;
}

// min finds the string with the smallest value in a subtree.
string AVLTree::min(AVLNode* node) const {
  // go to bottom-left node
  if (node->left == NULL) {
    return node->value;
  }
  return min(node->left);
}

// height returns the value of the height field in a node. If the node is
// null, it returns -1.
int AVLTree::height(AVLNode* node) const {
  if (node == NULL) {
    return -1;
  }
  return node->height;
}

// max returns the greater of two integers.
int max(int a, int b) {
  if (a > b) {
    return a;
  }
  return b;
}

// Helper function to print branches of the binary tree
void showTrunks(Trunk* p) {
  if (p == nullptr) return;
  showTrunks(p->prev);
  cout << p->str;
}

// Recursive function to print binary tree
// It uses inorder traversal
void AVLTree::printTree(AVLNode* root, Trunk* prev, bool isRight) {
  if (root == NULL) return;

  string prev_str = "    ";
  Trunk* trunk = new Trunk(prev, prev_str);

  printTree(root->right, trunk, true);

  if (!prev)
    trunk->str = "---";
  else if (isRight) { // github user @willzhang05 pointed out that I forgot to change this from isLeft to isRight on my first commit
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

  printTree(root->left, trunk, false);
}

void AVLTree::printTree() { printTree(root, NULL, false); }
