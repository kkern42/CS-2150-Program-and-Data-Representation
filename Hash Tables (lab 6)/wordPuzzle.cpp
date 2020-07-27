//User: Kevin Kern (kjk9cd)
//Lab 6: postlab (9:30 lab time)
//Date: 10/25/2019
//File: wordPuzzle.cpp

//Big Theta Run time is Big Theta of (Rows*Columns)

//Time to run entire program on 140X170 grid is 3.25 seconds

#include <iostream>
#include <fstream>
#include <string>
#include <stdlib.h>
#include "hashTable.h"
#include "timer.h"
#include <stdlib.h>
#include <vector>
#include <stack>
#include <list>
using namespace std;

// We create a 2-D array of some big size, and assume that the grid
// read in will be less than this size (a valid assumption for lab 6)
#define MAXROWS 500
#define MAXCOLS 500
char grid[MAXROWS][MAXCOLS];

// Forward declarations
bool readInGrid (string filename, int &rows, int &cols);
char* getWordInGrid (int startRow, int startCol, int dir, int len,int numRows, int numCols);

// but this code will work correctly, it is fairly straightforward,
// and it is fast enough for our purposes in the hash lab
bool checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}



int main(int argc, char **argv){
  int rows;
  int cols;
  int words = 0;
  
  if(argc == 1 || argc > 3){
    cout << "Incorrect number of inputs" << endl;
  }
  else{
    int words = 0;
    int max = 0;
    string lin;
    ifstream myfile1(argv[1]);
    if(myfile1.is_open()){
      while(getline(myfile1, lin)){
	if(lin.length() >= 3&& lin.find("&")>lin.length()&&lin.find("-")>lin.length()){
	  words++;
	  if(lin.length() > max){
	    max = lin.length();
	  }
	  }
	}
	myfile1.close();
    }

    //went from 1.76869 to 1.57269
    hashTable hashT = hashTable(getNextPrime(words*10));
    
    
    string line;
    ifstream myfile(argv[1]);
    if(myfile.is_open()){
      while(getline(myfile, line)){
	if(line.length() >= 3 && line.find("&")>line.length()&&line.find("-")>line.length() ){
	    hashT.hashInsert(line);
	  }
	}
	myfile.close();
    }
   int count = 1;
   string line2;
   ifstream myfile2(argv[2]);
   if(myfile2.is_open()){
     while(getline(myfile2,line2)&& count <3){
       if(count == 1){
	 rows = stoi(line2);
       }
       else{
	 cols = stoi(line2);
       }
       count++;
     }
   }
   myfile2.close();
   bool result = readInGrid (argv[2], rows, cols);
    // if there is an error, report it
    if ( !result ) {
        cout << "Error reading in file!!!" << endl;
        exit(1); // requires the <stdlib.h> #include header!
    }
    //inialily tired a list<string> to store output maybe vector will be faster
    //list had 3.62 seconds
  list<string> store;

  //vector<string *> store(3000);
  //store.insert(store.begin()+count, tesStr);
  
  //Orginally had direcctions as if statements changed it to array for speed 
  string directions[] = {"N ","NE","E ","SE","S ","SW","W ","NW"};

  //no longer count found words in the for loop, makde it miliseconds faster 
  int wordCount= 0;
  timer newTimer;

  
  //changed l to only go to the largest word in the dictonary which is represented
  //by max which was calculated when the dictonary file was read in and
  //changed the time from 3.62 to 1.73494 seconds this is a very big difference 
  newTimer.start();
  for(int x=0; x<rows; x++){
    for(int y=0; y<cols; y++){
      for(int d= 0; d<8; d++){
	for(int l= 3; l < max; l++){
	  string testStr = getWordInGrid(x,y,d,l,rows,cols);
	    if(l == testStr.length() && hashT.hashFind(testStr)){
	      store.push_back(directions[d]+"("+to_string(x)+", "+to_string(y)+ ")    " +testStr);
	     }
	}
      }
    }
  }
  newTimer.stop();
  //calucate numbe rof words in forloop when printing after 
  
  for(auto it = store.begin(); it != store.end(); it++){
    cout << *it << endl;
    wordCount++;
  }
  cout<< wordCount <<" words found" <<  endl;
  cout<< "Found all words in " << newTimer.getTime() << " seconds" << endl;

  }
}

