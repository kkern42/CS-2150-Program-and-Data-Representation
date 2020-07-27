#!/bin/bash

#kevin kern (kjk9cd)
#lab 9:30
#inlab 6
#10/22/2019

#read in dictonary and grid files
dict="$1"
grid="$2"

#run files 5 times storing runtimes
RUN_TIME1=`./a.out "$dict" "$grid" | tail -1`
RUN_TIME2=`./a.out "$dict" "$grid" | tail -1`
RUN_TIME3=`./a.out "$dict" "$grid" | tail -1`
RUN_TIME4=`./a.out "$dict" "$grid" | tail -1`
RUN_TIME5=`./a.out "$dict" "$grid" | tail -1`

#print out average 
echo The average run time is $(((RUN_TIME1+RUN_TIME2+RUN_TIME3+RUN_TIME4+RUN_TIME5)/5)) miliseconds 
