#  codedis

0.1.0

A simple package for displaying code.

Used to display code files in Typst. Main feature is that it displays code
blocks over multiple pages in a way that implies the code block continues onto
the next page. Also a simple and intuitive syntax for displaying code blocks.

Usage:

    
    
    // IMPORT PACKAGE
    #import "@preview/codedis:0.1.0": code
    
    // READ IN CODE
    #let codeblock-1 = read("some_code.py")
    #let codeblock-2 = read("some_code.cpp")
    
    #set page(numbering: "1")
    #v(80%)
    
    // DEFAULT LANGUAGE IS Python ("py")
    #code(codeblock-1)
    #code(codeblock-2, lang: "cpp")
    

Renders to:
![image](https://github.com/AugustinWinther/codedis/assets/30674646/76bb13d5-adc8-457f-bd55-53e3fd5c5df7)

It is very basic and limited, but it does what I need it too, and hope that it
may be of help to others. Iâm most likely not going to develop it further
than this.

###  How to add

Copy this into your project and use the import as  ` codedis `

    
    
    #import "@preview/codedis:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Augustin Winther ](https://winther.io)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 29, 2024 
First released:

     April 29, 2024 
Archive size:

     2.08 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/codedis-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/AugustinWinther/codedis)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Augustin Winther  .  Report issues on  [ their
repository ](https://github.com/AugustinWinther/codedis) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

