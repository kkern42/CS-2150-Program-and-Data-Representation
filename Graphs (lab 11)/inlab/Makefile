#Kevin Kern (kjk9cd)
#In-lab 11
#traveling.cpp
#12/3/2019

CXX=clang++ -O2 $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g
OX=doxygen

OFILES = middleearth.o traveling.o

code: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES)
	doxygen

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ code

middleearth.o: middleearth.cpp middleearth.h
