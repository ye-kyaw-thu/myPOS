#!/bin/bash

# late update 16 May 2017
# Written by Ye Kyaw Thu
# for training CRF models with CRF++ toolkit on myPOS corpus

#for i in {1..10}
for i in {1..1}
do
   # crf_learn template_file train_file model_file
   crf_learn ./template ./t$i/train$i.nopipe.col ./t$i/train$i.nopipe.crf-model
   echo -e "\n Finished training for ./t$i/train$i.nopipe.col!"
done
