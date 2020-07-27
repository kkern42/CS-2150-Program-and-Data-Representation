// Code written by Aaron Bloomfield, 2014
// Released under a CC BY-SA license
// This code is part of the https://github.com/aaronbloomfield/pdr repository

#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std;

#include "heap.h"
#include "pair.h"
#include <stdio.h>
#include <map>

// we want to use parameters
int main (int argc, char **argv) {

    map<char, int> dict;
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file.  FILE is a type designed to
    // hold file pointers.  The first parameter to fopen() is the
    // filename.  The second parameter is the mode -- "r" means it
    // will read from the file.
    FILE *fp = fopen(argv[1], "r");
    // if the file wasn't found, output and error message and exit
    if ( fp == NULL ) {
        cout << "File '" << argv[1] << "' does not exist!" << endl;
        exit(2);
    }
    // read in each character, one by one.  Note that the fgetc() will
    // read in a single character from a file, and returns EOF when it
    // reaches the end of a file.
    char g;
    while ( (g = fgetc(fp)) != EOF ){
      if(g>= 0x20 && g<=0x7e){
        dict[g]++;
      }
    }
    
    heap bh;
    for(auto& x : dict){
      cout << x.first << " " << x.second << endl;
      pairs  newPair = pairs(x.first, x.second);
      bh.insert(newPair);
    }

    while(bh.size() != 1){
      pairs one =  bh.deleteMin();
      pairs two = bh.deleteMin();
    }
    
    // // a nice pretty separator
    // cout << "----------------------------------------" << endl;
    // // rewinds the file pointer, so that it starts reading the file
    // // again from the beginning
    // rewind(fp);
    // // read the file again, and print to the screen
    // while ( (g = fgetc(fp)) != EOF )
    //   cout << g << " ";
    // // close the file
    fclose(fp);
}
