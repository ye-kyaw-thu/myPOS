#!/bin/bash

# last updated 17 May 2017
# written by Ye Kyaw Thu
# for testing with built RDR models

cd /Users/aihb/tool/RDRPOSTagger-master/pSCRDRtagger/

for i in {1..10}
do
   #testing with closed-test data
   #python2.7 RDRPOSTagger.py PATH-TO-TRAINED-MODEL PATH-TO-LEXICON PATH-TO-RAW-TEXT-CORPUS 
   python2.7 RDRPOSTagger.py tag /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe.RDR /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe.DICT /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/ctest$i.nopipe.word
   echo -e "\n Finished testing with closed-test data file with train$i RDR model!"

   #testing with open test data
   python2.7 RDRPOSTagger.py tag /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe.RDR /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/train$i.nopipe.DICT /Users/aihb/experiment/pos/my-pos/model4github/rdr/t$i/otest.nopipe.word
   echo -e "\n Finished testing with open test data file with train$i RDR model!"
done
