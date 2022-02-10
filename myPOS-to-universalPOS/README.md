# myPOS to Universal-POS Conversion

Part of Speech (POS) tagging ကိုပဲ ကမ္ဘာပေါ်မှာ ရှိသမျှ လူတွေက သုံးနေကြတဲ့ ဘာသာစကားအားလုံးအတွက်ရည်ရွယ်ပြီး၊ တသမတ်တည်းဖြစ်ပြီးတော့ အသေးစိတ်သွားတာမျိုးမလုပ်ပဲ အလွယ်တကူနဲ့ common tagging လုပ်ရင်ကော ဆိုတဲ့ [Universal POS tags](https://universaldependencies.org/u/pos/) နဲ့ [Universal Dependencies](https://universaldependencies.org/#language-u) ဆိုတဲ့ concept နှစ်ခုက Natural Language Processing or Computational Linguistics လောကမှာ ရှိပါတယ်။ အဲဒီ concept နှစ်ခုကို မြန်မာစာအတွက်လည်း သုံးကြည့်ပြီး NLP downstream task experiment တချို့ကို ကျွန်တော်နဲ့ ဒေါက်တာတန်းကျောင်းသူ မဇာဇာလှိုင် (KMITL, Thailand) တို့ လုပ်ဖြစ်ကြပါတယ်။ အသေးစိတ်ကတော့ နောက်ပိုင်းထွက်လာမယ့် စာတမ်းတွေကို ဖတ်ကြည့်ကြပါ။  

ဒီ link အောက်မှာတော့ စိတ်ဝင်စားတဲ့ သူတွေ လေ့လာစမ်းသပ်မှုတွေ ပြုလုပ်နိုင်အောင်လို့ myPOS (version 3.0) ကို Universal POS (UPOS) အဖြစ် ပြောင်းပေးတဲ့ python script နဲ့ input file (i.e. myPOS tagged file) နဲ့ output file (i.e. UPOS tagged file) တွေကို upload လုပ်ပေးထားပါတယ်။  

FYI: Universal Dependency Tree ကိုလည်း ပြင်ဆင်နေပါတယ်။ စာတမ်းရေးပြီးသွားတဲ့အခါမှာ အားလုံးသုံးလို့ ရအောင် တင်ပေးသွားပါမယ်။  

y  
9 Feb 2022  

## Mapping Scheme

ကျွန်တော်တို့ရဲ့ myPOS ရဲ့ UPOS အကြား mapping table က အောက်ပါအတိုင်း ပါ။  

<p align="center">
<img src="https://github.com/ye-kyaw-thu/myPOS/blob/master/myPOS-to-universalPOS/mypos-to-upos-mapping.png" alt="Mapping scheme" width="1200"/>  
</p>  
<div align="center">
  Fig.1 Mapping scheme between POS tag-set of myPOS and Universal POS tags.  
</div> 

<br />

## Conversion Example

တင်ပေးထားတဲ့ python script ကိုသုံးပြီးတော့ myPOS tag-set ကနေ Universal POS tag-set ကို ပြောင်းတာကို ဥပမာအနေနဲ့ run ပြပါမယ်။ အရင်ဆုံး myPOS (version 3.0) ဖိုင်ထဲကို ကျပန်းမွှေလိုက်ပြီး အဲဒီအထဲကနေ စာကြောင်း ၁၀ကြောင်းကို ပဲ mypos-head.txt ဖိုင် အဖြစ် သိမ်းမယ်။  

```
$ shuf ./mypos-ver.3.0.txt | head  > ./mypos-head.txt
```

ကျပန်း ဆွဲထုတ်ယူထားတဲ့ myPOS tag-set နဲ့ tagged လုပ်ထားတဲ့ စာကြောင်း ၁၀ကြောင်းကို screen ပေါ်မှာ ရိုက်ထုတ်ကြည့်မယ်။  

```
$ head ./mypos-head.txt 
ဒါ/pron ဆို/v ည/n အတွက်/ppm ကျွန်တော်/pron ဘယ်/pron မှာ/ppm နေ/v ရ/part မလဲ/part ။/punc
ဘယ်လို/adv ဝတ်ဝတ်/v ရ/v ပါ/part တယ်/ppm ။/punc
ထမင်း/n ကို/ppm ဟင်းသီးဟင်းရွက်/n နှင့်/conj ငရုတ်သီး/n မှုန့်/n ထည့်/v ပြီး/part နယ်စား/v ရင်/conj အရသာရှိ/v တယ်/ppm ။/punc
အများ/n က/ppm လို့လားတောင့်တ/v ကြ/part တဲ့/part လူ့ဘောင်အဖွဲ့အစည်း/n တရပ်/n ဖန်တီး/v ဖို့/part အတွက်/ppm နိုင်ငံသား/n အားလုံး/adj ဝိုင်းဝန်း/adv ကြိုးစား/v ကြ/part ရ/part တယ်/ppm ။/punc
ကောင်း/adj ပါ/part ပြီ/ppm ဆရာ/n ၊/punc ကောင်း/adj သော/part ည/n ပါ/part ။/punc
ကဲ/int ၊/punc အတွင်း/n|ဘက်/n ခေါင်း/n သွား/v လျှော်/v ပါ/part ၊/punc ပြီး/v ရင်/conj လေမှုတ်/v ပေး/part မယ်/ppm ။/punc
မနုဿဗေဒ/n ဟူ/v သည်/ppm လူသား/n|မျိုးနွယ်စု/n စတင်/v|ဖြစ်ပေါ်/v|လာ/part|ပုံ/part ၊/punc သမိုင်း/n|ကြောင်း/part နှင့်/conj လူသား/n များ/part နှင့်/ppm ပတ်သက်/v ဆက်နွယ်/v သော/part လူမှု/n ကိစ္စ/n Humanity/fw ကို/ppm လေ့လာ/v|ခြင်း/part ဖြစ်/v သည်/ppm ။/punc
ဆရာ/n|ဦးမောင်မောင်/n ၊/punc ဌာနမှူး/n က/ppm လာ/v ခဲ့/part ပါ/part ဦး/part တဲ့/part ။/punc
သူ/pron တို့/part က/ppm ပွဲခ/n ယူ/v ပါ/part သလား/part ။/punc
တစ်/tn ည/n ကို/ppm ဒေါ်လာ/n ၁၀ဝ/num ပါ/part ။/punc
```

```mypos2upos.py``` script ကို run လိုက်ရင် အောက်ပါအတိုင်း UPOS tag-set အဖြစ် ပြောင်းပေးပါလိမ့်မယ်။  

```
$ python ./mypos2upos.py ./mypos-head.txt 
ဒါ/PRON ဆို/VERB ည/NOUN အတွက်/ADP ကျွန်တော်/PRON ဘယ်/PRON မှာ/ADP နေ/VERB ရ/PRT မလဲ/PRT ။/.
ဘယ်လို/ADV ဝတ်ဝတ်/VERB ရ/VERB ပါ/PRT တယ်/ADP ။/.
ထမင်း/NOUN ကို/ADP ဟင်းသီးဟင်းရွက်/NOUN နှင့်/CONJ ငရုတ်သီး/NOUN မှုန့်/NOUN ထည့်/VERB ပြီး/PRT နယ်စား/VERB ရင်/CONJ အရသာရှိ/VERB တယ်/ADP ။/.
အများ/NOUN က/ADP လို့လားတောင့်တ/VERB ကြ/PRT တဲ့/PRT လူ့ဘောင်အဖွဲ့အစည်း/NOUN တရပ်/NOUN ဖန်တီး/VERB ဖို့/PRT အတွက်/ADP နိုင်ငံသား/NOUN အားလုံး/ADJ ဝိုင်းဝန်း/ADV ကြိုးစား/VERB ကြ/PRT ရ/PRT တယ်/ADP ။/.
ကောင်း/ADJ ပါ/PRT ပြီ/ADP ဆရာ/NOUN ၊/. ကောင်း/ADJ သော/PRT ည/NOUN ပါ/PRT ။/.
ကဲ/X ၊/. အတွင်း/NOUN|ဘက်/NOUN ခေါင်း/NOUN သွား/VERB လျှော်/VERB ပါ/PRT ၊/. ပြီး/VERB ရင်/CONJ လေမှုတ်/VERB ပေး/PRT မယ်/ADP ။/.
မနုဿဗေဒ/NOUN ဟူ/VERB သည်/ADP လူသား/NOUN|မျိုးနွယ်စု/NOUN စတင်/VERB|ဖြစ်ပေါ်/VERB|လာ/PRT|ပုံ/PRT ၊/. သမိုင်း/NOUN|ကြောင်း/PRT နှင့်/CONJ လူသား/NOUN များ/PRT နှင့်/ADP ပတ်သက်/VERB ဆက်နွယ်/VERB သော/PRT လူမှု/NOUN ကိစ္စ/NOUN Humanity/X ကို/ADP လေ့လာ/VERB|ခြင်း/PRT ဖြစ်/VERB သည်/ADP ။/.
ဆရာ/NOUN|ဦးမောင်မောင်/NOUN ၊/. ဌာနမှူး/NOUN က/ADP လာ/VERB ခဲ့/PRT ပါ/PRT ဦး/PRT တဲ့/PRT ။/.
သူ/PRON တို့/PRT က/ADP ပွဲခ/NOUN ယူ/VERB ပါ/PRT သလား/PRT ။/.
တစ်/NUM ည/NOUN ကို/ADP ဒေါ်လာ/NOUN ၁၀ဝ/NOUNum ပါ/PRT ။/.
```

တကယ်လို့ ထွက်လာတဲ့ output ကို ဖိုင်ထဲမှာ သိမ်းချင်တယ် ဆိုရင်တော့ ထုံးစံအတိုင်း ">" နဲ့ ဖိုင်နာမည်တစ်ခုပေးပြီး redirection လုပ်ပေးလိုက်ယုံပါပဲ။  

```
$ python ./mypos2upos.py ./mypos-head.txt > mypos-head-upos.txt
$ cat ./mypos-head-upos.txt 
ဒါ/PRON ဆို/VERB ည/NOUN အတွက်/ADP ကျွန်တော်/PRON ဘယ်/PRON မှာ/ADP နေ/VERB ရ/PRT မလဲ/PRT ။/.
ဘယ်လို/ADV ဝတ်ဝတ်/VERB ရ/VERB ပါ/PRT တယ်/ADP ။/.
ထမင်း/NOUN ကို/ADP ဟင်းသီးဟင်းရွက်/NOUN နှင့်/CONJ ငရုတ်သီး/NOUN မှုန့်/NOUN ထည့်/VERB ပြီး/PRT နယ်စား/VERB ရင်/CONJ အရသာရှိ/VERB တယ်/ADP ။/.
အများ/NOUN က/ADP လို့လားတောင့်တ/VERB ကြ/PRT တဲ့/PRT လူ့ဘောင်အဖွဲ့အစည်း/NOUN တရပ်/NOUN ဖန်တီး/VERB ဖို့/PRT အတွက်/ADP နိုင်ငံသား/NOUN အားလုံး/ADJ ဝိုင်းဝန်း/ADV ကြိုးစား/VERB ကြ/PRT ရ/PRT တယ်/ADP ။/.
ကောင်း/ADJ ပါ/PRT ပြီ/ADP ဆရာ/NOUN ၊/. ကောင်း/ADJ သော/PRT ည/NOUN ပါ/PRT ။/.
ကဲ/X ၊/. အတွင်း/NOUN|ဘက်/NOUN ခေါင်း/NOUN သွား/VERB လျှော်/VERB ပါ/PRT ၊/. ပြီး/VERB ရင်/CONJ လေမှုတ်/VERB ပေး/PRT မယ်/ADP ။/.
မနုဿဗေဒ/NOUN ဟူ/VERB သည်/ADP လူသား/NOUN|မျိုးနွယ်စု/NOUN စတင်/VERB|ဖြစ်ပေါ်/VERB|လာ/PRT|ပုံ/PRT ၊/. သမိုင်း/NOUN|ကြောင်း/PRT နှင့်/CONJ လူသား/NOUN များ/PRT နှင့်/ADP ပတ်သက်/VERB ဆက်နွယ်/VERB သော/PRT လူမှု/NOUN ကိစ္စ/NOUN Humanity/X ကို/ADP လေ့လာ/VERB|ခြင်း/PRT ဖြစ်/VERB သည်/ADP ။/.
ဆရာ/NOUN|ဦးမောင်မောင်/NOUN ၊/. ဌာနမှူး/NOUN က/ADP လာ/VERB ခဲ့/PRT ပါ/PRT ဦး/PRT တဲ့/PRT ။/.
သူ/PRON တို့/PRT က/ADP ပွဲခ/NOUN ယူ/VERB ပါ/PRT သလား/PRT ။/.
တစ်/NUM ည/NOUN ကို/ADP ဒေါ်လာ/NOUN ၁၀ဝ/NOUNum ပါ/PRT ။/.
```

## Citation

Currently, please cite as:  

myPOS to Universal POS Conversion, Ye Kyaw Thu and Zar Zar Hlaing, 10 Feb 2022, GitHub Link: https://github.com/ye-kyaw-thu/myWord  

## Reference

- [https://universaldependencies.org/u/pos/](https://universaldependencies.org/u/pos/)  
- [https://universaldependencies.org/#language-u](https://universaldependencies.org/#language-u) 
- [UPOS Paper](https://static.googleusercontent.com/media/research.google.com/en//pubs/archive/37072.pdf)
- [Introduction to Universal Dependencies Concept](https://universaldependencies.org/introduction.html)
- [shuf command](https://shapeshed.com/unix-shuf/)
