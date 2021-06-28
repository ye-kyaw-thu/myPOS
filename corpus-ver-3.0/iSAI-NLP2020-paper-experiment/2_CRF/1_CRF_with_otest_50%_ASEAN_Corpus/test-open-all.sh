#!/bin/bash

# late update 16 May 2017
# Written by Ye Kyaw Thu
# for testing trained CRF models with open test data

for i in {1..1}
do
   # crf_test -m model_file test_files ...
   crf_test  -m ./t$i/train$i.nopipe.crf-model ./otest.nopipe.col > ./t$i/otest$i.nopipe.col.result
   echo -e "\n Finished testing for ./t$i!"
done
