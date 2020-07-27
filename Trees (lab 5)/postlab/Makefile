#Kevin Kern
#Lab 5 postlab
#Makefile
#10/14/2019 

CXX=clang++ $(CXXFLAGS)
CXXFLAGS= -std=c++11  
DEBUG=-Wall -g

OFILES = AVLNode.o AVLTree.o AVLPathTest.o

postlab: $(OFILES)
	$(CXX) $(DEBUG) $(OFILES) -o a.out

.SUFFIXES: .o .cpp  

clean:
	-rm -f *.o *~ postlab

AVLNode.o: AVLNode.cpp AVLNode.h
AVLTree.o: AVLTree.cpp AVLTree.h
AVLTest.o: AVLTest.cpp
