#  a2c-nums

0.0.1

Convert a number to Chinese

Convert Arabic numbers to Chinese characters.

##  usage

    
    
    #import "@preview/a2c-nums:0.0.1": int-to-cn-num, int-to-cn-ancient-num, int-to-cn-simple-num, num-to-cn-currency
    
    #int-to-cn-num(1234567890)
    
    #int-to-cn-ancient-num(1234567890)
    
    #int-to-cn-simple-num(2024)
    
    #num-to-cn-currency(1234567890.12)
    

##  Functions

###  int-to-cn-num

Convert an integer to Chinese number. ex: ` #int-to-cn-num(123) ` will be `
ä¸ç¾äºåä¸ `

###  int-to-cn-ancient-num

Convert an integer to ancient Chinese number. ex: ` #int-to-cn-ancient-
num(123) ` will be ` å£¹ä½°è´°æ¾å `

###  int-to-cn-simple-num

Convert an integer to simpple Chinese number. ex: ` #int-to-cn-simple-
num(2024) ` will be ` äºãäºå `

###  num-to-cn-currency

Convert a number to Chinese currency. ex: ` #int-to-cn-simple-num(1234.56) `
will be ` å£¹ä»è´°ä½°åæ¾èå ä¼è§éå `

###  more details

Reference [ demo.typ
](https://github.com/typst/packages/raw/main/packages/preview/a2c-nums/0.0.1/demo.typ)
for more details please.

###  How to add

Copy this into your project and use the import as  ` a2c-nums `

    
    
    #import "@preview/a2c-nums:0.0.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Zhuo Nengwen ](mailto:soarowl@yeah.net)
License:

     MIT 
Current version:

     0.0.1 
Last updated:

     January 8, 2024 
First released:

     January 8, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     2.54 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/a2c-nums-0.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/soarowl/a2c-nums.git)

###  Where to report issues?

This  package  is a project of  Zhuo Nengwen  .  Report issues on  [ their
repository ](https://github.com/soarowl/a2c-nums.git) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  January 8, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

