#!/bin/bash

# last updated 17 May 2017
# written by Ye Kyaw Thu
# for testing with built RDR models

#cd /Users/aihb/tool/RDRPOSTagger-master/pSCRDRtagger/
cd /home/zar/1_pos_model_setup/RDRPOSTagger/pSCRDRtagger/


#for i in {1..10}
for i in {1..1}
do
   python2.7 RDRPOSTagger.py tag /home/zar/1_pos_model_setup/rdr/t$i/train$i.nopipe.RDR /home/zar/1_pos_model_setup/rdr/t$i/train$i.nopipe.DICT /home/zar/1_pos_model_setup/rdr/t$i/my.all
   
   echo -e "\n Finished POS Tagging with over 10k Data with RDR model!"
   
done
