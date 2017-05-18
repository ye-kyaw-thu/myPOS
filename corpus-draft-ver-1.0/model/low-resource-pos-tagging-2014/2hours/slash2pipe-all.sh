#!/bin/bash

# last updated: 18 May 2017
# written by Ye Kyaw Thu
# replacing / with | (adjusting format for training with low-resource-pos-tagger, 2hours annotation approach)

for i in {1..10}
do
   #for training file
   tr -s '\/' '\|' < ./t$i/train$i.nopipe > ./t$i/train$i.nopipe.pipe
   #for closed-test file
   tr -s '\/' '\|' < ./t$i/ctest$i.nopipe > ./t$i/ctest$i.nopipe.pipe
 done

   #for open test file
   tr -s '\/' '\|' < ./otest.nopipe > ./otest.nopipe.pipe
