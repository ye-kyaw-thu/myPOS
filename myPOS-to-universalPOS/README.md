# myPOS to Universal-POS Conversion

Part of Speech (POS) tagging ကိုပဲ ကမ္ဘာပေါ်မှာ ရှိသမျှ လူတွေက သုံးနေကြတဲ့ ဘာသာစကားအားလုံးအတွက်ရည်ရွယ်ပြီး၊ တသမတ်တည်းဖြစ်ပြီးတော့ အလွယ်တကူနဲ့ tagging လုပ်ရင်ကော ဆိုတဲ့ [Universal POS tags](https://universaldependencies.org/u/pos/) နဲ့ [Universal Dependencies](https://universaldependencies.org/#language-u) ဆိုတဲ့ concept နှစ်ခုက NLP or Computational Linguist လောကမှာ ရှိပါတယ်။ အဲဒီ concept နှစ်ခုကို မြန်မာစာအတွက်လည်း သုံးကြည့်ပြီး NLP downstream task experiment တချို့ကို ကျွန်တော်နဲ့ ဒေါက်တာတန်းကျောင်းသူ မဇာဇာလှိုင် (KMITL, Thailand) တို့ လုပ်ဖြစ်ကြပါတယ်။ အသေးစိတ်ကတော့ နောက်ပိုင်းထွက်လာမယ့် စာတမ်းတွေကို ဖတ်ကြည့်ကြပါ။  

ဒီ link အောက်မှာတော့ စိတ်ဝင်စားတဲ့ သူတွေ လေ့လာစမ်းသပ်မှုတွေ ပြုလုပ်နိုင်အောင်လို့ myPOS (version 3.0) ကို Universal POS (UPOS) အဖြစ် ပြောင်းပေးတဲ့ python script နဲ့ input file (i.e. myPOS tagged file) နဲ့ output file (i.e. UPOS tagged file) တွေကို upload လုပ်ပေးထားပါတယ်။  

FYI: Universal Dependency Tree ကိုလည်း ပြင်ဆင်နေပါတယ်။ စာတမ်းရေးပြီးသွားတဲ့အခါမှာ အားလုံးသုံးလို့ ရအောင် တင်ပေးသွားပါမယ်။  

## Mapping Scheme

ကျွန်တော်တို့ရဲ့ myPOS ရဲ့ UPOS အကြား mapping table က အောက်ပါအတိုင်း ပါ။  

<p align="center">
<img src="https://github.com/ye-kyaw-thu/myPOS/blob/master/myPOS-to-universalPOS/mapping-scheme-between-myPOS-and-UPOS.png" alt="Mapping scheme" width="1200"/>  
</p>  
<div align="center">
  Fig.1 Mapping scheme between POS tag-set of myPOS and Universal POS tags.  
</div> 

<br />
