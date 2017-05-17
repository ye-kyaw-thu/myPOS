#!/bin/bash


cd /Users/aihb/tool/RDRPOSTagger-master/pSCRDRtagger/

for i in {1..10}
do
   #training 
   python2.7 RDRPOSTagger.py train /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe
   echo -e "\n Finished RDR training for train$i!"
done
