//Kevin Kern (kjk9cd)
//inlab10
//heap.ccp
//11/24/2019

#include <iostream>
#include "heap.h"
#include "pair.h"
using namespace std;

// default constructor
heap::heap() : heap_size(0) {
  pairs* dummy = new pairs('0', 0);
  hep.push_back(dummy);
}


// the destructor doesn't need to do much
heap::~heap() {
}

void heap::insert(pairs* x) {
    // a vector push_back will resize as necessary
    hep.push_back(x);
    // move it up into the right position
    percolateUp(++heap_size);
}

void heap::percolateUp(int hole) {
    // get the value just inserted
    pairs* x = hep[hole];
    // while we haven't run off the top and while the
    // value is less than the parent...
    for ( ; (hole > 1) && (x->freq < hep[hole/2]->freq); hole /= 2 )
        hep[hole] = hep[hole/2]; // move the parent down
    // correct position found!  insert at that spot
    hep[hole] = x;
}

pairs* heap::deleteMin() {
    // make sure the heap is not empty
    if ( heap_size == 0 )
        throw "deleteMin() called on empty heap";
    // save the value to be returned
    pairs* ret = hep[1];
    // move the last inserted position into the root
    hep[1] = hep[heap_size--];
    // make sure the vector knows that there is one less element
    hep.pop_back();
    // percolate the root down to the proper position
    percolateDown(1);
    // return the old root node
    return ret;
}

void heap::percolateDown(int hole) {
    // get the value to percolate down
    pairs* x =  hep[hole];
    // while there is a left child...
    while ( hole*2 <= heap_size ) {
        int child = hole*2; // the left child
        // is there a right child?  if so, is it lesser?
        if ( (child+1 <= heap_size) && (hep[child+1]->freq < hep[child]->freq) )
            child++;
        // if the child is greater than the node...
        if ( x->freq > hep[child]->freq ) {
            hep[hole] = hep[child]; // move child up
            hole = child;             // move hole down
        } else
            break;
    }
    // correct position found!  insert at that spot
    hep[hole] = x;
}

pairs* heap::findMin() {
    if ( heap_size == 0 )
        throw "findMin() called on empty heap";
    return hep[1];
}

unsigned int heap::size() {
    return heap_size;
}

void heap::makeEmpty() {
    heap_size = 0;
}

bool heap::isEmpty() {
    return heap_size == 0;
}

void heap::print() {
    for ( int i = 1; i <= heap_size; i++ ) {
      cout << hep[i]->freq << " ";
    }
    cout <<" " << endl;
}
