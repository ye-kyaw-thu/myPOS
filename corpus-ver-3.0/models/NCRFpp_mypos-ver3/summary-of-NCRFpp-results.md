# Summary of NCRF++ results with myPOS (version 3.0)

## Model1: wordCNN-CRF-charLSTM
***Training/Testing:***  
Right token =  12893  All token =  13468  acc =  0.9573062073062073
Test: time: 1.14s, speed: 881.74st/s; acc: 0.9573, p: -1.0000, r: -1.0000, f: -1.0000

***Testing:  raw:***  
Right token =  12212  All token =  13468  acc =  0.9067419067419067
raw: time:1.43s, speed:703.99st/s; acc: 0.9067, p: -1.0000, r: -1.0000, f: -1.0000

***Evaluation with evaluate.py:***  
```
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordCNN-CRF-charLSTM$ python2.7 ./evaluate.py ./test.bmes.out.clean.row ./ref.row 
Tag precision: 0.906741906742
```

==========

## Model2: wordLSTM-charCNN
***Training/Testing:***  
Right token =  12965  All token =  13468  acc =  0.9626522126522127
Test: time: 0.76s, speed: 1334.39st/s; acc: 0.9627, p: -1.0000, r: -1.0000, f: -1.0000

***Testing:***  
Right token =  12557  All token =  13468  acc =  0.9323581823581824
raw: time:0.79s, speed:1267.47st/s; acc: 0.9324, p: -1.0000, r: -1.0000, f: -1.0000

***Evaluation with evaluate.py:***  
```
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordLSTM-charCNN$ python2.7 ../wordCNN-CRF-charLSTM/evaluate.py ./test.bmes.out.row ./ref.row 
Tag precision: 0.932358182358
```

==========

## Model3: wordLSTM-CRF-charCNN
***Training/Testing:***  
Right token =  12940  All token =  13468  acc =  0.9607959607959607
Test: time: 1.12s, speed: 898.44st/s; acc: 0.9608, p: -1.0000, r: -1.0000, f: -1.0000

***Testing:***  
Right token =  12518  All token =  13468  acc =  0.9294624294624294
raw: time:1.10s, speed:911.28st/s; acc: 0.9295, p: -1.0000, r: -1.0000, f: -1.0000

***Evaluation with evaluate.py:***  
```
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordLSTM-CRF-charCNN$ python2.7 ../wordCNN-CRF-charLSTM/evaluate.py ./test.bmes.out.row ./ref.row 
Tag precision: 0.929462429462
```

==========

## Model 4: wordLSTM-CRF
***Training/Testing:***  
Right token =  12887  All token =  13468  acc =  0.9568607068607069
Test: time: 1.05s, speed: 960.37st/s; acc: 0.9569, p: -1.0000, r: -1.0000, f: -1.0000

***Testing:***  
Right token =  12402  All token =  13468  acc =  0.9208494208494209
raw: time:1.03s, speed:981.10st/s; acc: 0.9208, p: -1.0000, r: -1.0000, f: -1.0000

***evaluate.py:***  
```
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordLSTM-CRF$ python2.7 ../wordCNN-CRF-charLSTM/evaluate.py ./test.bmes.out.row ../wordCNN-CRF-charLSTM/ref.row 
Tag precision: 0.920849420849
```

## Confirmation on row2col and col2row conversion error

```
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordLSTM-CRF$ perl ./ch2col.pl test.bmes.out.row > test.bmes.out.row.col
(NCRF++) ye@administrator-HP-Z2-Tower-G4-Workstation:~/tool/NCRFpp/trained-models/wordLSTM-CRF$ diff ./test.bmes.out ./test.bmes.out.row.col | wc
      0       0       0
```
It looks OK and no conversion error.
