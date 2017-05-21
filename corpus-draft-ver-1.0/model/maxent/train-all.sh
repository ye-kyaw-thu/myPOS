#!/bin/bash

for i in {1..10}
do

   python2.7 /home/lar/tool/maxent-master/example/postagger/postrainer.py ./t$i/train$i.nopipe.model -f ./t$i/train$i.nopipe --iters 1000

done
