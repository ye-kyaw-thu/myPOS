#!/bin/bash

# last update: 18 May 2017
# written by Ye Kyaw Thu
# testing 2hours models with closed and test data

echo "start closed testing!"
#test and evaluation for closed test data
for i in {1..10}
do

   echo "start tagging ..."
   ./run --modelFile ./2hours/t$i/train$i.nopipe.pipe.ser --inputFile ./2hours/t$i/ctest$i.nopipe.word --outputFile ./2hours/t$i/ctest$i.nopipe.word.tagged
   echo "===== Finished tagging with model ./2hours/t$i/train$i.nopipe.pipe.ser! ====="
   echo "head first 2 lines of tagged file"
   head -n 2 ./2hours/t$i/ctest$i.nopipe.word.tagged
   echo "===== Start evaluation on ./2hours/t$i/train$i.nopipe.pipe.ser model with ./2hours/t$i/ctest$i.nopipe.pipe (closed test data)  ====="
   ./run --modelFile ./2hours/t$i/train$i.nopipe.pipe.ser --evalFile ./2hours/t$i/ctest$i.nopipe.pipe
   echo -e "==========\n"
done

echo "==========="
echo "==========="

echo "start open testing!"
#test and evaluation for open test data
for i in {1..10}
do
   echo "start tagging ..."
   ./run --modelFile ./2hours/t$i/train$i.nopipe.pipe.ser --inputFile ./2hours/otest.nopipe.word --outputFile ./2hours/t$i/otest$i.nopipe.word.tagged
   echo "===== Finished tagging with model ./2hours/t$i/train$i.nopipe.pipe.ser! ====="
   echo "head first 2 lines of tagged file"
   head -n 2 ./2hours/t$i/otest$i.nopipe.word.tagged
   echo "===== Start evaluation on ./2hours/t$i/train$i.nopipe.pipe.ser model with ./2hours/otest.nopipe.pipe (open test data) ====="
   ./run --modelFile ./2hours/t$i/train$i.nopipe.pipe.ser --evalFile ./2hours/otest.nopipe.pipe
done
