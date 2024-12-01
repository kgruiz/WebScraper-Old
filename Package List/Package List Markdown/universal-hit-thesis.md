![A preview of the universal-hit-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/universal-hit-
thesis-0.2.1-small.webp)

#  universal-hit-thesis

0.2.1

åå°æ»¨å·¥ä¸å¤§å­¦å­¦ä½è®ºææ¨¡æ¿ | Universal Harbin Institute of Technology Thesis 

[ Create project in app ](/app?template=universal-hit-thesis&version=0.2.1)

éç¨äºåå°æ»¨å·¥ä¸å¤§å­¦å­¦ä½è®ºæç Typst æ¨¡æ¿

![hit-thesis-typst-cover](https://vonbrank-images.oss-cn-
hangzhou.aliyuncs.com/20240426-HIT-Thesis-Typst/hit-thesis-typst-development-
cover-01.jpg)

> [!WARNING] æ¬æ¨¡æ¿æ­£å¤äºç§¯æå¼åé¶æ®µï¼å­å¨ä¸äºæ
> ¼å¼é®é¢ï¼éåå°é² Typst ç¹æ§
>
> æ¬æ¨¡æ¿æ¯æ°é´æ¨¡æ¿ï¼ **å¯è½ä¸è¢«å­¦æ ¡è®¤å¯**
> ï¼æ­£å¼ä½¿ç¨è¿ç¨ä¸­è¯·åå¥½éæ¶å°å å®¹è¿ç§»è³ Word æ LaTeX
> çåå¤

##  å ³äºæ¬é¡¹ç®

