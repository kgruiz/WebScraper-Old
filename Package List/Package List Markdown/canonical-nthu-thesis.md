![A preview of the canonical-nthu-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/canonical-nthu-
thesis-0.2.0-small.webp)

#  canonical-nthu-thesis

0.2.0

A template for master theses and doctoral dissertations for NTHU (National
Tsing Hua University).

[ Create project in app ](/app?template=canonical-nthu-thesis&version=0.2.0)

A [ Typst ](https://typst.app/docs/) template for master theses and doctoral
dissertations for NTHU (National Tsing Hua University).

åç«æ¸ è¯å¤§å­¸ç¢©å£«ï¼åå£«ï¼è«æ [ Typst ](https://typst.app/docs/)
æ¨¡æ¿ã

  * [ Typst Universe Package ](https://typst.app/universe/package/canonical-nthu-thesis)
  * [ Codeberg Repo ](https://codeberg.org/kotatsuyaki/canonical-nthu-thesis)

![](https://github.com/typst/packages/raw/main/packages/preview/canonical-
nthu-thesis/0.2.0/covers.png)

##  Usage

###  Installing the Chinese fonts

This template uses the official fonts from the Ministry of Education of Taiwan
(Edukai/TW-MOE-Std-Kai), which are required to be downloaded and installed
manually from [ language.moe.gov.tw
](https://language.moe.gov.tw/001/Upload/Files/site_content/M0001/edukai-5.0.zip)
. The Typst web app has the fonts installed by default, so there is no need to
install the fonts on the web app.

æ­¤æ¨¡æ¿ä¸­æé¨åä½¿ç¨æè²é¨æ¨æºæ¥·æ¸å­é«ï¼Edukai/TW-MOE-Std-
Kaiï¼ï¼å¨æ¬å°ç·¨è­¯æä»¶åéè¦èª [ language.moe.gov.tw
](https://language.moe.gov.tw/001/Upload/Files/site_content/M0001/edukai-5.0.zip)
ä¸è¼ä¸¦æåå®è£ãTypst web appå·²é è£è©²å­é«ï¼æ
ç¡éé¡å¤å®è£ã

###  Editing

All the content of the thesis are in the ` thesis.typ ` file. In the beginning
of ` thesis.typ ` , there is a call to the ` setup-thesis(info, style) `
function that configures the metadata (the titles and the author etc.) and the
styling of the thesis document. Replace the values with your own.

ææè«æå §å®¹çä½æ¼ ` thesis.typ ` æªæ¡å
§ãè©²æªæ¡åæ®µçé¨åå¼å«äº ` setup-thesis(info, style) `
å½å¼ï¼è¨­ç½®è«æçéé è³è¨ï¼æ¨é¡åä½è ç­ï¼åå¤è§é¸é
ï¼è«ç½®æçºèªå·±çè³è¨ã

###  Local usage

    
    
    $ typst init @preview/canonical-nthu-thesis:0.2.0 my-thesis
    $ cd my-thesis
    $ typst watch thesis.typ
    

##  Development

Development and issue tracking happens on the [ repository on Codeberg
](https://codeberg.org/kotatsuyaki/canonical-nthu-thesis) .

##  License

This project is licensed under the MIT License.

[ Create project in app ](/app?template=canonical-nthu-thesis&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/canonical-nthu-thesis:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     kotatsuyaki 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     August 1, 2024 
First released:

     June 17, 2024 
Archive size:

     48.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/canonical-nthu-thesis-0.2.0.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/kotatsuyaki/canonical-nthu-thesis)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  kotatsuyaki  .  Report issues on  [ their
repository ](https://codeberg.org/kotatsuyaki/canonical-nthu-thesis) .  You
can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  August 1, 2024   
[ 0.1.0 ](https://typst.app/universe/package/canonical-nthu-thesis/0.1.0/) |  June 17, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

