//Kevin Kern (kjk9cd)
//prelab10
//huffmanenc.ccp
//11/24/2019

#ifndef HEAP_H
#define HEAP_H

#include <vector>
#include "pair.h"
using namespace std;

class heap {
public:
    heap();
    ~heap();

    void insert(pairs* x);
    pairs* findMin();
    pairs* deleteMin();
    unsigned int size();
    void makeEmpty();
    bool isEmpty();
    void print();

private:
    vector<pairs*> hep;
    unsigned int heap_size;

    void percolateUp(int hole);
    void percolateDown(int hole);
};

#endif
