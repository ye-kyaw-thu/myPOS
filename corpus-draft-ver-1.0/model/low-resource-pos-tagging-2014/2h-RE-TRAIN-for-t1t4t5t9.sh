#!/bin/bash

# last updated: 18 May 2017
# written by Ye Kyaw Thu
# training models with low-resource-pos tagger 2014

export JAVA_OPTS="-Xmx4g"

#for i in {1..10}

   #here, nopipe is the removed "|" from original corpus (i.e. not considering compound words)
   #nopipe.pipe is the output file after replacing "/" symbols with "|" symbol (adjusting the format with low-resource-pos tagger 2014)
   #I used --memmIterations 100 (default setting) and 
   # for --emIterations adjusting based on the log files

# Re-training for train1 with --emIterations 6 
 /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/run --rawFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t1/train1.nopipe.word --toksupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t1/train1.nopipe.pipe --typesupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t1/train1.nopipe.pipe --modelFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t1/train1.nopipe.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 6 
 echo -e "\n Re-training finished for train1!!!"
 echo "ls ./2hours/t1/"
 ls ./2hours/t1/  

# Re-training for train4 with --emIterations 6
/Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/run --rawFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t4/train4.nopipe.word --toksupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t4/train4.nopipe.pipe --typesupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t4/train4.nopipe.pipe --modelFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t4/train4.nopipe.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 6 
echo -e "\n Re-training finished for train4!!!"
echo "ls ./2hours/t4/"
ls ./2hours/t4/
 
# Re-training for train5 with --emIterations 24
/Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/run --rawFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t5/train5.nopipe.word --toksupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t5/train5.nopipe.pipe --typesupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t5/train5.nopipe.pipe --modelFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t5/train5.nopipe.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 24 
echo -e "\n Re-training finished for train5!!!"
echo "ls ./2hours/t5/"
ls ./2hours/t5/

# Re-training for train9 with --emIterations 8
 /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/run --rawFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t9/train9.nopipe.word --toksupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t9/train9.nopipe.pipe --typesupFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t9/train9.nopipe.pipe --modelFile /Users/aihb/experiment/pos/my-pos/model4github/low-resource-pos-tagging-2014/2hours/t9/train9.nopipe.pipe.ser --memmCutoff 10 --memmIterations 100 --emIterations 8 
echo -e "\n Re-training finished for train9!!!"
echo "ls ./2hours/t9/"
ls ./2hours/t9/
