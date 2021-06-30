#!/bin/bash

# last updated 17 May 2017
# written by Ye Kyaw Thu
# evaluation with evaluation.py for RDR approach
# original source of evaluation.py link: http://people.sutd.edu.sg/~yue_zhang/doc/doc/eng_pos_files/evaluate.py

#for i in {1..10}
for i in {1..1}
do
  
   # Evaluation for closed-test data files
   #./evaluate.py <reference> <tagged-output>
   echo -e "\n### Evaluation for RDR train$i model ###"
   
   #echo -e "\n   -with closed test data"
   #python2.7 ./evaluate.py ./t$i/ctest$i.nopipe ./t$i/ctest$i.nopipe.word.TAGGED

   # Evaluation for open test data files (we use only opened test data for mypos version 3.0)
   echo -e "\n   -with open test data"
   python2.7 ./evaluate.py ./otest.nopipe ./t$i/otest.nopipe.word.TAGGED

done 
   

