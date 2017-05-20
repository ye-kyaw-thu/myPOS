#!/bin/bash

# last updated: 20 May 2017
# written by Ye Kyaw Thu
# training with KyTea (L2 regularized SVM)

for i in {1..10}
do
   train-kytea -full ./t$i/train$i.nopipe -model ./t$i/train$i.nopipe.model -nows -modtext
   echo -e "==========\n"
done


