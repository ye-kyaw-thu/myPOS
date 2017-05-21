#!/bin/bash

for i in {1..10}
do
   # for tagged closed-test results
   sed '/^$/d' ./t$i/ctest$i.nopipe.word.Tagged > ./t$i/ctest$i.nopipe.word.Tagged.clean
   echo "Check with head -n 3 ./t$i/ctest$i.nopipe.word.Tagged.clean"
   head -n 3 ./t$i/ctest$i.nopipe.word.Tagged.clean

   # for tagged open test results
   sed '/^$/d' ./t$i/otest$i.nopipe.word.Tagged > ./t$i/otest$i.nopipe.word.Tagged.clean
   echo -e "\nCheck with head -n 3 ./t$i/otest$i.nopipe.word.Tagged.clean"
   head -n 3 ./t$i/otest$i.nopipe.word.Tagged.clean
   echo -e "==========\n"
done


