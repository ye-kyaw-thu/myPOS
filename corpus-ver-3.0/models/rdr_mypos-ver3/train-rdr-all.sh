#!/bin/bash


#cd /Users/aihb/tool/RDRPOSTagger-master/pSCRDRtagger/
cd /home/zar/1_pos_model_setup/RDRPOSTagger/pSCRDRtagger/

#for i in {1..10}
#for i in {1..1}
#do
   #training 
   #python2.7 RDRPOSTagger.py train /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe
   #python2.7 RDRPOSTagger.py train /home/zar/1_pos_model_setup/rdr_pos1_2_3/t$i/train$i.nopipe
   #echo -e "\n Finished RDR training for train$i!"
#done

#training for rdr with mypos version 3.0
python2.7 RDRPOSTagger.py train /home/zar/1_pos_model_setup/rdr_mypos-ver3/t1/train1.nopipe
echo -e "\n Finished RDR training for train1!"
