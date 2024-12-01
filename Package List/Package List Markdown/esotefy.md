#  esotefy

1.0.0

A brainfuck implementation in pure Typst

> A compilation of esoteric languages including for now brainfuck

##  In pure brainfuck

    
    
    #import "@preview/esotefy:1.0.0": brainf;
    
    #brainf("++++++++[>++++[>++>+++>+++>+<<<<-]>+>+>->>+[<]<-]>>.>---.+++++++..+++.>>.<-.<.+++.------.--------.>>+.>++.");
    

Into

![image](https://media.discordapp.net/attachments/751591144919662752/1176988035309633647/image.png?ex=6570de86&is=655e6986&hm=60e18ac7187c117ab08a95c323f5059424342dbb9d8da49600c82502b5d14e7f&=&format=webp&width=328&height=102)

##  With inputs

    
    
    #import "@preview/esotefy:1.0.0": brainf;
    
    #brainf("++++++++++++++[->,.<]", inp: "Goodbye World!");
    

Into

![image](https://media.discordapp.net/attachments/751591144919662752/1176988280613515366/image.png?ex=6570dec1&is=655e69c1&hm=f9285649f3e5ab72749af5820972c52827c727f6c52351b63d0bbd2ba9afce87&=&format=webp&width=808&height=181)

Iâve based my implementation from theses documents:

  * [ Wikipedia ](https://en.wikipedia.org/wiki/Brainfuck)
  * [ Github ](https://github.com/sunjay/brainfuck)
  * [ A compiler of Brainfuck in c ](https://onestepcode.com/brainfuck-compiler-c/)

###  How to add

Copy this into your project and use the import as  ` esotefy `

    
    
    #import "@preview/esotefy:1.0.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Thumus 
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     November 29, 2023 
First released:

     November 29, 2023 
Minimum Typst version:

     0.7.0 
Archive size:

     2.03 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/esotefy-1.0.0.tar.gz)
Repository:

     [ GitHub ](git@github.com:Thumuss/brainfuck.git)

###  Where to report issues?

This  package  is a project of  Thumus  .  Report issues on  [ their
repository ](git@github.com:Thumuss/brainfuck.git) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  November 29, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

