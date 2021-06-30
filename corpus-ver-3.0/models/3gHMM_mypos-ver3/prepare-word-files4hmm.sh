#!/bin/bash

# last updated: 16 May 2017
# written by Ye Kyaw Thu
# preparing word (i.e. without POS-tag) files for training and testing (open, closed) files

#for i in {1..10}
for i in {1..1}
do
   ./mk-wordtag.pl ./t$i/train$i.nopipe "\/" w > ./t$i/train$i.nopipe.word #for training file
   echo -e "\nFinished for ./t$i/train$i.nopipe!"
   #./mk-wordtag.pl ./t$i/ctest$i.nopipe "\/" w > ./t$i/ctest$i.nopipe.word #for closed-test file
   #echo -e "Finished for ./t$i/ctest$i.nopipe!"
done 
   #for open test file
   ./mk-wordtag.pl ./otest.nopipe "\/" w > ./otest.nopipe.word
   echo -e "\nFinished for ./otest.nopipe!"
