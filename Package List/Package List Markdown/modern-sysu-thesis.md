![A preview of the modern-sysu-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/modern-sysu-
thesis-0.3.0-small.webp)

#  modern-sysu-thesis

0.3.0

ä¸­å±±å¤§å­¦å­¦ä½è®ºæ Typst æ¨¡æ¿ï¼A Typst template for SYSU thesis

[ Create project in app ](/app?template=modern-sysu-thesis&version=0.3.0)

[ ![GitLab ä»åº](https://gitlab.com/sysu-gitlab/thesis-template/better-
thesis/-/badges/release.svg?style=flat-square&value_width=100)
](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/releases) [
![GitHub stars](https://img.shields.io/github/stars/sysu/better-
thesis.svg?style=social&label=Star&maxAge=2592000)
](https://github.com/sysu/better-thesis)

**[ ç¹å»æ­¤å¤æ³¨å typst.app å¹¶åå»ºä½ çè®ºæå·¥ç¨
](https://typst.app/app?template=modern-sysu-thesis&version=0.1.1) **

æ¬ç§çæ¨¡æ¿å·²ç»ç¬¦åå­¦ä½è®ºææ ¼å¼è¦æ±ï¼ [ #6
](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/issues/6)
ï¼ï¼æ¬¢è¿åå­¦/æ ¡åä»¬ [ è´¡ç®ä»£ç  ](https://gitlab.com/sysu-
gitlab/thesis-template/better-thesis/-/merge_requests) /åé¦é®é¢ï¼ [
GitLab issue ](https://gitlab.com/sysu-gitlab/thesis-template/better-
thesis/-/issues) / [ é®ä»¶ ](mailto:contact-project+sysu-gitlab-thesis-
template-better-thesis-57823416-issue-@incoming.gitlab.com) ï¼ï¼

æ¨¡æ¿äº¤æµ QQ ç¾¤ï¼ [ 797942860 ](https://jq.qq.com/?_wv=1027&k=m58va1kd)

##  åèè§è

  * æ¬ç§çè®ºææ¨¡æ¿åè [ ä¸­å±±å¤§å­¦æ¬ç§çæ¯ä¸è®ºæï¼è®¾è®¡ï¼åä½ä¸å°å¶è§è 2020å¹´å ](https://spa.sysu.edu.cn/zh-hans/article/1744)
  * ç ç©¶çè®ºææ¨¡æ¿åè [ ä¸­å±±å¤§å­¦ç ç©¶çå­¦ä½è®ºææ ¼å¼è¦æ± ](https://graduate.sysu.edu.cn/sites/graduate.prod.dpcms4.sysu.edu.cn/files/2019-04/%E4%B8%AD%E5%B1%B1%E5%A4%A7%E5%AD%A6%E7%A0%94%E7%A9%B6%E7%94%9F%E5%AD%A6%E4%BD%8D%E8%AE%BA%E6%96%87%E6%A0%BC%E5%BC%8F%E8%A6%81%E6%B1%82.pdf)

##  ä½¿ç¨æ¹æ³

###  typst.app

ç»è¿è¿ä¸æç´§å¼ çè¿­ä»£éæï¼æ¬æ¨¡æ¿å·²ç» [ åå¸å¨typst-
app.universe ](https://typst.app/universe/package/modern-sysu-thesis) ä¸ï¼ [
ç¹å»æ­¤å¤ç´æ¥åå»ºä½ çè®ºæå·¥ç¨
](https://typst.app/app?template=modern-sysu-thesis&version=0.2.0)
ï¼å¹¶ç´æ¥å¼å§ç¼åä½ çè®ºæï¼

###  Windows ç¨æ·

  1. [ ä¸è½½æ¬ä»åº ](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/archive/main/better-thesis-main.zip) ï¼æè ä½¿ç¨ ` git clone https://gitlab.com/sysu-gitlab/thesis-template/better-thesis ` å½ä»¤å éæ¬ä»åºã 
  2. å³é® ` install_typst.ps1 ` æä»¶ï¼éæ©âç¨ Powershell è¿è¡âï¼ç­å¾ Typst å®è£ å®æã 
  3. æ ¹æ® [ Typst ææ¡£ ](https://typst.app/docs/) ï¼åè [ é¡¹ç®ç»æ ](https://github.com/typst/packages/raw/main/packages/preview/modern-sysu-thesis/0.3.0/#%E9%A1%B9%E7%9B%AE%E7%BB%93%E6%9E%84) ä¸­çè¯´æï¼æç §ä½ çéè¦ä¿®æ¹è®ºæçåä¸ªé¨åã 
  4. åå»è¿è¡ ` compile.bat ` ï¼å³å¯çæ ` thesis.pdf ` æä»¶ã 

###  Linux/macOS ç¨æ·

  1. [ ä¸è½½æ¬ä»åº ](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/archive/main/better-thesis-main.zip) ï¼æè ä½¿ç¨ ` git clone https://gitlab.com/sysu-gitlab/thesis-template/better-thesis ` å½ä»¤å éæ¬ä»åºã 
  2. ä½¿ç¨å½ä»¤è¡å®è£ Rust å·¥å ·é¾ä»¥å Typstï¼ 

    
    
    # å®è£ Rust ç¯å¢å¹¶æ¿æ´»ï¼ä¹åå®è£è¿åä¸éè¦æ§è¡ä¸é¢è¿ä¸¤è¡
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
    
    # å®è£ Typst CLI
    cargo install typst-cli
    
    # è®¿é®ç¼æ¢çè¯ï¼æ§è¡ä»¥ä¸å½ä»¤è®¾ç½®æ¸åéåæºï¼å¹¶ä»éåç«å®è£
    cat << EOF > $HOME/.cargo/config
    [source.crates-io]
    replace-with = "tuna"
    
    [source.tuna]
    registry = "https://mirrors.tuna.tsinghua.edu.cn/git/crates.io-index.git"
    EOF
    cargo install typst-cli
    

  3. æ ¹æ® [ Typst ææ¡£ ](https://typst.app/docs/) ï¼åè [ é¡¹ç®ç»æ ](https://github.com/typst/packages/raw/main/packages/preview/modern-sysu-thesis/0.3.0/#%E9%A1%B9%E7%9B%AE%E7%BB%93%E6%9E%84) ä¸­çè¯´æï¼æç §ä½ çéè¦ä¿®æ¹è®ºæçåä¸ªé¨åã 
  4. æ§è¡ ` make ` å½ä»¤ï¼å³å¯çæ ` thesis.pdf ` æä»¶ã 

##  é¡¹ç®ç»æ

è¯¦è§ ` template\thesis.typ `

##  FAQ

###  ä¸ºä»ä¹ XXX çåè½ä¸è½ç¨/ä¸ç¬¦åé¢æï¼

  1. å åè [ Typst ä¸­ææ¯æç¸å ³é®é¢ ](https://typst-doc-cn.github.io/docs/chinese/) ï¼ä»¥å [ Typst å®æ¹ææ¡£ ](https://typst.app/docs/) ä¸ [ tpyst.app/universe ä»åº ](https://typst.app/universe) ï¼äºè§£ç¸å ³é®é¢è¿å±æè§£å³æ¹æ¡ 
  2. å¦æå¨ä»¥ä¸èµæä¸­æ¾ä¸å°å ³èèµæï¼å¯ä»¥åèæ¯å¦å¨ç [ issue åè¡¨ ](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/issues) ä¸­è½æ¾å°ç¸å ³é®é¢ä¸è¿å±ã 
  3. å¦æä¾ç¶æ²¡æçº¿ç´¢ï¼æ¬¢è¿åé¦é®é¢ï¼ [ GitLab issue ](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis/-/issues) / [ é®ä»¶ ](mailto:contact-project+sysu-gitlab-thesis-template-better-thesis-57823416-issue-@incoming.gitlab.com) ï¼ 

###  ä¸ºä»ä¹å­¦æ ¡å­¦ä½è®ºæå·²ç»æäº [ LaTeX æ¨¡æ¿
](https://github.com/SYSU-SCC/sysu-thesis) ï¼è¿æ Typst æ¨¡æ¿ï¼

  * åè¿° LaTeX æ¨¡æ¿ç®åä» æè®¡ç®æºå­¦é¢å®æ¹æå®ä½¿ç¨ï¼å ¶ä»å­¦é¢å¹¶æ²¡æç»ä¸æå® 
  * èèå° LaTeX å¯¹äºå¤§é¨åéè®¡ç®æº/çå·¥ç§çå­¦çå ¥é¨ææ¬æ¯è¾é«ï¼å æ­¤æå¿ è¦æä¾ä¸ç§æ´å ç®æ´æ¸ æ°å¹¶ä¸æ¹ä¾¿çè®ºææ¨¡æ¿ï¼å æ¬ï¼ 
    * å¼ç®±å³ç¨ï¼ 
      * å¦ [ åææè¿° ](https://github.com/typst/packages/raw/main/packages/preview/modern-sysu-thesis/0.3.0/#typstapp) ï¼æ¬æ¨¡æ¿æä¾äºå¨çº¿ç´æ¥ç¼è¾/ä¿å­/å¤ä»½æ¹æ¡ 
      * æ¬å°ä½¿ç¨æ¨¡æ¿æ¶ï¼æ¨¡æ¿ç»ä»¶å¯ä»¥ç®åå°éè¿ ` typst ` å½ä»¤èªå¨ç®¡çå®è£ 
    * è¯­æ³ç®æ´ï¼typst æ¯ä¸ markdown ç±»ä¼¼çæ è®°æ§è¯­è¨ï¼å¯ä»¥éè¿æ è®°çæ¹å¼æ¥è½»æ¾æ§å¶è¯­æ³ï¼å¦ ` = æ é¢ ` ã ` *ç²ä½* ` ã ` _æä½_ ` ` @å¼ç¨ ` ã æ°å­¦å ¬å¼ ` $E = m c^2$ ` ï¼ 

###  ä¸ºä»ä¹æä¸¤ä»½ Typst æ¨¡æ¿ï¼ [ sysu-thesis-typst
](https://github.com/howardlau1999/sysu-thesis-typst) å modern-sysu-
thesisï¼ï¼

åè æ¯å¨åè çåºç¡ä¸ï¼åæ¶åè [ modern-nju-thesis
](https://typst.app/universe/package/modern-nju-thesis) ï¼æ¹é åéé äº
[ typst.app/universe ](https://typst.app/universe) ãä»¥åï¼æ¾å° [ @sysu
](https://github.com/sysu) ç»ç»ä¸æé«äºæå åº¦ã

##  è´è°¢

  * æè°¢ [ sysu-thesis-typst ](https://github.com/howardlau1999/sysu-thesis-typst) æä¾äºä¸­å±±å¤§å­¦çé¡µé¢æ ·å¼ä¸åçæºç  
  * æè°¢ [ modern-nju-thesis ](https://typst.app/universe/package/modern-nju-thesis) æä¾äºä¸ä¸ªæ´å¥½çä»£ç ç»ç»æ¶æ 
  * æè°¢ä¸­å±±å¤§å­¦ Typst æ¨¡æ¿äº¤æµç¾¤ï¼ [ 797942860 ](https://jq.qq.com/?_wv=1027&k=m58va1kd) ï¼ãTypst ä¸­æäº¤æµç¾¤ï¼793548390ï¼ç¾¤åçå¸®å©äº¤æµã 

[ Create project in app ](/app?template=modern-sysu-thesis&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-sysu-thesis:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ howardlau1999 ](https://github.com/howardlau1999) & [ Sunny Huang ](https://github.com/huangjj27)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     June 17, 2024 
First released:

     May 17, 2024 
Archive size:

     43.5 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-sysu-thesis-0.3.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/sysu-gitlab/thesis-template/better-thesis)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  howardlau1999 and Sunny Huang  .  Report
issues on  [ their repository ](https://gitlab.com/sysu-gitlab/thesis-
template/better-thesis) .  You can also try to ask for help with this
template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  June 17, 2024   
[ 0.2.0 ](https://typst.app/universe/package/modern-sysu-thesis/0.2.0/) |  June 10, 2024   
[ 0.1.1 ](https://typst.app/universe/package/modern-sysu-thesis/0.1.1/) |  May 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/modern-sysu-thesis/0.1.0/) |  May 17, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

