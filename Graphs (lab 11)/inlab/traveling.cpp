//Kevin Kern (kjk9cd)
//In-lab 11
//traveling.cpp
//12/2/2019

#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <algorithm>

using namespace std;

#include "middleearth.h"

/** @brief computes the distance of the cycle through all the other cities beginning at the start city 
 *
 * @details takes in a graph and its size and prints out members of the graph using a topological sorting algortihumThis method will compute the full distance of the cycle that starts at the 'start' parameter, goes to each of the cities in the dests vector IN ORDER, and ends back at the 'start' parameter. 
 * 
 * @return a float reprsenting distance through the cycle of cities
 * @param me the graph of all the cities in the world
 * @param start the name of the starting city 
 * @param dests is a vector containin all cities in the world
 */
float computeDistance (MiddleEarth &me, string start, vector<string> dests);

/** @brief prints the all cities in the route to the console
 *
 * @details This method will print the entire route, starting and ending at the 'start' parameter.  The output should be of the form: Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
 * 
 * @param start name of the first city in the route
 * @param dests is a vector containing all the cities in the route
 */
void printRoute (string start, vector<string> dests);


/** @brief Main method for traveling.cpp 
 *
 * @details generates a random world of cities and prints the fastest root from the frist city through all the other cities and back to the first as cycle
 * 
 * @param argc The of comand line arugments 
 * @param argv An array of chars to read in input
 * This function will take one file as a command line arguement 
 */
int main (int argc, char **argv) {
    // check the number of parameters
    if ( argc != 6 ) {
        cout << "Usage: " << argv[0] << " <world_height> <world_width> "
             << "<num_cities> <random_seed> <cities_to_visit>" << endl;
        exit(0);
    }
    // we'll assume the parameters are all well-formed
    int width, height, num_cities, rand_seed, cities_to_visit;
    sscanf (argv[1], "%d", &width);
    sscanf (argv[2], "%d", &height);
    sscanf (argv[3], "%d", &num_cities);
    sscanf (argv[4], "%d", &rand_seed);
    sscanf (argv[5], "%d", &cities_to_visit);
    // Create the world, and select your itinerary
    MiddleEarth me(width, height, num_cities, rand_seed);
    vector<string> dests = me.getItinerary(cities_to_visit);
    // YOUR CODE HERE
    float minimum = 2147483647;
    float temp = 0.0;
    vector<string> minPath;
    sort(dests.begin()+1, dests.end());
    while(next_permutation(dests.begin()+1, dests.end())){
      temp = computeDistance(me, dests.at(0), dests);
	if(temp < minimum){
	  minimum = temp;
	  minPath = dests;
	}
      }
    cout << sizeof(dests) << endl;
    cout << sizeof(minPath) << endl;
    vector<string>  test;
    cout << sizeof(test)<<endl;
    cout << "Minimum path has distance "<< minimum << ": ";
    printRoute(dests.at(0), minPath);
						      
    return 0;
}

/** @brief computes the distance o the cycle through all the other cities beginning at the start city 
 *
 * @details takes in a graph and its size and prints out members of the graph using a topological sorting algortihumThis method will compute the full distance of the cycle that starts at the 'start' parameter, goes to each of the cities in the dests vector IN ORDER, and ends back at the 'start' parameter. 
 * 
 * @return a float reprsenting distance through the cycle of cities
 * @param me the graph of all the cities in the world
 * @param start the name of the starting city 
 * @param dests is a vector containin all cities in the world
 */
float computeDistance (MiddleEarth &me, string start, vector<string> dests) {
  float dist = 0;
  string begin = start;
  for( int i = 0; i < dests.size(); i++){
    dist += me.getDistance(begin, dests.at(i));
    begin = dests.at(i);
  }
  dist += me.getDistance(start, dests.at(dests.size()-1));
  return dist;
}

/** @brief prints the all cities in the route to the console
 *
 * @details This method will print the entire route, starting and ending at the 'start' parameter.  The output should be of the form: Erebor -> Khazad-dum -> Michel Delving -> Bree -> Cirith Ungol -> Erebor
 * 
 * @param start name of the first city in the route
 * @param dests is a vector containing all the cities in the route
 */
void printRoute (string start, vector<string> dests) {
    // YOUR CODE HERE
  for(int i = 0 ; i < dests.size(); i++){
    cout << dests.at(i) << " -> ";
  }
  cout << start << endl;
}
