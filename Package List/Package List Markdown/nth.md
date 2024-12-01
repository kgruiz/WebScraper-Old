#  nth

1.0.1

Add english ordinals to numbers, eg. 1st, 2nd, 3rd, 4th.

Provides functions ` #nth() ` and ` #nths() ` which take a number and return
it suffixed by an english ordinal.

This package is named after the nth [ LaTeX macro ](https://ctan.org/pkg/nth)
by Donald Arseneau.

##  Usage

Include this line in your document to import the package.

    
    
    #import "@preview/nth:1.0.1": *
    

Then, you can use ` #nth() ` to markup ordinal numbers in your document.

For example, ` #nth(1) ` shows 1st,  
` #nth(2) ` shows 2nd,  
` #nth(3) ` shows 3rd,  
` #nth(4) ` shows 4th,  
and ` #nth(11) ` shows 11th.

If you want the ordinal to be in superscript, use ` #nths ` with an âsâ at
the end.

For example, ` #nths(1) ` shows 1  st  .

###  How to add

Copy this into your project and use the import as  ` nth `

    
    
    #import "@preview/nth:1.0.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ Pierre Marshall ](mailto:pierre.marshall@gmail.com) , [ fnoaman ](https://github.com/fnoaman) , & [ Andrew Jeffery ](https://github.com/jeffa5)
License:

     MIT-0 
Current version:

     1.0.1 
Last updated:

     June 21, 2024 
First released:

     September 22, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     2.38 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/nth-1.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/extua/nth)
Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  Pierre Marshall, fnoaman, and Andrew Jeffery
.  Report issues on  [ their repository ](https://github.com/extua/nth) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.1  |  June 21, 2024   
[ 1.0.0 ](https://typst.app/universe/package/nth/1.0.0/) |  December 23, 2023   
[ 0.2.0 ](https://typst.app/universe/package/nth/0.2.0/) |  October 2, 2023   
[ 0.1.0 ](https://typst.app/universe/package/nth/0.1.0/) |  September 22, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

