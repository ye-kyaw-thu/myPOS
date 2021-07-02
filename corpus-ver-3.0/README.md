# myPOS Version 3.0

### Introduction in English (for ver. 3.0)
myPOS Corpus (Myanmar Part-of-Speech Corpus) for Myanmar language NLP Research and Developments.

To the best of our knowledge, this corpus will be the biggest publicly available POS tagged dataset for Burmese or Myanmar language. We used 15 POS tags same as  version 1.0 and 2.0. Please read the main [README file](https://github.com/ye-kyaw-thu/myPOS/blob/master/README.md) (under myPOS/ folder) for the detail explanation of word segmentation and POS tags definition of the corpus. In this version 3.0, we extended the myPOS corpus of 11K sentences to 43,196 sentences by adding about 20K Myanmar sentences from our developing parallel corpora (i.e. Myanmar-Chinese and Myanmar-Korean) and 12K Myanmar sentences from ASEAN MT corpus of NECTEC, Thailand (See Table.1). All new raw sentences are manually segmented and POS tagging was done with myPOS RDR POS tagger. After that, we checked and fixed the POS tagging errors manually for the whole extended corpus. The manual POS tagging was mainly done by Ms. Zar Zar Hlaing (one of my Ph.D. students who is pursuing her Ph.D. degree at the KMITL, Bangkok, Thailand) and my colleague Dr. Myat Myo Nwe Wai (MIIT, Mandalay, Myanmar). I take care of this whole myPOS project. Moreover, Dr.Thepchai Supnithi (LST, NECTEC, Thailand) and Prof. Ponrudee Netisopakul (KMITL, Bangkok, Thailand) supporting this project in several ways.  

Not only the POS tagged corpus version 3.0 but also POS tagging models (trained with CRF, HMM, RDR and NCRF++) are shared in this repository. Please refer textfile notes under each model folder. I do hope releasing this myPOS version 3.0 is one of the key milestones of our Myanmar NLP R&D.  

Ye Kyaw Thu,  
Visiting Professor,  
LST, NECTEC, Thailand  
Date: 2 July 2021  

### မိတ်ဆက် (Introduction in Myanmar Language)
myPOS version 3.0 က မှာ သုံးခဲ့တဲ့ tag-set တွေက ရှေ့က ဗားရှင်းတွေ ဖြစ်တဲ့ version 1.0, 2.0 နဲ့ အတူတူပါပဲ။ POS tag စုစုပေါင်း 15 ခုပါဝင်ပါတယ်။ ဒီနေရာမှာ tag တွေကို အတိုကောက်တွေနဲ့တကွ တွဲဖော်ပြရရင် abb (Abbreviation), adj (Adjective), adv (Adverb), conj (Conjunction), fw (Foreign Word), int (Interjection), n (Noun), num (Number), part (Particle), ppm (Post-positional Marker), pronc (Pronoun), punc (Punctuation), sb (Symbol), tn (Text Number) နဲ့ v (Verb) တို့ဖြစ်ကြပါတယ်။ တကယ်က ဒီနှစ်ထဲမှာ myPOS version 2.0 အနေနဲ့ပဲ release လုပ်နိုင်လိမ့်မယ်လို ထင်ထားခဲ့တာပါ။ ဒါပေမဲ့ ဝမ်းသာစရာကောင်းတာက... myPOS version 2.0 မှာ open-test data အဖြစ် သုံးခဲ့တဲ့ ASEAN-MT corpus ထဲက travel-tour ဒိုမိန်းဒေတာ စာကြောင်းရေ တစ်သောင်းနှစ်ထောင်ကျော်ကိုပါ ရှဲလုပ်ဖို့ လက်ရှိ ကျွန်တော် အလုပ်လုပ်နေတဲ့ Lab ရဲ့ Leader ဒေါက်တာ Thepchai က ခွင့်ပြုလို့ myPOS version 3.0 အနေနဲ့ release လုပ်ဖို့ ဖြစ်လာခဲ့ရပါတယ်။ NECTEC မှာ အလုပ်လုပ်နေစဉ် မှာ မြန်မာစာ NLP R&D အတွက် contribution/collaboration တစ်ခု ဖြစ်သွားလို့ အတိုင်းထက်မသိ ဝမ်းသာရပါတယ်။  

ဒီ myPOS version 3.0 အတွက် corpus တစ်ခုလုံးနီးပါး manual POS tagging အလုပ်ကို အဓိက အပင်ပန်းခံ ကြိုးစားအလုပ်လုပ်ခဲ့သူက ကျွန်တော်ရဲ့ ဒေါက်တာတန်း ကျောင်းသူတစ်ယောက်ဖြစ်တဲ့ ဇာဇာလှိုင် (KMITL, Bangkok, Thailand) ပါ။ ဒီအလုပ်က သူ့ရဲ့ ဒေါက်တာတန်း သုတေသနရဲ့ အစိတ်အပိုင်း တစ်ခုလည်း ဖြစ်ပါတယ်။ myPOS version 2.0 corpus ကို သုံးပြီးတော့ experiment လုပ်ခဲ့တဲ့ မော်ဒယ် ဖိုလ်ဒါတွေကိုလည်း repository ရဲ့ ဒီ link: [https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/models](https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/models) မှာ တင်ပေးထားတာမို့ သုတေသန ထုံးစံအတိုင်း reproduce လုပ်ကြည့်ဖို့အတွက်လည်း အဆင်ပြေပါလိမ့်မယ်။  

Corpus ထဲမှာ ပါတဲ့ မြန်မာစာ စာကြောင်းအရေအတွက်၊ ဒိုမိန်းနဲ့ ပတ်သက်ပြီး အသေးစိတ်ကလည်း iSAI-NLP 2020 conference မှာ ဖတ်ခဲ့တဲ့ myPOS version 2.0 ရဲ့ စာတမ်းထဲမှာ ပြည့်စုံစွာ ဖော်ပြပေးထားပါတယ်။ ဒီနေရာမှာလည်း အသုံးပြုမယ့် user/developer/researcher တွေအတွက် အဆင်ပြေအောင် ထပ်တိုးထားတဲ့စာကြောင်းတွေနဲ့ ပတ်သက်ပြီးတော့ information အနေနဲ့ ချပြရရင် machine translation သုတေသနအလုပ်တွေအတွက်ရည်ရွယ်ပြီး develop လုပ်နေဆဲဖြစ်တဲ့ မြန်မာ-တရုပ် (my-zh) parallel corpus ထဲကနေ ဗမာစာကြောင်း တစ်သောင်း၊ အလားတူပဲ မြန်မာ-ကိုရီးယား (my-ko) parallel corpus ထဲကနေ ဗမာစာကြောင်း တစ်သောင်းတစ်ထောင် နဲ့ ASEAN MT corpus ထဲကနေ ဗမာစာကြောင်း တစ်သောင်းနှစ်ထောင်ကျော် စုစုပေါင်း သုံးသောင်းကျော်ကို တိုးလိုက်နိုင်တာဖြစ်ပါတယ်။ အတိအကျ စာကြောင်းရေအရေအတွက် နဲ့ စာလုံး အရေအတွက်ကတော့ အောက်ပါဇယားကို မှီငြမ်းပါ။  


<div align="center">
  Table.1 Corpus information of myPOS (version 3.0)
</div>  

| Unit | myPOS (ver. 1.0) | Ext-1: my-zh | Ext-2: my-ko | Ext-3: ASEAN-MT my | myPOS (ver. 3.0) |
| :------------- | :-------------: | :----------: | :-----------: | :-----------: |:-----------: |
| Sentences | 11,000 | 10,000 | 10,052| 12,144 | 43,196 |
| Words  | 239,598 | 103,909 | 106,864 | 114,134 | 564,505 |
| Average Words/Sentence | 21.78 | 10.17 | 10.64 | 9.40 | 13.07 |


ဒေတာပြင်ဆင်တဲ့ အပိုင်းမှာ နောက်ထပ် contribution လုပ်ခဲ့တဲ့ သူကတော့ MIIT မန္တလေးက ဆရာမ ဒေါ်မြတ်မျိုးနွယ်ဝေပါ။ သူကတော့ ကျွန်တော်တို့ အတူတူပြင်ဆင်နေကြတဲ့ မြန်မာ-ကိုရီးယား (my-ko) corpus ကနေ မြန်မာစာကြောင်း တစ်သောင်းကျော်ကို manual POS tagging ကူလုပ်ပေးခဲ့ပါတယ်။   

myPOS version 3.0 ရဲ့ စာကြောင်းရေတိုင်းကို စစ်ဆေးဖို့ အချိန်မယူနိုင်ခဲ့ပေမဲ့ random check လုပ်တာတွေကို ကျွန်တော်ကိုယ်တိုင်လည်း လုပ်နိုင်သလောက် လုပ်ခဲ့ပါတယ်။ သို့သော် ဒေတာပြင်ဆင်တဲ့နေရာမှာ 100% ပြီးပြည့်စုံတာ မရှိလို့ tagging အမှားအယွင်းတွေကို တွေ့ရင်လည်း လက်ရှိသုံးနေတဲ့ အီးမေးလ်လိပ်စာ ဖြစ်တဲ့ yktnlp\[at\]gmail.com ကို ပို့ပြီး အကြောင်းကြားပေးပါလို့ request လုပ်ချင်ပါတယ်။   

P.S. \[at\] နေရာမှာ @ သင်္ကေတကို အစားထိုးပေးပါ။  

myPOS version 3.0 ရဲ့ corpus ကိုသုံးပြီးတော့ experiment လုပ်ခဲ့တဲ့ မော်ဒယ်တွေကတော့ စုစုပေါင်း လေးခုပါ။ အဲဒီ မော်ဒယ်တွေကတော့ 3-gram HMM, CRF, RDR နဲ့ NCRF++ တို့ ဖြစ်ပြီးတော့ မော်ဒယ် တစ်ခုချင်းစီကို open-test ဒေတာသုံး POS tagging လုပ်ကြည့်ပြီးတော့ hypothesis ဖိုင်ကို evaluation လုပ်ထားတဲ့ ရလဒ်တွေကတော့ အောက်ပါအတိုင်းပါ။ လက်ရှိ run ခဲ့တဲ့ experiment တွေကနေ ရလဒ်အကောင်းဆုံး ပေးနိုင်တာကတော့ RDR မော်ဒယ်လို့ ရှာဖွေတွေ့ရှိပါတယ်။ နောက်ပိုင်း အချိန်ရတဲ့အခါမှာ NCRF++ မော်ဒယ်ကို parameter tuning တချို့ ဆက်လုပ်ပြီး အကောင်းဆုံးမော်ဒယ်ကို တင်ပေးနိုင်အောင် ကြိုးစားပါမယ်။  

  
<div align="center">
<table style="margin-left: auto; margin-right: auto;">
  <caption>Table.2 POS tagging accuracies (F1-score) of myPOS (version 3.0) </caption>    
  <tr>
    <th>Methods</th>
    <th>open-test data</th> 
  </tr>
  <tr>
    <td>CRFs</td>
    <td> 95.39% </td>
  </tr>
  <tr>
    <td>HMM</td>
    <td> 94.74% </td>
  </tr>
  <tr>
    <td>RDR</td>
    <td> <b>96.53%</b> </td>

  </tr>
    <tr>
    <td>NCRF++, wordCNN-CRF-charLSTM </td>
    <td> 90.67 </td>

  </tr>
  <tr>
    <td>NCRF++, wordLSTM-charCNN</td>
    <td> 93.24 </td>

  </tr>
  <tr>
    <td>NCRF++, wordLSTM-CRF-charCNN</td>
    <td> 92.95 </td>

  </tr>
  <tr>
    <td>NCRF++, wordLSTM-CRF</td>
    <td> 92.08 </td>

  </tr>
</table>
</div>


## NCRF++ for myPOS  

After I read the paper of NCRF++ (Yang Jie and Zhang Yue, ACL 2018) approach, I do wish to apply NCRF++ for POS tagging of Myanmar language with the extended corpus of myPOS. This open-source neural sequence labeling toolkit provides building custom model architectures through a configuration file. It supports flexible feature utilization, including handcrafted features and automatically extracted features. In short, it has a Conditional Random Fields (CRFs) architecture with configurable neural representation layers.

The following figure shows an example NCRF++ architecture for parsing a Myanmar sentence "မင်းကျောင်းမသွားဘူးလား" (Don't you go to school?). Here, green, red, yellow and blue circles represent character embeddings, word embeddings, character sequence representations and word sequence representations, respectively. The gray circles represent the embeddings of sparse features.  

<p align="center">
<img src="https://github.com/ye-kyaw-thu/myPOS/blob/master/corpus-ver-3.0/etc/fig_iSAI-NLP2020-paper_updated.png" />  
</p>  
<div align="center">
  Fig. Character sequence, word sequence and inference layers of NCRF++  
  
  (Figure inspired from reference [NCRF++](https://github.com/jiesutd/NCRFpp))  
  
  
</div>   

## Lincense
Creative Commons Attribution-NonCommercial-Share Alike 4.0 International (CC BY-NC-SA 4.0) License  
[Details Info of License](https://creativecommons.org/licenses/by-nc-sa/4.0/)

## Corpus File Information

The link of the myPOS corpus (ver. 3.0) is as follow:  
(myPOS corpus ver. 3.0 ကအောက်ပါ link or path မှာ ရှိပါတယ်။)  
[https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/corpus](https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/corpus)  

The myPOS corpus version 3.0: [mypos-ver.3.0.txt](https://raw.githubusercontent.com/ye-kyaw-thu/myPOS/master/corpus-ver-3.0/corpus/mypos-ver.3.0.txt)  
Shuffled version of the corpus: [mypos-ver.3.0.shuf.txt](https://raw.githubusercontent.com/ye-kyaw-thu/myPOS/master/corpus-ver-3.0/corpus/mypos-ver.3.0.shuf.txt)

Training corpus for building models: [train.mypos-ver3.txt](https://raw.githubusercontent.com/ye-kyaw-thu/myPOS/master/corpus-ver-3.0/corpus/train.mypos-ver3.txt)  
Open-test data for evaluation: [otest.1k.txt](https://raw.githubusercontent.com/ye-kyaw-thu/myPOS/master/corpus-ver-3.0/corpus/otest.1k.txt)  

Data preparation log file: [mypos2-final.data.preparation.txt](https://github.com/ye-kyaw-thu/myPOS/blob/master/corpus-ver-3.0/corpus/mypos2-final.data.preparation.txt)  

File size information is as follows:  
```
$ wc ./mypos-ver.3.0.txt 
  43196  537233 9581544 ./mypos-ver.3.0.txt
$ wc ./train.mypos-ver3.txt 
  42196  524408 9351786 ./train.mypos-ver3.txt
$ wc otest.1k.txt 
  1000  12825 229758 otest.1k.txt
```

`mypos-ver.3.0.txt` file contains 43,196 sentences and 537,233 words (including compound word) in total.  
`train.mypos-ver3.txt` file contains 42,196 sentences and 524,408 words (including compound word) in total.  
`otest.1k.txt` file contains 1,000 sentences and 12,825 words in total.  

### Format of the myPOS Tagged Corpus  

The corpus format is `word/POS-tag<SPACE>word/POS-tag` and the delimiter pipe "|" is used for compound words `word/POS-tag|word/POS-tag`. Refer following first 10 sentences of the corpus file "mypos-ver.3.0.txt":  

```
(base) ye@administrator-HP-Z2-Tower-G4-Workstation:~/4github/myPOS2/corpus-ver-2.0/git/myPOS/corpus-ver-3.0/corpus$ head ./mypos-ver.3.0.txt 
ဒီ/adj ဆေး/n က/ppm ၁၀၀/num ရာခိုင်နှုန်း/n ဆေးဘက်ဝင်/adj အပင်/n များ/part မှ/ppm ဖော်စပ်/v ထား/part တာ/part ဖြစ်/v တယ်/ppm ။/punc
အသစ်/n ဝယ်/v ထား/part တဲ့/part ဆွယ်တာ/n က/ppm အသီး/n ထ/v နေ/part ပါ/part ပေါ့/part ။/punc
မ/part ကျန်းမာ/v လျှင်/conj နတ်/n|ဆရာ/n ထံ/ppm မေးမြန်း/v ၍/conj သက်ဆိုင်ရာ/n နတ်/n တို့/part အား/ppm ပူဇော်ပသ/v ရ/part သည်/ppm ။/punc
ပေဟိုင်/n|ဥယျာဉ်/n ။/punc
နဝမ/adj အိပ်မက်/n ကောသလ/n|မင်း/n|အိပ်မက်/n ၉/num နက်ရှိုင်း/adj ကျယ်ဝန်း/adj သော/part ရေကန်/n ကြီး/adj တစ်/tn ခု/part တွင်/ppm သတ္တဝါ/n တို့/part ဆင်း/v ၍/conj ရေသောက်/v ကြ/part ၏/ppm ။/punc
အပြင်ပန်း/n ကြည့်/v ရင်/conj ခက်/adj သလို/part ထင်/v ရ/part ပေမယ့်/conj တကယ့်/adj လက်တွေ့/n အခြေအနေ/n က/ppm တော့/part အဲဒီ/pron လို/ppm မ/part ဟုတ်/v ပါ/part ဘူး/part ။/punc
8/fw bit/fw ပုံရိပ်/n တစ်/tn ခု/part သည်/ppm 256/fw color/fw သို့မဟုတ်/conj gray/fw scale/fw များ/part ကို/ppm အထောက်အကူ/n ပြု/v သည်/ppm ။/punc
ကိုရီးယား/n ဝတ်စုံ/n မှာ/ppm ပန်း/n ဒီဇိုင်း/n နဲ့/conj အဝါရောင်/n က/ppm လိုက်ဖက်/v လိမ့်/part မယ်/part ထင်/v တယ်/ppm ။/punc
သို့နှင့်/conj မဂ္ဂဇင်း/n မှ/ppm တစ်ဆင့်/adv သတင်းစာ/n ကို/ppm ပါ/part တိုးချဲ့/v လိုက်/part သောအခါ/conj တွင်/ppm ဘက်ပတစ်/n|ကျောင်း/n သို့/ppm မ/part ပြန်/v တော့/part ဘဲ/part ထို/adj မဂ္ဂဇင်း/n ၊/punc သတင်းစာ/n နှစ်/tn ခု/part စလုံး/part တွင်/ppm ပင်/part တည်းဖြတ်/v သည့်/part ဘက်/n မှ/ppm ဆက်လက်/adv လုပ်ကိုင်/v လေ/part တော့/part သည်/ppm ။/punc
တစ်/tn ကျပ်သား/n ။/punc
```

In the example 10 sentences given above, compound words are as follows:  

- နတ်/n|ဆရာ/n
  - The word "နတ်ဆရာ" means "spiritualist" in English. It is a combination of two words "နတ်" and "ဆရာ" and "နတ်" means "god or deity" and "ဆရာ" means "teacher" in English.  
 
- ပေဟိုင်/n|ဥယျာဉ်/n
  - The word "ပေဟိုင်ဥယျာဉ်" (Beihai Park) is the name of a garden located in the northwestern part of the Imperial City, Beijing. It is a combination of two words "ပေဟိုင်" (Beihai) and "ဥယျာဉ်" (park or garden).
  
- ကောသလ/n|မင်း/n|အိပ်မက်/n
  - The word "ကောသလမင်းအိပ်မက်" ([Dreams of King Kosala](https://nofearmanju.weebly.com/king-kosala-and-his-16-dreams.html)) is a compound word and it is a combination of "ကောသလ" ([Kosala](https://en.wikipedia.org/wiki/Pasenadi)), "မင်း" (king) and "အိပ်မက်" (dream). 
  
- ဘက်ပတစ်/n|ကျောင်း/n
  - "ဘက်ပတစ်ကျောင်း" means "Baptist church" in English. It is a Myanmar compound word formed by combination of "ဘက်ပတစ်" (Baptist) and "ကျောင်း" (church or school).  
### Statistics of POS Distribution

<p align="center">
<img src="https://github.com/ye-kyaw-thu/myPOS/blob/master/corpus-ver-3.0/etc/POS-tag-distribution-of-myPOS-ver3.png" alt="drawing" width="800"/>  
</p>  
<div align="center">
  Fig. POS tag distribution of myPOS corpus version 3.0  
</div>   

## Models of myPOS Version 3.0

The 3gHMM, CRF, RDR and NCRF++ models are under the following link:  
[https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/models](https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/models)  

Note: NCRF++ မော်ဒယ်က file size ကြီးလို့ လက်ရှိ တင်ဖို့ ကြိုးစားနေဆဲ.... 

## iSAI-NLP 2020 Experiment (used myPOS Version 2.0)

All the experiments that we prepared for iSAI-NLP 2020 conference paper entitled "Myanmar POS resource extension effects on automatic tagging methods" are stored under the following link:  
(iSAI-NLP 2020 conference စာတမ်းအတွက် ပြင်ဆင်ခဲ့တဲ့ experiment တွေကို အောက်ပါ link မှာ upload လုပ်ပေးထားပါတယ်)  
[https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/iSAI-NLP2020-paper-experiment](https://github.com/ye-kyaw-thu/myPOS/tree/master/corpus-ver-3.0/iSAI-NLP2020-paper-experiment)  

## Contributors  

For myPOS version 2.0 and 3.0:  
- Zar Zar Hlaing (King Mongkut's Institute of Technology Ladkrabang: KMITL, Bangkok, Thailand)  
- Ye Kyaw Thu (National Electronics and Computer Technology Center: NECTEC, Pathumthani, Thailand)  
- Myat Myo Nwe Wai (Myanmar Institute of Information Technology: MIIT, Mandalay, Myanmar)  
- Thepchai Supnithi (National Electronics and Computer Technology Center: NECTEC, Pathumthani, Thailand)  
- Ponrudee Netisopakul (King Mongkut's Institute of Technology Ladkrabang: KMITL, Bangkok, Thailand)

## Citation

If you want to use myPOS models or POS-tagged data in your research and we'd appreciate if you use the following two references:

Khin War War Htike, Ye Kyaw Thu, Zuping Zhang, Win Pa Pa, Yoshinori Sagisaka and Naoto Iwahashi, "Comparison of Six POS Tagging Methods on 10K Sentences Myanmar Language (Burmese) POS Tagged Corpus", at 18th International Conference on Computational Linguistics and Intelligent Text Processing (CICLing 2017), April 17~23, 2017, Budapest, Hungary. [[Draft paper]](https://github.com/ye-kyaw-thu/myPOS/blob/master/CICLING2017/myPOS-CICLing2017-paper.pdf), [[Poster]](https://github.com/ye-kyaw-thu/myPOS/blob/master/CICLING2017/10K-POS-tagging-CICLing2017.pdf)

Zar Zar Hlaing, Ye Kyaw Thu, Myat Myo Nwe Wai, Thepchai Supnithi, Ponrudee Netisopakul, "Myanmar POS resource extension effects on automatic tagging methods", In Proceedings of the 15th International Joint Symposium on Artificial Intelligence and Natural Language Processing (iSAI-NLP 2020), Nov 18 to Nov 20, 2020, Bangkok, Thailand, pp. 189-194. [[Paper]](https://ieeexplore.ieee.org/stamp/stamp.jsp?tp=&arnumber=9376835), [[Slide]](https://github.com/ye-kyaw-thu/myPOS/blob/master/corpus-ver-3.0/etc/iSAI-NLP-AIoT2020-0157_PPT_FILE.pdf)  

## References
### Tool
- [CRF++ Toolkit (CRF++-0.58.tar.gz)](https://drive.google.com/drive/u/0/folders/0B4y35FiV1wh7fngteFhHQUN2Y1B5eUJBNHZUemJYQV9VWlBUb3JlX0xBdWVZTWtSbVBneU0)
- [RDR Toolkit (RDRPOSTagger)](https://github.com/datquocnguyen/RDRPOSTagger)
- [3gHMM Toolkit (jita-0.3.3 GitHub Repository)](https://github.com/danieldk/jitar/releases)  
- [NCRF++ GitHub Repository](https://github.com/jiesutd/NCRFpp)  

### Paper
- Prachya, Boonkwan and Thepchai, Supnithi, "Technical Report for The Network-based ASEAN Language Translation Public Service Project", Online Materials of Network-based ASEAN Languages Translation Public Service for Members, NECTEC, 2013.
- Yang Jie and Zhang Yue, "NCRF++: An Open-source Neural Sequence Labeling Toolkit", In Proceedings of the 56th Annual Meeting of the Association for Computational Linguistics (ACL 2018), System Demonstrations, 2018, pp. 74-79.

## Quick Start
### Using Pre-trained Models

First, download or clone the myPOS repository. It contains pre-trained models for each version.  
(အရင်ဆုံး train လုပ်ပေးထားတဲ့ model ဖိုင်တွေကို github site ကနေ Download Button ကနေ ဒေါင်းလုဒ် လုပ်ယူတာဖြစ်ဖြစ်၊ git command က ကိုယ့်စက်ထဲမှာ install လုပ်ထားပြီးသားဆိုရင် git clone လုပ်ယူတာ ဖြစ်ဖြစ် လုပ်ပါ။)  
```
$git clone https://github.com/ye-kyaw-thu/myPOS
```

We assumed you already installed jitar, CRF++, RDR and NCRF++ toolkits on your computer...  
(လိုအပ်တဲ့ toolkit တွေဖြစ်တဲ့ jitar, CRF++, RDR နဲ့ NCRF++ တွေကိုတော့ ကိုယ်အသုံးပြုမယ့် စက်ထဲမှာ installation ကြိုလုပ်ထားရပါလိမ့်မယ်။ တခြား လိုအပ်တဲ့ library, dependencies တွေလည်း ပြင်ဆင်ထားရပါလိမ့်မယ်။)

Tagging with 3gHMM model:  
```
cat ./otest.nopipe.word | ../jitar-0.3.3-bin/jitar-0.3.3/bin/jitar-tag ./t1/train1.nopipe.word.model > ./otest1.nopipe.word.TAGGED
```

Tagging with CRF model:  

command syntax: crf_test -m \<model_file\> \<test_files\>  

```
   $crf_test -m ./t1/train1.nopipe.crf-model ./otest.nopipe.col > ./otest1.nopipe.col.result
```

Tagging with RDR model:  
```
python2.7 RDRPOSTagger.py tag ./t1/train1.nopipe.RDR /t1/train1.nopipe.DICT ./t1/otest.nopipe.word
```

Tagging with NCRF++ model:  

Don't forget to prepare `decode.config` file in advance.  
(decode.config ဖိုင်ကို အရင်ပြင်ထားရပါလိမ့်မယ်)  
```
python ./main.py --config ./trained-models/wordLSTM-CRF/decode.config
```

### Evaluation
Although some modeling tools provide the accuracy or F1-score, we will use `evaluate.py` for comparison among different models.  

command syntax: python2.7 ./evaluate.py <hypothesis> <reference>  
```
python2.7 ./evaluate.py ./test.bmes.out.row ./ref.row  
```


## To Do

- updating compound words
- rechecking manual tagging errors
- corpus extension and accuracy improvements
