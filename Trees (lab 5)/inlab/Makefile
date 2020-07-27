#Kevin Kern
#Lab 5 prelab
#Makefile-pizza
#10/14/2019 

CXX=clang++ $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g

OFILES = BinaryNode.o BinarySearchTree.o BSTPathTest.o

inlab: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) -o a.out

.SUFFIXES: .o .cpp	

clean:
	-rm -f *.o *~ inlab

BinaryNode.o: BinaryNode.cpp BinaryNode.h
BinarySearchTree.o: BinarySearchTree.cpp BinarySearchTree.h
BSTPathTest.o: BSTPathTest.cpp
