#!/bin/bash

# late update 16 May 2017
# Written by Ye Kyaw Thu
# for cutting field 1 and field 3 (i.e. tagged by CRF model) for evaluation

for i in {1..10}
do
   cut -f1,3 ./t$i/ctest$i.nopipe.col.result > ./t$i/ctest$i.nopipe.col.result.f13
   cut -f1,3 ./t$i/otest$i.nopipe.col.result > ./t$i/otest$i.nopipe.col.result.f13

   echo -e "\n Finished testing for ./t$i/ !"
done
