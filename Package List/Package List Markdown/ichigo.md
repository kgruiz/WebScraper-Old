![A preview of the ichigo Typst
template.](https://packages.typst.org/preview/thumbnails/ichigo-0.2.0-small.webp)

#  ichigo

0.2.0

A customizable Typst template for homework

[ Create project in app ](/app?template=ichigo&version=0.2.0)

Homework Template - ä½ä¸æ¨¡æ¿

##  Usage - ä½¿ç¨æ¹æ³

    
    
    #import "@preview/ichigo:0.2.0": config, prob
    
    #show: config.with(
      course-name: "Typst ä½¿ç¨å°ç»ä¹ ",
      serial-str: "ç¬¬ 1 æ¬¡ä½ä¸",
      author-info: [
        sjfhsjfh from PKU-Typst
      ],
      author-names: "sjfhsjfh",
    )
    
    #prob[
      Calculate the 25th number in the Fibonacci sequence using Typst
    ][
      #let f(n) = {
        if n <= 2 {
          return 1
        }
        return f(n - 1) + f(n - 2)
      }
      #f(25)
    ]
    

##  Documentation - ææ¡£

[ Click to download - ç¹å»ä¸è½½ ](https://github.com/PKU-
Typst/ichigo/releases/download/v0.2.0/documentation.pdf)

##  TODO - å¾ å

  * [ ] Theme list & documentation 

[ Create project in app ](/app?template=ichigo&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ichigo:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ PKU-Typst ](https://github.com/PKU-Typst)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 18, 2024 
First released:

     October 3, 2024 
Archive size:

     17.1 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ichigo-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/PKU-Typst/ichigo)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  PKU-Typst  .  Report issues on  [ their
repository ](https://github.com/PKU-Typst/ichigo) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 18, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ichigo/0.1.0/) |  October 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

