//Kevin Kern (kjk9cd)
//In-lab 11
//traveling.cpp
//12/3/2019
#include <iostream>
#include <vector>
#include <string>
#include <map>

#ifndef MIDDLEEARTH_H
#define MIDDLEEARTH_H

using namespace std;

/** @class MiddleEarth 
 *
 * @details Creates a world full of connected middle earth cities  
 * @file middleearth.cpp
 * see middleearth.cpp for better documentation
 */
class MiddleEarth {
private:
    int num_city_names, xsize, ysize;
    vector<float> xpos, ypos;
    vector<string> cities;
    float *distances;
    map<string, int> indices;

public:
    MiddleEarth (int xsize, int ysize, int numcities, int seed);
    ~MiddleEarth();
    void print();
    void printTable();
    float getDistance (string city1, string city2);
    vector<string> getItinerary(unsigned int length);
};

#endif