/** This function will read in a grid file, as per the format in the
 * CS 2150 lab 6 document, into a global grid[][] array.  It uses C++
 * file streams, and thus requires the the <fstream> #include header.
 *
 * @return true or false, depending on whether the file was
 *         successfully opened.
 * @param filename The file name to read in -- it's assumed to be in
 *                 the file format described in the lab document.
 * @param rows The number of rows as specified in the input file;
 *             as this is a reference, it is set by the function.
 * @param cols The number of columnss as specified in the input file;
 *             as this is a reference, it is set by the function.
 */
bool readInGrid (string filename, int &rows, int &cols) {
    // a C++ string to hold the line of data that is read in
    string line;
    // set up the file stream to read in the file (takes in a C-style
    // char* string, not a C++ string object)
    ifstream file(filename.c_str());
    // upon an error, return false
    if (!file.is_open() ){
      return false;
    }
    // the first line is the number of rows: read it in
    file >> rows;
    //cout << "There are " << rows << " rows." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the second line is the number of cols: read it in and parse it
    file >> cols;
    //cout << "There are " << cols << " cols." << endl;
    getline (file,line); // eats up the return at the end of the line
    // the third and last line is the data: read it in
    getline (file,line);
    // close the file
    file.close();
    // convert the string read in to the 2-D grid format into the
    // grid[][] array.  In the process, we'll print the grid to the
    // screen as well.
    int pos = 0; // the current position in the input data
    for ( int r = 0; r < rows; r++ ) {
        for ( int c = 0; c < cols; c++ ) {
            grid[r][c] = line[pos++];
            //cout << grid[r][c];
        }
        //cout << endl;
    }
    // return success!
    return true;
}

/** This function will retrieve a word in a grid of letters in a given
 * direction.  If the end of the grid is encountered before the length
 * of the desired string is reached, then a shorter string will be
 * returned.  The data is retrieved from a global char grid[][]
 * array, which is assumed to be defined (and in scope).  NOTE: The
 * return value is a static char[][] variable (for efficiency
 * reasons), so a successive return value will overwrite a previous
 * return value.
 *
 * @return A char* containing the letters in the provided direction
 *         (NOTE: it is returned in a static char array).
 * @param startRow The starting (row,col) position to find the word.
 * @param startCol The starting (row,col) position to find the word.
 * @param dir The direction to move: 0 is north (upwards), 1 is
 *            northeast, and it rotates around clockwise until it
 *            reaches 7 for northwest.
 * @param len The desired length of the string to return (assuming
 *            the edge of the grid is not reached--if the edge of the
 *            grid is reached, it will return as many characters as
 *            possible up to the edge of the grid, so the returned
 *            string may not have the same length as this parameter
 *            indicates).
 * @param numRows The number of rows in the global char grid[][]
 *                array.
 * @param numCols The number of columns in the global char grid[][]
 *                array.
 */
char* getWordInGrid (int startRow, int startCol, int dir, int len,
                     int numRows, int numCols) {
    // the static-ness of this variable prevents it from being
    // re-declared upon each function invocataion.  It also prevents it
    // from being deallocated between invocations.  It's probably not
    // good programming practice, but it's an efficient means to return
    // a value.
    static char output[256];
    // make sure the length is not greater than the array size.
    if ( len >= 255 )
        len = 255;
    // the position in the output array, the current row, and the
    // current column
    int pos = 0, r = startRow, c = startCol;
    // iterate once for each character in the output
    for ( int i = 0; i < len; i++ ) {
        // if the current row or column is out of bounds, then break
        if ( (c >= numCols) || (r >= numRows) || (r < 0) || (c < 0) )
            break;
        // set the next character in the output array to the next letter
        // in the grid
        output[pos++] = grid[r][c];
        // move in the direction specified by the parameter
        switch (dir) { // assumes grid[0][0] is in the upper-left
            case 0:
                r--;
                break; // north
            case 1:
                r--;
                c++;
                break; // north-east
            case 2:
                c++;
                break; // east
            case 3:
                r++;
                c++;
                break; // south-east
            case 4:
                r++;
                break; // south
            case 5:
                r++;
                c--;
                break; // south-west
            case 6:
                c--;
                break; // west
            case 7:
                r--;
                c--;
                break; // north-west
        }
    }
    // set the next character to zero (end-of-string)
    output[pos] = 0;
    // return the string (a C-style char* string, not a C++ string
    // object)
    return output;
}
