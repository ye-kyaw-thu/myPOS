#!/bin/bash

# last updated: 18 May 2017
# written by Ye Kyaw Thu
# training models with low-resource-pos tagger 2014

export JAVA_OPTS="-Xmx4g"

#for i in {1..10}
for i in {1..1}
do

   #here, nopipe is the removed "|" from original corpus (i.e. not considering compound words)
   #nopipe.pipe is the output file after replacing "/" symbols with "|" symbol (adjusting the format with low-resource-pos tagger 2014)
   #I used --memmIterations 100 (default setting) and --emIterations 50 (default setting)
 
   /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/run --rawFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t$i/train$i.nopipe.word --toksupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t$i/train$i.nopipe.pipe --typesupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t$i/train$i.nopipe.pipe --modelFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t$i/train$i.nopipe.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 50 
  
   echo -e "\n training finished !!!"
   echo "ls ./t$i/"
   ls ./t$i/
done
