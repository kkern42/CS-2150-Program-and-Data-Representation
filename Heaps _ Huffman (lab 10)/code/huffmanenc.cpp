//Kevin Kern (kjk9cd)
//prelab10
//huffmanenc.ccp
//11/24/2019

#include <iostream>
#include <time.h>
#include <stdlib.h>
using namespace std;

#include "heap.h"
#include "pair.h"
#include <stdio.h>
#include <map>

map<char, string> code;
int totalBits = 0;
void getCode(pairs* root, string c){
  if(!root->right && !root->left){
    totalBits += root->freq * c.length();
    code[root->let] = c;
    return;
  }
  if(root->left){
    getCode(root->left, c + "0");
  }
  if(root->right){
    getCode(root->right, c + "1");
  }
}

// we want to use parameters
int main (int argc, char **argv) {

    map<char, int> dict;
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must file name as the one and only parameter" << endl;
        exit(1);
    }
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
    while ( (g = fgetc(fp)) != EOF){
      if(g>= 0x20 && g<=0x7e && g != '\n' && g != '\r'){
        dict[g]++;
      }
    }
    fclose(fp);
    heap bh;
    for(auto& x : dict){
      pairs * newPair = new pairs(x.first, x.second);
      bh.insert(newPair);
    }
    int count = 0;
    while(bh.size() > 1){
      count++;
      pairs * temp1 =  bh.deleteMin();
      pairs * temp2 =  bh.deleteMin();
      pairs* connect = new pairs('_', (temp1->freq + temp2->freq));
      connect->left = temp1;
      connect->right = temp2;
      bh.insert(connect);
    }
    getCode(bh.findMin(), "");
    for(auto& x : code){
      cout << x.first<< " "  << x.second << endl;
    }
    cout << "----------------------------------------" << endl;
    FILE *fp2 = fopen(argv[1], "r");
    char g2;
    while ( (g2 = fgetc(fp2)) != EOF && g2 != '\n' && g2 != '\r'){
      if(g2>= 0x20 && g2<=0x7e){
	cout << code[g2] << " ";
      }
    }
    cout << "" << endl;
    cout << "----------------------------------------" << endl;
    fclose(fp2);

    unsigned int totalChars=  bh.findMin()->freq;
    unsigned int numBits = totalChars * 8;
    cout <<"Compression ratio: " << numBits/(float)totalBits << endl;
    cout << "The Huffman tree cost: " << totalBits/(float)totalChars << " bits per character" << endl;
}
