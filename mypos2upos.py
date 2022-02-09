import sys
import re
import argparse

# The following paragraph is taken from: http://www.lrec-conf.org/proceedings/lrec2012/pdf/274_Paper.pdf
#
# Our universal POS tagset unifies this previous work and extends it to 22 languages, 
# defining the following twelve POS tags: NOUN (nouns), VERB (verbs), ADJ (adjectives), ADV (adverbs), 
# PRON (pronouns), DET (determiners and articles), ADP (prepositions and postpositions), NUM (numerals), 
# CONJ (conjunctions), PRT (particles), ‘.’ (punctuation marks) and X (a catch-all for other categories such as abbreviations or foreign words).
#
# https://github.com/slavpetrov/universal-pos-tags

# Test conversion of myPOS to Universal POS
# Written by Ye Kyaw Thu
# Currently, @LST, NECTEC, Thailand
# Last Updated Date: 9 Aug 2021
# How to run:
# e.g. cat ./mypos-ver.3.0.txt | python ./mypos2upos.py > ./mypos-ver.3.0.upos.txt
# e.g. cat ./test.my | python ./mypos2upos.py > ./test.my.upos
#
# e.g. python ./mypos2upos.py ./head.mypos.txt

#abb	X
#adj	ADJ
#adv	ADV
#conj	CONJ
#fw	X
#int	X
#n	NOUN
#num	NUM
#part	PRT
#ppm	ADP
#pron	PRON
#punc	.
#sb	X
#tn	NUM
#v	VERB

map1_dict  = [
    ('/abb', '/X'),
     ('/adj', '/ADJ'),
     ('/adv', '/ADV'),
     ('/conj', '/CONJ'),
     ('/fw', '/X'),
     ('/int', '/X'),
     ('/n', '/NOUN'),
     ('/num', '/NUM'),          
     ('/part', '/PRT'),
     ('/ppm', '/ADP'),
     ('/pron', '/PRON'),
     ('/punc', '/.'),
     ('/sb', 'X'),
     ('/tn', '/NUM'),
     ('/v', '/VERB')
]

def map1(s):
    for pattern, value in map1_dict:
        s = re.sub(pattern, value, s)
    return s
    
parser=argparse.ArgumentParser()
parser.add_argument('inputFile', default=sys.stdin, type=argparse.FileType('r'), nargs='?', help="input filename")

args=parser.parse_args()
textLines=args.inputFile.readlines()

def main (command_line=None):
    for line in textLines:
                print(map1(line.rstrip("\n")))
    
if __name__ == "__main__":
    main ()
