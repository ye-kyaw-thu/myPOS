#!/bin/bash

# late update 16 May 2017
# Written by Ye Kyaw Thu
# Replacing "|" with " "

#for i in {1..10}
for i in {1..1}
do
   #if you want to run at command prompt: tr -s "|" " " < ./otest > ./otest.nopipe
   tr -s "|" " " < ./t$i/train$i > ./t$i/train$i.nopipe
   echo -e "\n Finished replacing pipe with space for ./t$i/train$i!"
   #tr -s "|" " " < ./t$i/ctest$i > ./t$i/ctest$i.nopipe
   #echo -e "\n Finished replacing pipe with space for ./t$i/ctest$i!"
done

tr -s "|" " " < ./otest > ./otest.nopipe
echo -e "\n Finished replacing pipe with space for ./otest!"
