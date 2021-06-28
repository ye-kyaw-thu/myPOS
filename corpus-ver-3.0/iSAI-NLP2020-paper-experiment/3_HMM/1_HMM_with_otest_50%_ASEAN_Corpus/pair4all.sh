#!/bin/bash

#jitar-tag output is sequence of tags only
#I have to make a pair of word and tag such as word/tag for evaluation with Precision, Recall and F-Score

#for i in {1..5}
for i in {1..1}
do
   #for closed test outputs
   ./mk-pair.pl ./t$i/ctest$i.word ./t$i/ctest$i.word.TAGGED > ./t$i/ctest$i.word.TAGGED.pair
   echo -e "\nhead -n 3 of ./t$i/ctest$i.word.TAGGED.pair";
   head -n 3 ./t$i/ctest$i.word.TAGGED.pair
   
   #for open test outputs
   ./mk-pair.pl ./t$i/otest.word ./t$i/otest$i.word.TAGGED > ./t$i/otest$i.word.TAGGED.pair
   echo -e "\nhead -n 3 of ./t$i/otest$i.word.TAGGED.pair";
   head -n 3 ./t$i/otest$i.word.TAGGED.pair
done
