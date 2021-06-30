#!/bin/bash

# last update: 19 May 2017
# written by Ye Kyaw Thu
# making word/tag pairs for all closed and open test output files

#for i in {1..10}
for i in {1..1}
do
   echo -e "\nstart making word/POS-tag pairs for train$i ..."
   #for closed-test data
   #./mk-pair.pl ./t$i/ctest$i.nopipe.word ./t$i/ctest$i.nopipe.word.TAGGED > ./t$i/ctest$i.nopipe.word.TAGGED.pair

   #echo -e "\nhead -n 3 ./t$i/ctest$i.nopipe.word.TAGGED.pair"
   #head -n 3 ./t$i/ctest$i.nopipe.word.TAGGED.pair
   
   #for open-test data
   ./mk-pair.pl ./otest.nopipe.word ./t$i/otest$i.nopipe.word.TAGGED > ./t$i/otest$i.nopipe.word.TAGGED.pair
   echo -e "\nhead -n 3 ./t$i/otest$i.nopipe.word.TAGGED.pair"
   head -n 3 ./t$i/otest$i.nopipe.word.TAGGED.pair
   
   echo -e "========== End for ./t$i/ =========\n"
done


