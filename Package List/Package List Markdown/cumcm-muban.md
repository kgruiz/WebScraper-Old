![A preview of the cumcm-muban Typst
template.](https://packages.typst.org/preview/thumbnails/cumcm-
muban-0.3.0-small.webp)

#  cumcm-muban

0.3.0

ä¸ºé«æç¤¾æ¯å ¨å½å¤§å­¦çæ°å­¦å»ºæ¨¡ç«èµè®¾è®¡ç Typst æ¨¡æ¿

[ Create project in app ](/app?template=cumcm-muban&version=0.3.0)

cumcm-muban æ¯ä¸ä¸ªä¸ºé«æç¤¾æ¯å ¨å½å¤§å­¦çæ°å­¦å»ºæ¨¡ç«èµè®¾è®¡ç
Typst æ¨¡æ¿ã

##  ä½¿ç¨æ¹æ³

ä½ å¯ä»¥å¨ Typst
ç½é¡µåºç¨ä¸­ä½¿ç¨æ­¤æ¨¡æ¿ï¼åªéå¨ä»ªè¡¨æ¿ä¸ç¹å» âStart from
templateâï¼ç¶åæç´¢ cumcm-mubanã

å¦å¤ï¼ä½ ä¹å¯ä»¥ä½¿ç¨ CLI å½ä»¤æ¥å¯å¨è¿ä¸ªé¡¹ç®ã

    
    
    typst init @preview/cumcm-muban
    

Typst å°ä¼åå»ºä¸ä¸ªæ°çç®å½ï¼å ¶ä¸­å å«äºææä½
å¼å§æéè¦çæä»¶ã

##  é ç½®

æ­¤æ¨¡æ¿å¯¼åºäº cumcm å½æ°ï¼å å«ä»¥ä¸å½ååæ°ï¼

  * title: è®ºæçæ é¢ 
  * problem-chosen: éæ©çé¢ç® 
  * team-number: å¢éçç¼å· 
  * college-name: é«æ ¡çåç§° 
  * member: å¢éæåçå§å 
  * advisor: æå¯¼æå¸çå§å 
  * date: ç«èµå¼å§çæ¶é´ 
  * cover-display: æ¯å¦æ¾ç¤ºå°é¢ä»¥åç¼å·é¡µ 
  * abstract: æè¦å å®¹å è£¹å¨ ` [] ` ä¸­ 
  * keywords: å ³é®å­å å®¹å è£¹å¨ ` () ` ä¸­ï¼ä½¿ç¨éå·åé 

è¯¥å½æ°è¿æ¥åä¸ä¸ªåæ° ` body ` ï¼ç¨äºä¼ å ¥è®ºæçæ­£æå
å®¹ã

è¯¥æ¨¡æ¿å°å¨æ¾ç¤ºè§åä¸­ä½¿ç¨ ` cumcm `
å½æ°è¿è¡ç¤ºä¾è°ç¨æ¥åå§åæ¨çé¡¹ç®ãå¦ææ¨æ³è¦å°ç°æé¡¹ç®æ´æ¹ä¸ºä½¿ç¨æ­¤æ¨¡æ¿ï¼æ¨å¯ä»¥å¨æä»¶é¡¶é¨æ·»å
ä¸ä¸ªç±»ä¼¼äºä»¥ä¸çæ¾ç¤ºè§åï¼

    
    
    #import "@preview/cumcm-muban:0.3.0": *
    #show: thmrules
    
    #show: cumcm.with(
      title: "å¨å½å¤§å­¦çæ°å­¦å»ºæ¨¡ç«èµ Typst æ¨¡æ¿",
      problem-chosen: "A",
      team-number: "1234",
      college-name: " ",
      member: (
        A: " ",
        B: " ",
        C: " ",
      ),
      advisor: " ",
      date: datetime(year: 2023, month: 9, day: 8),
    
      cover-display: true,
    
      abstract: [],
      keywords: ("Typst", "æ¨¡æ¿", "æ°å­¦å»ºæ¨¡"),
    )
    
    // æ­£æåå®¹
    
    // åèæç®
    #bib(bibliography("refs.bib"))
    
    // éå½
    #appendix("éå½æ é¢", "éå½åå®¹")
    
    

##  æ¨¡æ¿é¢è§

æ­£æ1  |  æ­£æ2  |  éå½   
---|---|---  
![Content-1](https://raw.githubusercontent.com/a-kkiri/CUMCM-typst-template/main/template/figures/p4.jpg?raw=true) |  ![Content-2](https://raw.githubusercontent.com/a-kkiri/CUMCM-typst-template/main/template/figures/p6.jpg?raw=true) |  ![Appendix](https://raw.githubusercontent.com/a-kkiri/CUMCM-typst-template/main/template/figures/p10.jpg?raw=true)  
  
##  â ï¸æ³¨æ

> æ¬æ¨¡æ¿ä½¿ç¨å°çå­ä½æ
> ä¸­æå®ä½ï¼SimSunï¼ï¼ä¸­æé»ä½ï¼SimHeiï¼ï¼ä¸­ææ¥·ä½ï¼SimKaiï¼ï¼Times
> New Romansãè¿äºå­ä½ä¸º Windows ç³»ç»å ç½®ï¼ä¸è¿å¯¹äº
> WebAPP/Linux/MacOS ä½¿ç¨è è¯·å°ä»åºèªè¡è·å

##  æ´æ¹è®°å½

2024-08-20

  * æ´æ¹éå½é¡µä»£ç æ¡æ ·å¼ 
  * ä¿®å¤æ é¢æ æ³ä¿®æ¹çé®é¢ 
  * å¢å å½æ° ` appendix ` ç¨äºæ¾ç¤ºéå½å å®¹ 
  * å°ç²ä½ç ` stroke ` åæ°è®¾ç½®ä¸º 0.02857em 

[ Create project in app ](/app?template=cumcm-muban&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/cumcm-muban:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Akkiri ](https://github.com/a-kkiri)
License:

     Apache-2.0 
Current version:

     0.3.0 
Last updated:

     August 22, 2024 
First released:

     March 18, 2024 
Archive size:

     235 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cumcm-muban-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/a-kkiri/CUMCM-typst-template)
Discipline  s  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Akkiri  .  Report issues on  [ their
repository ](https://github.com/a-kkiri/CUMCM-typst-template) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  August 22, 2024   
[ 0.2.0 ](https://typst.app/universe/package/cumcm-muban/0.2.0/) |  April 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cumcm-muban/0.1.0/) |  March 18, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

