#  cuti

0.3.0

Easily simulate (fake) bold, italic and small capital characters.

Cuti (/kjuËti/) is a package that simulates fake bold / fake italic / fake
small captials. This package is typically used on fonts that do not have a `
bold ` weight, such as âSimSunâ.

##  Usage

Please refer to the [ Documentation ](https://csimide.github.io/cuti-docs/en/)
.

æ¬ Package æä¾ä¸­æææ¡£ï¼ [ ä¸­æææ¡£
](https://csimide.github.io/cuti-docs/zh-CN/) ã

###  Getting Started Quickly (For Chinese User)

Please add the following content at the beginning of the document:

    
    
    #import "@preview/cuti:0.3.0": show-cn-fakebold
    #show: show-cn-fakebold
    

Then, the bolding for SimHei, SimSun, and KaiTi fonts should work correctly.

##  Changelog

###  ` 0.3.0 `

  * feat: Add fake small caps feature by Tetragramm. 
  * fix: ` show-fakebold ` may crash on Typst version 0.12.0. 

###  ` 0.2.1 `

  * feat: The stroke of fake bold will use the same color as the text. 
  * fix: Attempted to fix the issue with the spacing of punctuation in fake italic (#2), but there are still problems. 

###  ` 0.2.0 `

  * feat: Added fake italic functionality. 

###  ` 0.1.0 `

  * Basic fake bold functionality. 

##  License

MIT License

This package refers to the following content:

  * [ TeX and Chinese Character Processing: Fake Bold and Fake Italic ](https://zhuanlan.zhihu.com/p/19686102)
  * Typst issue [ #394 ](https://github.com/typst/typst/issues/394)
  * Typst issue [ #2749 ](https://github.com/typst/typst/issues/2749) (The function ` _skew ` comes from Enivexâs code.) 

Thanks to Enter-tainer for the assistance.

###  How to add

Copy this into your project and use the import as  ` cuti `

    
    
    #import "@preview/cuti:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     csimide  ,  Enivex  , & Tetragramm 
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     November 25, 2024 
First released:

     March 18, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     2.37 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cuti-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/csimide/cuti)

###  Where to report issues?

This  package  is a project of  csimide, Enivex, and Tetragramm  .  Report
issues on  [ their repository ](https://github.com/csimide/cuti) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  November 25, 2024   
[ 0.2.1 ](https://typst.app/universe/package/cuti/0.2.1/) |  April 5, 2024   
[ 0.2.0 ](https://typst.app/universe/package/cuti/0.2.0/) |  March 20, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cuti/0.1.0/) |  March 18, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

