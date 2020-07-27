#Kevin Kern (kjk9cd)
#inlab10
#Makefile
#11/24/2019

CXX=clang++ -O2 $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g

OFILES = heap.o pair.o huffmandec.o
OFILE = heap.o pair.o huffmanenc.o

encoder: $(OFILE)
	$(CXX) $(DEBUG) $(OFILE) -o encoder

decoder: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) -o decoder

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ code

heap.o: heap.cpp heap.h
pair.o: pair.cpp pair.h
