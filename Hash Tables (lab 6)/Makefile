#Kevin Kern
#Lab 6 prelab (9:30 lab time)
#Makefile
#10/20/2019 

CXX=clang++ -O2 $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g

OFILES = hashTable.o wordPuzzle.o timer.o

code: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES)

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ code

hashTable.o: hashTable.cpp hashTable.h
wordPuzzle.o: wordPuzzle.cpp
timer.o: timer.cpp timer.h
