#  zhconv

0.3.1

Convert Chinese text between Traditional/Simplified and regional variants.
ä¸­æç®ç¹åå°åè©è½æ

zhconv-typst converts Chinese text between Traditional, Simplified and
regional variants in typst, utilizing [ zhconv-rs
](https://github.com/Gowee/zhconv-rs) .

##  Usage

To use the ` zhconv ` plugin in your Typst project, import it as follows:

    
    
    #import "@preview/zhconv:0.3.1": zhconv
    

###  Text Conversion

The primary function provided by this package is ` zhconv ` , which converts
strings or nested contents to a target Chinese variant.

    
    
    #zhconv(content, "target-variant", wikitext: false)
    

  * ` content ` : The text or content to be converted. 
  * ` target-variant ` : The target Chinese variant (e.g., ` "zh-hant" ` , ` "zh-hans" ` , ` "zh-cn" ` , ` "zh-tw" ` , ` "zh-hk" ` ). 
  * ` wikitext ` : An optional boolean flag to specify if the text should be processed as wikitext (default is ` false ` ). 

####  Example

#####  Convert a string

    
    
    #let text = "äºèç½"
    Original: #text
    - #emph([zh-HK]): #zhconv(text, "zh-hk")
    - #emph([zh-TW]): #zhconv(text, "zh-tw")
    

#####  Convert nested contents

    
    
    #zhconv([
    æ³å¤è¼é·æ± ä¸é¨ \
    é¨è²æ»´ç¢è·è² \
    
    å°æ¨è¥¿è§æ·è¹æ \
    éå¹²åè \
    å¾å¾æè¯ç \
    ], "zh-hans")
    

###  How to add

Copy this into your project and use the import as  ` zhconv `

    
    
    #import "@preview/zhconv:0.3.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Hung-I Wang ](mailto:whygowe@gmail.com)
License:

     GPL-2.0 
Current version:

     0.3.1 
Last updated:

     August 14, 2024 
First released:

     August 14, 2024 
Archive size:

     804 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/zhconv-0.3.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Gowee/zhconv-rs)

###  Where to report issues?

This  package  is a project of  Hung-I Wang  .  Report issues on  [ their
repository ](https://github.com/Gowee/zhconv-rs) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.1  |  August 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

