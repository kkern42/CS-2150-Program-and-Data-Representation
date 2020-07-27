//Kevin Kern (kjk9cd)
//inlab10
//huffmandec.ccp
//11/25/2019

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include "pair.h"
#include "heap.h"
using namespace std;

void makeTree(char c, string code, pairs *& newNode,int index ){
  if(index == code.length()){
      newNode = new  pairs(c, 0);
      return;
    }
  if(newNode == NULL ){
      newNode = new pairs('_', 1);
  }
  if(code[index] == '0'){
      makeTree(c, code, newNode->left, index+1);
  }
  if(code[index] == '1' ){
      makeTree(c, code, newNode->right, index+1);
  }
    
}


// main(): we want to use parameters
int main (int argc, char **argv) {
    pairs * root = new pairs('_', 0);
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file; must be opened in binary
    // mode, as otherwise whitespace is discarded
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in the first section of the file: the prefix codes
    while ( true ) {
        string character, prefix;
        // read in the first token on the line
        file >> character;
        // did we hit the separator?
        if ( (character[0] == '-') && (character.length() > 1) )
            break;
        // check for space
        if ( character == "space" )
            character = " ";
        // read in the prefix code
        file >> prefix;
        // do something with the prefix code
	char chara = character.c_str()[0];
	if(chara >= 0x20 && chara <= 0x7e && chara != '\n' && chara != '\r'){
	  makeTree(chara, prefix, root, 0);
	}
    }
    // read in the second section of the file: the encoded message
    stringstream sstm;
    while ( true ) {
        string bits;
        // read in the next set of 1's and 0's
        file >> bits;
        // check for the separator
        if ( bits[0] == '-' )
            break;
        // add it to the stringstream
        sstm << bits;
    }
    
    pairs * temp = root;
    string allbits = sstm.str();
    int index = 0;
    while(index < allbits.length()){
      if(allbits[index] == '0'){
    	temp = temp->left;
    	if(temp->right == NULL && temp->left == NULL){
    	  cout << temp->let;
    	  temp = root;
    	}
      }
      else if(allbits[index] == '1'){
    	temp = temp->right;
    	if(temp->right == NULL && temp->left == NULL){
    	  cout << temp->let;
    	  temp = root;
    	}
      }
      index++;
    }
    cout << "" << endl;
    // at this point, all the bits are in the 'allbits' string
    // close the file before exiting
    file.close();
}

