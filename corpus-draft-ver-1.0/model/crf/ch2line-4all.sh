#!/bin/bash

# last updated 16 May 2017
# written by Ye Kyaw Thu
# changing column to line format for all tagged output files

for i in {1..10}
do
  
   # for closed-test data files
   ./col2line.pl ./t$i/ctest$i.nopipe.col.result.f13 > ./t$i/ctest$i.nopipe.col.result.f13.line
   echo -e "\nFinished for ./t$i/ctest$i.nopipe.col.result.f13!"
   echo "head ./t$i/ctest$i.nopipe.col.result.f13.line"
   head ./t$i/ctest$i.nopipe.col.result.f13.line

   # for open test data files
   ./col2line.pl ./t$i/otest$i.nopipe.col.result.f13 > ./t$i/otest$i.nopipe.col.result.f13.line
   echo -e "\nFinished for ./t$i/otest$i.nopipe.col.result.f13!"
   echo "head ./t$i/otest$i.nopipe.col.result.f13.line"
   head ./t$i/otest$i.nopipe.col.result.f13.line

done 
   

