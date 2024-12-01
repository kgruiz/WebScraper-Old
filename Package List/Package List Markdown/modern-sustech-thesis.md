![A preview of the modern-sustech-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/modern-sustech-
thesis-0.1.1-small.webp)

#  modern-sustech-thesis

0.1.1

åæ¹ç§æå¤§å­¦æ¬ç§æ¯ä¸è®¾è®¡ï¼è®ºæï¼æ¨¡æ¿. SUSTech Bachelor
Thesis Template.

[ Create project in app ](/app?template=modern-sustech-thesis&version=0.1.1)

åè½éæ±ãåä½å¼åè¯·ç§»æ­¥æ¨¡æ¿å¯¹åºç github ä»åºï¼ [ modern-
sustech-thesis ](https://github.com/Duolei-Wang/modern-sustech-thesis) .

##  typst.app ç½é¡µçä½¿ç¨è¯´æ (Use online)

ä½¿ç¨æ­¥éª¤ï¼

  * æå¼ typst.app ä»æ¨¡æ¿æ°å»ºé¡¹ç®ï¼start from templateï¼ 

  * è®ºææéå­ä½éè¦æå¨ä¸ä¼ å°ä½ çé¡¹ç®æä»¶åè¡¨. 

ç¹å»å·¦ä¾§ Explore Filesï¼ä¸ä¼ å­ä½æä»¶ï¼ä¸ä¼
åçå­ä½æä»¶å­å¨ä½ç½®æ²¡æç¹æ®è¦æ±ï¼typst æ¥æä¼ç§çå æ
¸ï¼å¯ä»¥å®æèªå¨æç´¢.

ç±äºæ ¼å¼æ¸²æå¼æçæ
¸å¿éè¦æå®å­ä½çåç§°ï¼æå¨æ¨¡æ¿æµè¯é¶æ®µä½¿ç¨äºè¥å¹²æ
åå­ä½ï¼è¿äºå­ä½å¯ä»¥å¨æç github ä»åº [ modern-sustech-thesis
](https://github.com/Duolei-Wang/modern-sustech-thesis) /template/fonts
éæ¾å°.

æ­¤å¤ï¼å¯ä»¥æå¨æ´æ¹å­ä½é ç½®ï¼å¨æ­£æåä½¿ç¨ â#setâ
å½ä»¤å³å¯ï¼ç±äºæ é¢ãæ­£æå­ä½ä¸åï¼æ­¤å¤å¤§è´è¯­æ³å¦ä¸ï¼

    
    
    // headings
      show heading.where(level: 1): it =>{
        set text(
          font: fonts.HeiTi,
          size: fonts.No3,
          weight: "regular",
        )
        align(center)[
          // #it
          #strong(it)
        ]
        text()[#v(0.5em)]
      }
    
      show heading.where(level: 2): it =>{
        set text(
          font: fonts.HeiTi,
          size: fonts.No4,
          weight: "regular"
          )
        it
        text()[#v(0.5em)]
      }
    
      show heading.where(level: 3): it =>{
        set text(
          font: fonts.HeiTi,
          size: fonts.No4-Small,
          weight: "regular"
          )
        it
        text()[#v(0.5em)] 
      }
    
      // paragraph
      set block(spacing: 1.5em)
      set par(
        justify: true,
        first-line-indent: 2em,
        leading: 1.5em)
    

headings è®¾å®äºåä¸ªç»è®°æ é¢çæ ¼å¼ï¼å ¶ä¸­ä¸çº§æ é¢éè¦å±
ä¸­å¯¹é½. âfont: fonts.HeiTiâ å³ä¸ºå­ä½çå
³é®åæ°ï¼åæ°çå¼æ¯å­ä½çåç§°ï¼å­ç¬¦ä¸²ï¼. typst
å°ä¼å¨ç¼è¯å¨å æ ¸ãé¡¹ç®ç®å½ä¸­æç´¢. typst å æ ¸èªå¸¦äº Source
Sansï¼é»ä½ï¼å Source
Serifï¼å®ä½ï¼ç³»åï¼ä½æ¯ä¸­æè®ºææéçä»¿å®ãæ¥·ä½ä»éèªå·±ä¸ä¼
.

æç §æ¯ä¸è®¾è®¡è¦æ±ï¼ä»¥ markdown æ ¼å¼ä¹¦åä½
çæ¯ä¸è®ºæï¼åªéè¦ï¼

  * å¨ configs/info éå¡«å ¥ä¸ªäººä¿¡æ¯. å¦ææ é¢ç¼è¯éè¯¯ï¼æ¯å¦æé»è®¤äºæä¸è¡æ é¢ï¼ï¼å¯ä»¥èªè¡æç §ç¼è¯å¨æç¤ºæç¸å ³ä»£ç æ³¨éæè ä¿®æ¹. å¤§ä½è¯­æ³åå å®¹ä¸åºæ¬çç¼ç¨è¯­è¨æ å·®å«. 

  * å¨ content.typ éä»¥ typst ç¹å®ç markdown è¯­æ³ä¹¦åä½ çè®ºæå å®¹. æå ³ typst ä¸­ markdown çè¯­æ³åæ´ï¼ä¸ªäººè®¤ä¸ºçä¸»è¦ååç½åå¦ä¸ï¼ 

    * æ é¢æ ä½¿ç¨ â=â èé â#âï¼â#â å¨ typst éæ¯å®å½ä»¤çå¼å¤´. 
    * æ°å­¦å ¬å¼ä¸éè¦åææ ï¼æ°å­¦ç¬¦å·å¯ä»¥æ¥é ï¼ [ https://typst.app/docs/reference/symbols/sym/ ](https://typst.app/docs/reference/symbols/sym/) . å¼å¾æ³¨æçæ¯ï¼typst ä¸­è¯­æ³ä¸éè¿å å çæ¹å¼å®ç°ï¼å¦ âä¸ç­å·â å¨ LaTex ä¸­æ¯ â\not{=}â. èå¨ typst ä¸­ï¼ä½¿ç¨ âeq.notâ çæ¹å¼æ¥è°ç¨ âeqâï¼ç­å·ï¼ç ânotâï¼ä¸ç­ï¼åä½å®ç°. 
    * å¼ç¨æ ç­¾éç¨ â@labelâ æ¥å®ç°ï¼èªå®ä¹æ ç­¾éè¿ ââ æ¥å®ç°. å¯¹äº BibTex æ ¼å¼çå¼ç¨ï¼refer.bibï¼ï¼ä¸ LaTex æè·¯ç¸åï¼ç¬¬ä¸ä¸ªç¼©ç¥è¯å°ä¼è¢«è®¤å®ä¸º label. 
  * èªå®ä¹æ ¼å¼çæè·¯. å¦æé¢å¤çéè¦èªå®ä¹æ ¼å¼çéæ±ï¼å¯ä»¥èªè¡å­¦ä¹ â#setâ, â#showâ å½ä»¤ï¼è¿å¯è½éè¦ä¸å®çç¼ç¨è¯­è¨ç¥è¯ï¼åç»­æä¼æ´æ°é¨åç®ç¥æç¨å¨æç github ä»åºéï¼ [ https://github.com/Duolei-Wang/lang-typst ](https://github.com/Duolei-Wang/lang-typst) . 

  * æ¬æ¨¡æ¿çç»æ 

    1. å å®¹ä¸»ä½. æç« ä¸»ä½å å®¹ä¹¦åå¨ content.typ æä»¶ä¸­ï¼éå½é¨åä¹¦åå¨ appendix.typ æä»¶ä¸­. 
    2. å å®¹é¡ºåº. æç« å å®¹é¡ºåºç± main.typ å³å®ï¼éè¿ typst ä¸­ â#includeâ æä»¤å®ç°äºé¡µé¢çæå ¥. 
    3. å å®¹æ ¼å¼. å å®¹æ ¼å¼ç± /sections/*.typ æ§å¶ï¼body.typ æ§å¶äºæç« ä¸»ä½çæ ¼å¼ï¼å ¶ä½ä¸åç§°ä¸è´. cover ä¸ºå°é¢ï¼commitment ä¸ºæ¿è¯ºä¹¦ï¼outline ä¸ºç®å½ï¼abstract ä¸ºæè¦. 

çæ¬å·ï¼0.1.1

  * Fixed the fatal bug. ä¿®æ­£äºåæ°ä¼ éå¤±è´¥é æçå°é¢ç­é¡µé¢æ æ³æ­£å¸¸æ´æ¹ä¿¡æ¯. 

TODO:

  * [ ] å¼ç¨æ ¼å¼ check. 

åæ¹ç§æå¤§å­¦æ¬ç§æ¯ä¸è®¾è®¡ï¼è®ºæï¼æ¨¡æ¿ï¼è®ºææ ¼å¼åç § [
åæ¹ç§æå¤§å­¦æ¬ç§çæ¯ä¸è®¾è®¡ï¼è®ºæï¼æ°åè§è
](https://tao.sustech.edu.cn/studentService/graduation_project.html) .
å¦æçæ¼æ¬è¯·è°
è§£ï¼æ¬æ¨¡æ¿ä¸ºæ¬äººæ¯ä¸ä¹åèªç¨ï¼å¦æä½¿ç¨ï¼ç¨³å®æ§è¯·èªè¡è´è´£.

  * æ¬æ¨¡æ¿ä¸»è¦åèäº [ iydon ](https://github.com/iydon) ä»åºçç $\LaTeX$ æ¨¡æ¿ [ sustechthesis ](https://github.com/iydon/sustechthesis) ï¼ç»æç»ç»åç §äº [ shuosc ](https://github.com/shuosc) ä»åºç [ SHU-Bachelor-Thesis-Typst ](https://github.com/shuosc/SHU-Bachelor-Thesis-Typst) æ¨¡æ¿ï¼å¾çç´ æä½¿ç¨äº [ GuTaoZi ](https://github.com/GuTaoZi) çåå å®¹ä»åºéçæ¨¡æ¿. 

  * æè°¢ [ SHU-Bachelor-Thesis ](https://github.com/shuosc/SHU-Bachelor-Thesis-Typst) çç»æç»ç»è®©æå­¦ä¹ å°äºå¾å¤ï¼ç»æçé¡µé¢ç»ç»æä¾äºçµæï¼ 

  * å¨æ¥æ¾å¾çç´ æçæ¶åï¼ä½¿ç¨äº GuTaoZi ä»åº [ SUSTech-thesis-typst ](https://github.com/GuTaoZi/SUSTech-thesis-typst) éçsvg ç´ æï¼ç¹æ­¤æè°¢. 

æ¬æ¨¡æ¿ãä»åºå¤äºä¸ªäººå®å© typst çéè¦ââå¨çº¿æ¨¡æ¿éä¸ä¼
è³ typst/packages
å®æ¹ä»åºæè½è¢«æç´¢å°ï¼å¦æå¼ååæ¥ç®¡ç­éæ±è¯·å¡å¿
èç³»æï¼

QQ: 782564506

mail: [ wangdl2020@mail.sustech.edu.cn
](mailto:wangdl2020@mail.sustech.edu.cn)

[ Create project in app ](/app?template=modern-sustech-thesis&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-sustech-thesis:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     MuTsingQAQ 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     April 29, 2024 
First released:

     April 17, 2024 
Archive size:

     50.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-sustech-thesis-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Duolei-Wang/sustech-thesis-typst)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  MuTsingQAQ  .  Report issues on  [ their
repository ](https://github.com/Duolei-Wang/sustech-thesis-typst) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  April 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/modern-sustech-thesis/0.1.0/) |  April 17, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

