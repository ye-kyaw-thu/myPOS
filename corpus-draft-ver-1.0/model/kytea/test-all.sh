#!/bin/bash

# last updated: 20 May 2017
# written by Ye Kyaw Thu
# for testing with KyTea models

#testing with closed test data
for i in {1..10}
do

   kytea -model ./t$i/train$i.nopipe.model -nows -nounk < ./t$i/ctest$i.nopipe.word > ./t$i/ctest$i.nopipe.word.TAGGED
   head ./t$i/ctest$i.nopipe.word.TAGGED
   echo "================="

done

#testing with open test data
for i in {1..10}
do

   kytea -model ./t$i/train$i.nopipe.model -nows -nounk < ./otest.nopipe.word > ./t$i/otest$i.nopipe.word.TAGGED
   head ./t$i/otest$i.nopipe.word.TAGGED
   echo "================="

done
