#Kevin Kern (kjk9cd)
#Pre-Lab 11
#Makefile
#12/2/2019

CXX=clang++ -O2 $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g
OX=doxygen

OFILES = middleearth.o topological.o

code: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES)
	doxygen

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ code

middleearth.o: middleearth.cpp middleearth.h
