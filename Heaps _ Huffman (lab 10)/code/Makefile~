#Kevin Kern (kjk9cd)
#prelab10
#huffmanenc.ccp
#11/24/2019

CXX=clang++ -O2 $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g

OFILES = heap.o pair.o huffmanenc.o

code: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES)

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ code

heap.o: heap.cpp heap.h
pair.o: pair.cpp pair.h
