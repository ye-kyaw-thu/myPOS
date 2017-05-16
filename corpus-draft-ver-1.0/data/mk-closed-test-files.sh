#!/bin/bash

# last updated: 16 May 2017
# written by Ye Kyaw Thu
# for preparing closed-test data files

for i in {1..10}
do
   noOfSentences=$(($noOfSentences + 100))
   ./jot-shuf.sh ./t$i/train$i
   echo -e "\n"
   head -n $noOfSentences ./t$i/train$i.shuf > ./t$i/ctest$i
   
   echo "wc ./t$i/ctest$i:"
   wc ./t$i/ctest$i
   
   echo "head -n 3 ./t$i/ctest$i:"
   head -n 3 ./t$i/ctest$i 
   echo -e "\n"
done 

