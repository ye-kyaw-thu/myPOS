#!/bin/bash

# last updated 16 May 2017
# written by Ye Kyaw Thu
# Preparing incremental training data with splitted files

for filename in partaa partab partac partad partae partaf partag partah partai partaj
do
   counter=$(($counter + 1))
   mkdir t$counter
   concatFilenames="$concatFilenames $filename"
   cat $concatFilenames > ./t$counter/train$counter
   wc ./t$counter/train$counter 
done 
