#!/bin/bash

# last update: 19 May 2017
# written by Ye Kyaw Thu
# trainining 3-gram HMM POSTagging models with jitar-0.3.3:

#for i in {1..10}
for i in {1..1}
do
   echo -e "\nStart training 3-gram HMM POSTagging model for ./t$i/train$i.nopipe.word ...\n"
   #/Users/aihb/tool/jitar-0.3.3/bin/jitar-train brown ./t$i/train$i.nopipe ./t$i/train$i.nopipe.word.model
   /home/zar/1_pos_model_setup/jitar-0.3.3-bin/jitar-0.3.3/bin/jitar-train brown ./t$i/train$i.nopipe ./t$i/train$i.nopipe.word.model   
   ls ./t$i/
   echo -e "========== End for ./t$i/ ========="
done


