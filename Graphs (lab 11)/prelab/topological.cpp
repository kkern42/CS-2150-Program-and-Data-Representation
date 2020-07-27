//Kevin Kern (kjk9cd)
//Pre-Lab11
//topological.cpp
//12/2//2019

#include <iostream>
#include <fstream>
#include <stdlib.h>
#include <unordered_map>
#include <vector>
#include <queue>
using namespace std;

unordered_map <string, int> list;
unordered_map <string, int> indegree;

/** @brief prints out member of a graph in topogolical order  
 *
 * @details takes in a graph and its size and prints out members of the graph using a topological sorting algortihum 
 * 
 * @param size This is the number of vertexs in the graph 
 * @param graph This is a 2 dimensional array that contains the edges of the grpah
 */
void topsort(int size,int** graph){
  queue<string> zeroEdges;
    for(auto& x : indegree){
      if(x.second == 0){
	zeroEdges.push(x.first);
      }
    }
      string vertex = "";
      while(zeroEdges.size() != 0){
	vertex = zeroEdges.front();
	zeroEdges.pop();
	cout << vertex << " ";
	for(auto& x : list){
	  if(graph[list[vertex]][x.second] == 1){
	    indegree[x.first]--;
	    if(indegree[x.first] == 0){
	      zeroEdges.push(x.first);
	    }
	  }
	}
      }
      cout << "" << endl; 
}


/** @brief Main method for topological.cpp 
 *
 * @details reads in an input file creates a grpah from it and prints out its elements in a topological order
 * 
 * @param argc The of comand line arugments 
 * @param argv An array of chars to read in the files
 * This function will take one file as a command line arguement 
 *
 */
int main (int argc, char **argv) {
    // verify the correct number of parameters
    if ( argc != 2 ) {
        cout << "Must supply the input file name as the one and only parameter" << endl;
        exit(1);
    }
    // attempt to open the supplied file
    ifstream file(argv[1], ifstream::binary);
    // report any problems opening the file and then exit
    if ( !file.is_open() ) {
        cout << "Unable to open file '" << argv[1] << "'." << endl;
        exit(2);
    }
    // read in two strings
    string s1, s2;
    while(true){
      file >> s1;
      file >> s2;
      if(s1 == "0" && s2 == "0"){break;}
      indegree[s1];
      indegree[s2]++;
    }
    file.close();
    int count  = 0;
    for(auto& x : indegree){
      list[x.first]  = count;
      count++;
    }
    int** map= new int* [list.size()];
    for(int i = 0; i < list.size(); i++){
      map[i] = new int[list.size()];
    }
    ifstream file2(argv[1], ifstream::binary);
    while(true){
      file2 >> s1;
      file2 >> s2;
      if(s1 == "0" && s2 == "0"){break;}
      map[list[s1]][list[s2]]= 1;
    }
    topsort(list.size(), map);
    cout << sizeof(list) << endl;
    cout << sizeof(indegree) << endl;
    cout << sizeof("cs2150") << endl;
}

