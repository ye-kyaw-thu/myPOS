#!/bin/bash

# last updated 16 May 2017
# written by Ye Kyaw Thu
# changing line to column format for all training and test data files

for i in {1..10}
do
   # for training files
   ./ch2col.pl ./t$i/train$i.nopipe > ./t$i/train$i.nopipe.col
   echo -e "\nFinished for ./t$i/train$i.nopipe!"
   echo "head ./t$i/train$i.nopipe.col"
   head ./t$i/train$i.nopipe.col

   # for closed-test data files
   ./ch2col.pl ./t$i/ctest$i.nopipe > ./t$i/ctest$i.nopipe.col
   echo -e "\nFinished for ./t$i/ctest$i.nopipe!"
   echo "head ./t$i/ctest$i.nopipe.col"
   head ./t$i/ctest$i.nopipe.col

done 
   
   ./ch2col.pl ./otest.nopipe > ./otest.nopipe.col #for open test data
   echo -e "\nFinished for open test data!"
   echo "head otest.nopipe.col"
   head ./otest.nopipe.col

