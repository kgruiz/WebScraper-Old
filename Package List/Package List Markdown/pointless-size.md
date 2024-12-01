#  pointless-size

0.1.0

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ Chinese size system (hÃ
o-system) and type-related measurements units

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ã Chinese size system (hÃ
o-system) and type-related measurements units.

    
    
    #import "@preview/pointless-size:0.1.0": zh, zihao
    
    #set text(size: zh(5)) // äºå·ï¼10.5ptï¼
    // or
    #set text(zh(5))
    #show: zihao(5)
    
    // å°å·ç¨è´æ°è¡¨ç¤º use negative numbers for small sizes 
    #zh(-4) // å°åï¼12ptï¼
    #zh(1) // ä¸å·ï¼26ptï¼
    #zh(-1) // å°ä¸ï¼24ptï¼
    #zh("-0") // å°åï¼36ptï¼
    #zh(0) // åå·ï¼42ptï¼
    

å­å·æ²¡æç»ä¸è§å®ï¼æ¬å é»è®¤ä¸ CTeXãMS WordãWPSãAdobe
çä¸­æè§åä¸è´ã Chinese size systems were not standardized. By
default, this package is consistent with Chinese rules of CTeX, MS Word, WPS,
Adobe.

å¦æ³è¦çå®ä¹ï¼If you want to override:

    
    
    #import "@preview/pointless-size:0.1.0": zh as _zh
    
    #let zh = _zh.with(overrides: ((7, 5.25pt),))
    
    #assert.eq(_zh(7), 5.5pt)
    #assert.eq(zh(7), 5.25pt)
    

##  ç¸å ³é¾æ¥ Relevant links

> [!TIP]
>
>   * â = ä¸è´ consistent
>   * ðª = ä¸æè¿°çè§åä¹ä¸ä¸è´ consistent with one of the
> described rules
>   * ð¸ = ä¸å®å ¨ä¸è´ not fully consistent
>

  * ð¸ [ Â§2.3.5 åºæ¬çå¼è®¾è®¡çæ³¨æäºé¡¹ - ä¸­ææçéæ± | W3C ç¼è¾èç¨¿ ](https://www.w3.org/International/clreq/#considerations_in_designing_type_area) ï¼ä¸­/è±ï¼[2024-09-13] 

>
> âå·âç±äºå½å¹´éå±æ´»å­åå°åå®¶çè§èä¸ä¸èä¸å°½ç¸åâ¦â¦ä¸ä½ä¸ºè§èæ§è§å®ã

Â§2.3.5 Considerations when Designing the Type Area - Requirements for Chinese Text Layout | W3C Editorâs Draft (Chinese & English) 

> These hÃ o-systems were not standardized by the various foundries in the
> past. â¦It is not normative information.

  * â è¡¨25 ä¸­æå­å· - [ CTeX v2.5.0 (2022-07-14) å®éæå | CTAN ](http://mirrors.ctan.org/language/chinese/ctex/ctex.pdf) ï¼ä¸­æï¼ 

Table 25 Chinese text size - Documentation of the package CTeX v2.5.10
(2022-07-14) (Chinese)

[ https://github.com/CTeX-org/ctex-
kit/blob/0fb196c42c56287403fecca6eb6b137c00167f40/ctex/ctex.dtx#L9974-L9993
](https://github.com/CTeX-org/ctex-
kit/blob/0fb196c42c56287403fecca6eb6b137c00167f40/ctex/ctex.dtx#L9974-L9993)

  * ðª [ å­ä½åº¦éåä½ - CJK Type Blog | Adobe ](https://ccjktype.fonts.adobe.com/2009/04/post_1.html) ï¼ä¸­/è±ï¼[2009-04-02] ( [ archive.today ](https://archive.today/QxXuk) ) 

Type-related Measurements Units (Chinese & English)

  * â [ å¦ä½è½¬æ¢å­å·ãç£ ãpxï¼- æå·§é®ç­ | WPSå­¦å  ](https://www.wps.cn/learning/question/detail/id/2940) ï¼ä¸­æï¼[2020-05-07] 

How to convert between hÃ o, point, and pixel? - Tech Q&A | WPS learning (Chinese) 

  * [ #135 æ¾æè§£è¡å·å·ç - å­è°å­ç | The Type ](https://www.thetype.com/typechat/ep-135/) ï¼ä¸­æï¼å¸¦æå­è¯´æçæ­å®¢ï¼[2020-09-09] ( [ archive.today ](https://archive.today/qaG8D) ) 

(Chinese, podcast with show notes)

  * [ #543 ctexsize: éè®¾åçº§å­å·å¤§å° - CTeX-org/ctex-kit | GitHub ](https://github.com/CTeX-org/ctex-kit/issues/543) ï¼ä¸­æï¼[2020-10-13] 

#543 ctextsize: Redesign the font size system (Chinese)

  * â [ GB 40070â2021 å¿ç«¥éå°å¹´å­¦ä¹ ç¨åè¿è§é²æ§å«çè¦æ± - å½å®¶æ å | å ¨å½æ åä¿¡æ¯å ¬å ±æå¡å¹³å° ](https://std.samr.gov.cn/gb/search/gbDetailed?id=BBE32B661B7E8FC8E05397BE0A0AB906) ï¼ä¸­æï¼[2021-02-20] 

å
¶ä¸­ç¨å°äºå·æ°å¶ï¼ä¾å¦4.3.1âå°å­¦ä¸ãäºå¹´çº§ç¨å­åºä¸å°äº16Pï¼3å·ï¼å­âãæ»ç»ä¸æ¥æ¯ä¸å·
16ptãåå· 14ptãå°å 12ptãäºå· 10.5ptãå°äº 9ptã

GB 40070â2021 Hygienic requirements of study products for myopia prevention and control in children and adolescents - National standards | National public service platform for standards information (Chinese) 

The standard uses hÃ o-system, e.g. 4.3.1 âtexts for grade 1/2 of primary
school should not be less than 16P (size 3)â. To summarize, size 3 = 16pt,
size 4 = 14pt, size small 4 = 12pt, size 5 = 10.5pt, size small 5 = 9pt.

  * ðª [ å­å·ï¼å°å·ï¼| ç»´åºç¾ç§ ](https://zh.wikipedia.org/wiki/%E5%AD%97%E5%8F%B7_\(%E5%8D%B0%E5%88%B7\)) ï¼ä¸­æï¼ 

HÃ o (typography) | Wikipedia (Chinese) 

###  How to add

Copy this into your project and use the import as  ` pointless-size `

    
    
    #import "@preview/pointless-size:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Y.D.X. 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     September 14, 2024 
First released:

     September 14, 2024 
Archive size:

     3.72 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pointless-size-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/YDX-2147483647/typst-pointless-size)
Categor  ies  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Languages icon](/assets/icons/16-world.svg) [ Languages ](https://typst.app/universe/search/?category=languages)

###  Where to report issues?

This  package  is a project of  Y.D.X.  .  Report issues on  [ their
repository ](https://github.com/YDX-2147483647/typst-pointless-size) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

