#!/bin/bash

# last updated: 16 May 2017
# written by Ye Kyaw Thu
# preparing word (i.e. without POS-tag) files for training and testing (open, closed) files

for i in {1..10}
do
   ./mk-wordtag.pl ./t$i/train$i "\/" w > ./t$i/train$i.word #for training file
   echo -e "\nFinished for ./t$i/train$i!"
   ./mk-wordtag.pl ./t$i/ctest$i "\/" w > ./t$i/ctest$i.word #for closed-test file
   echo -e "Finished for ./t$i/ctest$i!"
done 
   #for open test file
   ./mk-wordtag.pl ./otest "\/" w > ./otest.word
   echo -e "\nFinished for ./otest!"
