#  kouhu

0.1.1

Chinese lipsum text generator; ä¸­æä¹±æ°åæï¼Lorem Ipsumï¼çæå¨

` kouhu ` is a Chinese lipsum text generator for [ Typst ](https://typst.app/)
. It provides a set of built-in text samples containing both Simplified and
Traditional Chinese characters. You can choose from generated fake text,
classic or modern Chinese literature, or specify your own text.

` kouhu ` is inspired by [ zhlipsum ](https://ctan.org/pkg/zhlipsum) LaTeX
package and [ roremu ](https://typst.app/universe/package/roremu) Typst
package.

All [ sample text
](https://github.com/typst/packages/raw/main/packages/preview/kouhu/0.1.1/data/zhlipsum.json)
is excerpted from ` zhlipsum ` LaTeX package (see Appendix for details).

##  Usage

    
    
    #import "@preview/kouhu:0.1.0": kouhu
    
    #kouhu(indicies: range(1, 3)) // select the first 3 paragraphs from default text
    
    #kouhu(builtin-text: "zhufu", offset: 5, length: 100) // select 100 characters from the 5th paragraph of "zhufu" text
    
    #kouhu(custom-text: ("Foo", "Bar")) // provide your own text
    

See [ manual ](https://github.com/Harry-Chen/kouhu/blob/master/doc/manual.pdf)
for more details.

##  What does ` kouhu ` mean?

GitHub Copilot says:

> ` kouhu ` (å£è¡) is a Chinese term for reading aloud without understanding
> the meaning. It is often used in the context of learning Chinese language or
> reciting Chinese literature.

##  Changelog

###  0.1.1

  * Fix some wrong paths in ` README.md ` . 
  * Fix genearation of ` indicies ` when not specified by user. 
  * Add repetition of text until ` length ` is reached. 

###  0.1.0

  * Initial release. 

##  Appendix

###  Generating ` zhlipsum.json `

First download the ` zhlipsum-text.dtx ` from [ CTAN
](https://ctan.org/pkg/zhlipsum) or from local TeX Live ( ` kpsewhich
zhlipsum-text.dtx ` ). Then run:

    
    
    python3 utils/generate_zhlipsum.py /path/to/zhlipsum-text.dtx src/zhlipsum.json
    

###  How to add

Copy this into your project and use the import as  ` kouhu `

    
    
    #import "@preview/kouhu:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Shengqi Chen ](mailto:harry-chen@outlook.com)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     September 30, 2024 
First released:

     September 27, 2024 
Archive size:

     905 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/kouhu-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Harry-Chen/kouhu)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Shengqi Chen  .  Report issues on  [ their
repository ](https://github.com/Harry-Chen/kouhu) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  September 30, 2024   
[ 0.1.0 ](https://typst.app/universe/package/kouhu/0.1.0/) |  September 27, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

