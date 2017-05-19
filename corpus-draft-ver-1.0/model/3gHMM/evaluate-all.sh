#!/bin/bash

# last updated 19 May 2017
# written by Ye Kyaw Thu
# evaluation with evaluation.py for 3gHMM approach
# original source of evaluation.py link: http://people.sutd.edu.sg/~yue_zhang/doc/doc/eng_pos_files/evaluate.py

for i in {1..10}
do
  
   # Evaluation for closed-test data files
   #./evaluate.py <reference> <tagged-output>
   echo -e "\n### Evaluation for 3gram HMM train$i model ###"
   echo -e "\n   -with closed test data"
   python2.7 ./evaluate.py ./t$i/ctest$i.nopipe ./t$i/ctest$i.nopipe.word.TAGGED.pair

   # Evaluation for open test data files
   echo -e "\n   -with open test data"
   python2.7 ./evaluate.py ./otest.nopipe ./t$i/otest$i.nopipe.word.TAGGED.pair

done 
   

