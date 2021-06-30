#!/bin/bash

# last updated 17 May 2017
# written by Ye Kyaw Thu
# for testing with built RDR models

#cd /Users/aihb/tool/RDRPOSTagger-master/pSCRDRtagger/
cd /home/zar/1_pos_model_setup/RDRPOSTagger/pSCRDRtagger/


#for i in {1..10}
for i in {1..1}
do
   #testing with closed-test data     
   #python2.7 RDRPOSTagger.py tag /home/zar/1_pos_model_setup/rdr_pos1_2_3/t$i/train$i.nopipe.RDR /home/zar/1_pos_model_setup/rdr_pos1_2_3/t$i/train$i.nopipe.DICT /home/zar/1_pos_model_setup/rdr_pos1_2_3/t$i/ctest$i.nopipe.word   
   #echo -e "\n Finished testing with closed-test data file with train$i RDR model!"

   #testing with open test data (we use only opened test data)
 
   python2.7 RDRPOSTagger.py tag /home/zar/1_pos_model_setup/rdr_mypos-ver3/t$i/train$i.nopipe.RDR /home/zar/1_pos_model_setup/rdr_mypos-ver3/t$i/train$i.nopipe.DICT /home/zar/1_pos_model_setup/rdr_mypos-ver3/t$i/otest.nopipe.word
   echo -e "\n Finished testing with open test data file with train$i RDR model!"
done