[ Typst ](https://typst.app/) æ¯ä½¿ç¨ Rust è¯­è¨å¼åçå
¨æ°ææ¡£æçç³»ç»ï¼ææä»¥ Markdown
çº§å«çç®æ´è¯­æ³åç¼è¯éåº¦å®ç° LaTeX
çº§å«çæçè½åï¼å³éè¿ç¼åéµå¾ª Typst
è¯­æ³è§åçææ¬ææ¡£ãæ§è¡ç¼è¯å½ä»¤ï¼æ¥å¯çæç®æ æ ¼å¼ç
PDF ææ¡£ã

**HIT Thesis Typst** æ¯ä¸å¥ç®åæç¨çåå°æ»¨å·¥ä¸å¤§å­¦å­¦ä½è®ºæ
Typst æ¨¡æ¿ï¼å [ hithesis ](https://github.com/hithesis/hithesis)
å¯åï¼è®¡ååæ¬ä¸æ ¡ä¸åºæ¬ç§ãç¡å£«ãåå£«çå­¦ä½è®ºææ
¼å¼ã

**é¢è§ææ**

  * æ¬ç§éç¨ï¼ [ universal-bachelor.pdf ](https://github.com/chosertech/HIT-Thesis-Typst/blob/build/universal-bachelor.pdf)

##  ä½¿ç¨

###  æ¬å°ç¼è¾ â ï¼æ¨èï¼

è¿ç§æ¹å¼éåå¤§å¤æ°ç¨æ·ã

é¦å å®è£ Typstï¼æ¨å¯ä»¥å¨ Typst Github ä»åºç [ Release é¡µé¢
](https://github.com/typst/typst/releases/) ä¸è½½ææ°çå®è£ å
ç´æ¥å®è£ ï¼å¹¶å° ` typst ` å¯æ§è¡ç¨åºæ·»å å° ` PATH `
ç¯å¢åéï¼å¦ææ¨ä½¿ç¨ Scoop å ç®¡çå¨ï¼åå¯ä»¥ç´æ¥éè¿ `
scoop install typst ` å½ä»¤å®è£ ã

å®è£ å¥½ Typst
ä¹åï¼æ¨åªéè¦éæ©ä¸ä¸ªæ¨åæ¬¢çç®å½ï¼å¹¶å¨æ­¤ç®å½ä¸æ§è¡ä»¥ä¸å½ä»¤ï¼

    
    
    typst init @preview/universal-hit-thesis:0.2.1
    

Typst å°ä¼åå»ºä¸ä¸ªåä¸º ` universal-hit-thesis ` çæä»¶å¤¹ï¼è¿å
¥è¯¥ç®å½åï¼æ¨å¯ä»¥ç´æ¥ä¿®æ¹ç®å½ä¸ç ` universal-bachelor.typ `
ï¼ç¶åæ§è¡ä»¥ä¸å½ä»¤è¿è¡ç¼è¯çæ ` .pdf ` ææ¡£ï¼

    
    
    typst compile universal-bachelor.typ
    

æè ä½¿ç¨ä»¥ä¸å½ä»¤è¿è¡å®æ¶é¢è§ï¼

    
    
    typst watch universal-bachelor.typ
    

å½æ¨è¦å®æ¶é¢è§æ¶ï¼æä»¬æ´æ¨èä½¿ç¨ Visual Studio Code
è¿è¡ç¼è¾ï¼é å [ Tinymist Typst
](https://marketplace.visualstudio.com/items?itemName=nvarner.typst-lsp) , [
Typst Preview
](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview)
ç­æä»¶å¯ä»¥å¤§å¹ æåæ¨çç¼è¾ä½éªã

###  æ¬å°ç¼è¾ â ¡

è¿ç§æ¹æ³éå Typst å¼åè ã

é¦å ä½¿ç¨ ` git clone ` å½ä»¤ clone æ¬é¡¹ç®ï¼æè ç´æ¥å¨ Release
é¡µé¢ä¸è½½ç¹å®çæ¬çæºç ãå¨ ` templates/ `
ç®å½ä¸éæ©æ¨éè¦çæ¨¡æ¿ï¼ç´æ¥ä¿®æ¹æå¤å¶ä¸ä»½ï¼å¨æ
¹ç®å½è¿è¡ä»¥ä¸å½ä»¤è¿è¡ç¼è¯ï¼

    
    
    typst compile ./templates/.typ --root ./
    

æè ä½¿ç¨å¦ä¸å½ä»¤è¿è¡å®æ¶é¢è§ï¼

    
    
    typst watch ./templates/.typ --root ./
    

> [!TIP]
> æ¬æ¨¡æ¿æ­£å¤äºç§¯æå¼åé¶æ®µï¼æ´æ°è¾ä¸ºé¢ç¹ï¼è½ç¶å·²ç»ä¸ä¼
> è³ Typst Universeï¼ä½æ¯æ¨ä¾ç¶å¯ä»¥åå© Typst local packages
> æ¥å®ç°å¨ Typst Universe
> åæ­¥æ¬æ¨¡æ¿çææ°çæ¬åï¼å¨æ¬å°ä½éªæ¬æ¨¡æ¿çææ°çæ¬ï¼å
> ·ä½åæ³ä¸ºï¼
>
>   * å¨ Release é¡µé¢ä¸è½½å¯¹åºçæ¬çæºç åç¼©å ï¼å¹¶å°å
> ¶è§£åå° ` {data-dir}/typst/packages/local/universal-hit-thesis/{version}
> ` ï¼ ` {data-dir} ` å¨ä¸åæä½ç³»ç»ä¸çå¼ä¸ºï¼
>
>     * ` $XDG_DATA_HOME ` or ` ~/.local/share ` on Linux
>     * ` ~/Library/Application ` Support on macOS
>     * ` %LOCALAPPDATA% ` on Windows
>
> ` {version} ` çå¼ä¸º ` typst.toml ` ä¸­ ` version ` é¡¹çå¼.
>
> è§£åå®æå ` typst.toml ` æä»¶åºè¯¥åºç°å¨ ` {data-
> dir}/typst/packages/local/universal-hit-thesis/{version} ` ç®å½ä¸.
>
>   * æ¥çæ¨éè¦å¨æ¨çè®ºæä¸­å° ` #import "@preview/universal-hit-
> thesis:0.2.1" ` ä¿®æ¹ä¸º ` #import "@local/universal-hit-thesis:{version}"
> ` ï¼å³å¯æ´æ°æ¨¡æ¿.
>
>

###  å¨çº¿ç¼è¾

æ¬æ¨¡æ¿å·²ä¸ä¼ Typst Universeï¼æ¨å¯ä»¥ä½¿ç¨ Typst çå®æ¹ Web App
è¿è¡ç¼è¾ã

å ·ä½æ¥è¯´ï¼å¨ Typst Web App ç»å½åï¼ç¹å» ` Start from template `
ï¼å¨å¼¹åºççªå£ä¸­éæ© ` universal-hit-thesis `
ï¼å³å¯ä»æ¨¡æ¿åå»ºé¡¹ç®ã

![hit-thesis-web-app-create](https://vonbrank-images.oss-cn-
hangzhou.aliyuncs.com/20240426-HIT-Thesis-Typst/hit-thesis-web-app-create.jpg)

![hit-thesis-web-app-demo](https://vonbrank-images.oss-cn-
hangzhou.aliyuncs.com/20240426-HIT-Thesis-Typst/hit-thesis-web-app-demo.jpg)

> [!NOTE]
>
> Typst Web App
> çæçæ¸²æå¨æµè§å¨æ¬å°æ§è¡ï¼æä»¥å®æ¶é¢è§ä½éªå
> ä¹ä¸å¨æ¬å°ç¼è¾æ å¼ã
>
> é»è®¤æ åµä¸ï¼å½æ¨å¨ Web App
> ä½¿ç¨æ¨¡æ¿åå»ºè®ºæé¡¹ç®åï¼å¯è½å¨é¡¹ç®ä¸­çå°å¤§ééå¯¹ä¸­æææ¬çæ¼åéè¯¯è­¦åï¼æ¨å¯ä»¥éè¿å¨
> ` #cover() ` å½æ°è°ç¨ç¹åæå ¥è¯­å¥ ` #set text(lang: "zh") `
> æ¥æ¶é¤è¿äºè­¦åï¼è¯¥é®é¢å°å¨æªæ¥ççæ¬ä¸­å¾å°ä¿®å¤.
>
> æ­¤å¤æ¨å¯è½å·²ç»æ³¨æå°ï¼Web App
> ä¸­çæ¨¡æ¿å­ä½æ¾ç¤ºä¸é¢æå­å¨å·®è·ï¼è¿æ¯å ä¸º Web App
> é»è®¤ä¸æä¾ ` SimSun ` , ` Times New Roman `
> ç­ä¸­ææçå¸¸ç¨å­ä½ãä¸ºäºè§£å³è¿ä¸ªé®é¢ï¼æ¨å¯ä»¥å¨æç´¢å¼ææç´¢ä»¥ä¸å­ä½æä»¶ï¼
>
>   * ` TimesNewRoman.ttf ` ï¼å æ¬ ` Bold ` , ` Italic ` ` Bold-Italic `
> ç­çæ¬ï¼
>   * ` SimSun.ttf `
>   * ` SimHei.ttf `
>   * ` Kaiti.ttf `
>   * ` Consolas.ttf `
>   * ` Courier New.ttf `
>

>
> å¹¶å°è¿äºæä»¶æå¨ä¸ä¼ è³ Web App é¡¹ç®æ
> ¹ç®å½ä¸­ï¼æä¸ºäºç®å½æ´æ´ï¼å¯ä»¥åå»ºä¸ä¸ª ` fonts `
> æä»¶å¤¹å¹¶å°å­ä½ç½®äºå ¶ä¸­ï¼Typst Web App å°èªå¨å
> è½½è¿äºå­ä½ï¼å¹¶æ­£ç¡®æ¸²æå°é¢è§çªå£ä¸­.
>
> ç±äºæ¯æ¬¡å¨ Typst Web App
> ä¸­æå¼é¡¹ç®æ¶é½éè¦éæ°ä¸è½½å­ä½ï¼èä¸­æå­ä½ä½ç§¯æ®éè¾å¤§ï¼å
> è½½æ¶é´è¾é¿ï¼å æ­¤æä»¬æ´æ¨è **æ¬å°ç¼è¾** ã

* * *

> [!NOTE] æ³¨æå°ï¼å®æ¹æä¾çæ¬ç§æ¯ä¸è®¾è®¡ Microsoft Word
> è®ºææ¨¡æ¿ ` æ¬ç§æ¯ä¸è®ºæï¼è®¾è®¡ï¼ä¹¦åèä¾ï¼çå·¥ç±»ï¼.doc
> ` å¨ä¸æ ¡ä¸åºæ¯éç¨çï¼æå³çæ¬ Typst
> æ¨¡æ¿çæ¬ç§è®ºæé¨åçè®ºä¸ä¹æ¯å¨ä¸æ ¡ä¸åºéç¨çï¼å
> æ­¤æä»¬æä¾éç¨äºåæ
> ¡åºçæ¬ç§æ¯ä¸è®ºææ¨¡æ¿æ¨¡åå¯¼åºï¼å³ä»¥ä¸åç§å¯¼å
> ¥æ¨¡åçæ¹å¼ææç¸åï¼
>  
>  
>     #import "@preview/universal-hit-thesis:0.2.1": harbin-bachelor
>     #import harbin-bachelor: * // åå°æ»¨æ ¡åºæ¬ç§
>  
>  
>  
>     #import "@preview/universal-hit-thesis:0.2.1": weihai-bachelor
>     #import weihai-bachelor: * // å¨æµ·æ ¡åºæ¬ç§
>  
>  
>  
>     #import "@preview/universal-hit-thesis:0.2.1": shenzhen-bachelor
>     #import shenzhen-bachelor: * // æ·±å³æ ¡åºæ¬ç§
>  
>  
>  
>     #import "@preview/universal-hit-thesis:0.2.1": universal-bachelor
>     #import universal-bachelor: * // ä¸æ ¡ä¸åºæ¬ç§éç¨
>  

##  ä¾èµ

###  å¯éä¾èµ

è¥è¦ä¹¦ååå¼ç¨ä¼ªä»£ç ï¼æ¨å¯ä»¥ä½¿ç¨ ` algorithm-figure `
ï¼ä¸ºæ­¤ï¼æ¨éè¦å¯¼å ¥ ` algorithmic ` æ ` lovelace ` å ã

    
    
    #import "@preview/algorithmic:0.1.0"
    #import algorithmic: algorithm
    
    #import "@preview/lovelace:0.2.0": *
    

ä½¿ç¨æ¹å¼è¯¦è§ [ æ¨¡æ¿ ](https://github.com/chosertech/HIT-Thesis-
Typst/blob/main/templates/universal-bachelor.typ) ä¸­ç ` ä¼ªä»£ç  ` è

##  å·²ç¥é®é¢

###  æç

å°½ç®¡æ¬ Typst æ¨¡æ¿åé¨åå­ä½ãå­å·ç­è®¾ç½®åä¸å Word
æ¨¡æ¿ä¸è´ï¼ä½æ®µè½æçè§è§ä¸ä»ä¸ Word
æ¨¡æ¿æä¸äºå·®å«ï¼è¿ä¸å­ç¬¦é´è·ãè¡è·ãæ®µè½é´è·æä¸å®èç¼æçæåæå
³.

###  åèæç®

  * å­¦æ ¡å¯¹åèæç®æ ¼å¼çè¦æ±ä¸æ åç ` GB/T 7714-2015 numeric ` æ ¼å¼å­å¨å·®å¼ï¼æä»¬å·²ä¿®æ¹ç¸å ³ CSL æä»¶å¹¶å½¢æ ` gb-t-7714-2015-numeric-hit.csl ` ä»¥ä¿®å¤ä½è åå­å¤§å°åç­é®é¢ï¼ä½ä»æä»¥ä¸å·²ç¥ç¹æ§å°æªæ¯æï¼ 
    * ä» çº¯çµå­èµæºï¼å¦ç½é¡µãè½¯ä»¶ï¼æ¾ç¤ºå¼ç¨æ¥æå URL 
    * æ DOI 
  * å¼ç¨å ¶ä»å­¦æ ¡çå­¦ä½è®ºææ¶åèæç®é¡µå¯¹åºæ¡ç®å­å¨æ ¼å¼é®é¢ï¼å ä¸º Typst å°ä¸æ¯æ CSL æä»¶ä¸­ç ` school ` ç­å­æ®µ. 
  * ç®åçæ¬ç Typst å¯¹ CSL æ¯æç¨åº¦æè°ï¼æ´å¤é®é¢å¯åè [ SEU-Typst-Template åèæç®å·²ç¥é®é¢ ](https://github.com/csimide/SEU-Typst-Template/?tab=readme-ov-file#%E5%8F%82%E8%80%83%E6%96%87%E7%8C%AE) . 

##  è´è°¢

  * æè°¢ [ HUST-typst-template ](https://github.com/werifu/HUST-typst-template) ä¸ºæ¬æ¨¡æ¿æ©æçæ¬çæ¡æ¶æä¾æè·¯. 
  * æè°¢ [ @csimide ](https://gist.github.com/csimide) å [ @OrangeX4 ](https://github.com/OrangeX4) æä¾çä¸­è±åè¯­åèæç®å®ç°. 
  * æè°¢ [ modern-nju-thesis ](https://github.com/nju-lug/modern-nju-thesis) ä¸ºæ¬æ¨¡æ¿çä¸äºç¹æ§æä¾å®ç°æè·¯. 

[ Create project in app ](/app?template=universal-hit-thesis&version=0.2.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/universal-hit-thesis:0.2.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     CHOSER Tech 
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     June 19, 2024 
First released:

     May 17, 2024 
Archive size:

     23.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/universal-hit-thesis-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/chosertech/HIT-Thesis-Typst)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  CHOSER Tech  .  Report issues on  [ their
repository ](https://github.com/chosertech/HIT-Thesis-Typst) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  June 19, 2024   
[ 0.2.0 ](https://typst.app/universe/package/universal-hit-thesis/0.2.0/) |  May 17, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

