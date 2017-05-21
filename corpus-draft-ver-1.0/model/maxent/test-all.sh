#!/bin/bash

for i in {1..10}
do
   #for closed test
   echo -e "\nStart closed testing with ./t$i/ctest$i.nopipe.word ..."
   python2.7 /home/lar/tool/maxent-master/example/postagger/maxent_tagger.py -m ./t$i/train$i.nopipe.model ./t$i/ctest$i.nopipe.word > ./t$i/ctest$i.nopipe.word.Tagged
   echo -e "Finished!"

   #for closed test
   echo -e "\nStart open testing with ./otest.nopipe.word ..."
   python2.7 /home/lar/tool/maxent-master/example/postagger/maxent_tagger.py -m ./t$i/train$i.nopipe.model ./otest.nopipe.word > ./t$i/otest$i.nopipe.word.Tagged
   echo -e "Finished!"

done
