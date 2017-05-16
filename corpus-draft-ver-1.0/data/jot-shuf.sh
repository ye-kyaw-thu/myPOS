#!/bin/sh

# written by Ye Kyaw Thu
# make shuffling
# how to run
# jot-shuf.sh <finename>

jot -r "$(wc -l $1)" 1 | paste - $1 | sort -n | cut -f 2- > $1.shuf
echo  "head of shuffled output file $1.shuf: \n$(head $1.shuf)";
