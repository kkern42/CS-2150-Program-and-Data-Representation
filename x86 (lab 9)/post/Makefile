# Makefile for CS 2150 post-lab 9
# Kevin Kern (kjk9cd)
# postlab9
# Makefile
# 11/22/2019

# Defines the C++ compiler we'll be using
CXX	= clang -m64

# Defines the flags we'll be passing to the C++ compiler
CXXFLAGS	= -Wall -g

# Defines the assembler
AS	= nasm

# Defines the flags for the assembler
ASFLAGS	= -f elf64 -g

# All of the .o files for our program
OFILES	= linkedlist.c

# This tells make to create a .o file from a .cpp file, using the
# defaults above (i.e. the CXX and CXXFLAGS macros)
.SUFFIXES: .o .c

# This tells make to create a .o file from a .s file, using the
# defaults above (i.e. the AS and ASFLAGS macros)

# How to compile our final program.  Note that we do NOT specify an
# output executable name -- in order for this to work with the grading
# system, the file needs to be a.out (a.exe in Cygwin).
main:	$(OFILES)
	$(CXX) $(CXXFLAGS) $(OFILES)

# This will clean up (remove) all our object files.  The -f option
# tells rm to forcily remove the files (i.e. don't ask if they should
# be removed or not).  This removes object files (*.o) and Emacs
# backup files (*~)
clean:
	/bin/rm -f *.o *~
