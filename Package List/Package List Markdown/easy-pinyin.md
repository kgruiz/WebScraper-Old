#  easy-pinyin

0.1.0

Write Chinese pinyin easily.

Write Chinese pinyin easily.

##  Usage

Import the package:

    
    
    #import "@preview/easy-pinyin:0.1.0": pinyin, zhuyin
    

With the ` pinyin ` function, you can use ` a2 ` to write an ` ÉÌ ` , ` o3 `
to write an ` Ç ` , ` v4 ` to represent ` Ç ` , etc.

With ` zhuyin ` functionï¼you can put pinyin above the text easily, with
parameters:

  * positional parameters: 
    * ` doc: content|string ` : main characters 
    * ` ruby: content|string ` : zhuyin characters 
  * named parameters: 
    * ` scale: number = 0.7 ` : font size scale of ` ruby ` , default ` 0.7 `
    * ` gutter: length = 0.3em ` : spacing between ` doc ` and ` ruby ` , default ` 0.3em `
    * ` delimiter: string|none = none ` : if not none, use this character to split ` doc ` and ` ruby ` into parts 
    * ` spacing: length|none = none ` : spacing between each parts 

See example bellow.

##  Example

    
    
    æ±ï¼#pinyin[ha4n]ï¼è¯­ï¼#pinyin[yu3]ï¼æ¼ï¼#pinyin[pi1n]ï¼é³ï¼#pinyin[yi1n]ï¼ã
    
    #let per-char(f) = [#f(delimiter: "|")[æ±|è¯­|æ¼|é³][ha4n|yu3|pi1n|yi1n]]
    #let per-word(f) = [#f(delimiter: "|")[æ±è¯­|æ¼é³][ha4nyu3|pi1nyi1n]]
    #let all-in-one(f) = [#f[æ±è¯­æ¼é³][ha4nyu3pi1nyi1n]]
    #let example(f) = (per-char(f), per-word(f), all-in-one(f))
    
    // argument of scale and spacing
    #let arguments = ((0.5, none), (0.7, none), (0.7, 0.1em), (1.0, none), (1.0, 0.2em))
    
    #table(
      columns: (auto, auto, auto, auto),
      align: (center + horizon, center, center, center),
      [arguments], [per char], [per word], [all in one],
      ..arguments.map(((scale, spacing)) => (
        text(size: 0.7em)[#scale,#repr(spacing)], 
        ..example(zhuyin.with(scale: scale, spacing: spacing))
      )).flatten(),
    )
    

![result of above example](https://raw.githubusercontent.com/7sDream/typst-
easy-pinyin/master/example.png?raw=true)

##  LICENSE

MIT, see License file.

###  How to add

Copy this into your project and use the import as  ` easy-pinyin `

    
    
    #import "@preview/easy-pinyin:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     7sDream  & Other open-source contributors 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 6, 2023 
First released:

     July 6, 2023 
Archive size:

     2.43 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/easy-pinyin-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/7sDream/typst-easy-pinyin)

###  Where to report issues?

This  package  is a project of  7sDream and Other open-source contributors  .
Report issues on  [ their repository ](https://github.com/7sDream/typst-easy-
pinyin) .  You can also try to ask for help with this  package  on the  [
Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

