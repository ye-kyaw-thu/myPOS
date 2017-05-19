#!/bin/bash

# last updated: 19 May 2017
# written by Ye Kyaw Thu
# testing with closed and open test data

for i in {1..10}
do

   #for closed testing
   echo -e "For train$i:\n"
   echo "start closed testing ..."
   cat ./t$i/ctest$i.nopipe.word | /Users/aihb/tool/jitar-0.3.3/bin/jitar-tag ./t$i/train$i.nopipe.word.model > ./t$i/ctest$i.nopipe.word.TAGGED
   echo -e "closed testing with train$i Fin!\n"
   echo "head -n 3 ./t$i/ctest$i.nopipe.word.TAGGED"
   head -n 3 ./t$i/ctest$i.nopipe.word.TAGGED
 
   #for open testing
   echo -e "\nstart open testing ..."
   cat ./otest.nopipe.word | /Users/aihb/tool/jitar-0.3.3/bin/jitar-tag ./t$i/train$i.nopipe.word.model > ./t$i/otest$i.nopipe.word.TAGGED
   echo -e "open testing with train$i Fin!\n"
   echo "head -n 3 ./t$i/otest$i.nopipe.word.TAGGED"
   head -n 3 ./t$i/otest$i.nopipe.word.TAGGED
   echo -e "============\n"

done

