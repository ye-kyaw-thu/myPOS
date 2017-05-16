#!/bin/bash

# late update 16 May 2017
# Written by Ye Kyaw Thu
# for testing trained CRF models with closed test data (10% of the training data) 

for i in {1..10}
do
   # crf_test -m model_file test_files ...
   crf_test  -m ./t$i/train$i.nopipe.crf-model ./t$i/ctest$i.nopipe.col > ./t$i/ctest$i.nopipe.col.result
   echo -e "\n Finished testing for ./t$i/ctest$i.nopipe.col!"
done
