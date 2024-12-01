#  vartable

0.1.2

A simple package to make variation table

An easy way to render variation table on typst, built on [ fletcher
](https://github.com/Jollywatt/typst-fletcher)  
The [ documention ](https://github.com/Le-foucheur/Typst-
VarTable/blob/main/documentation.pdf)

    
    
    #import "@preview/Tabvar:0.1.0": tabvar
    

###  Trigonometric functions

Turn thisâ¯:

    
    
    #import "@preview/Tabvar:0.1.0": tabvar
    
    #tabvar(
      init: (
        variable: $x$,
        label: (
          ([sign of cos], "Sign"),
          ([variation of cos], "Variation"),
          ([sign of sin], "Sign"),
          ([variation of sin], "Variation"),
        ),
      ),
      domain: ($0$, $ pi / 2 $, $ pi $, $ (2pi) / 3 $, $ 2 pi $),
      content: (
        ($-$, (), $+$, ()),
        (
          (top, $1$),
          (),
          (bottom, $-1$),
          (),
          (top, $1$),
        ),
        ($+$, $-$, (), $+$),
        (
          (center, $0$),
          (top, $1$),
          (),
          (bottom, $-1$),
          (top, $1$),
        ),
      ),
    )
    

Into this

![trigonometric
function](https://github.com/typst/packages/raw/main/packages/preview/vartable/0.1.2/examples/trigonometricFunction.png)

###  hyperbolic function $f(x) = 1/x $

    
    
    #import "@preview/Tabvar:0.1.0": tabvar
    
    #tabvar(
        init: (
            variable: $x$,
        label: (
            ([sign of $f$], "Sign"),
          ([variation of $f$], "Variation"),
        ),
      ),
      domain: ($ -oo $, $ 0 $, $ +oo $),
      content: (
          ($+$, ("||", $+$)),
        (
            (center, $0$),
          (bottom, top, "||", $-oo$, $+oo$),
          (center, $0$),
        ),
      ),
    )
    

![hyperbolic
function](https://github.com/typst/packages/raw/main/packages/preview/vartable/0.1.2/examples/hyperbolicFuntion.png)

  * if you put too wide an element for the last value of a variation table, this can create a space between the edge of the table and the lines separating the lines of the table 

![](https://github.com/typst/packages/raw/main/packages/preview/vartable/0.1.2/examples/bug1.png)

##  Â·change logÂ·

####  0.1.2â¯:

  * Support ` fletcher 0.5.2 `

####  0.1.1â¯:

  * added customisation of separator bars between signs 

#####  0.1.0â¯:

  * publishing the package 

###  How to add

Copy this into your project and use the import as  ` vartable `

    
    
    #import "@preview/vartable:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Le_Foucheur 
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     October 29, 2024 
First released:

     July 2, 2024 
Archive size:

     114 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/vartable-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/Le-foucheur/Typst-VarTable)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Le_Foucheur  .  Report issues on  [ their
repository ](https://github.com/Le-foucheur/Typst-VarTable) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 29, 2024   
[ 0.1.1 ](https://typst.app/universe/package/vartable/0.1.1/) |  October 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/vartable/0.1.0/) |  July 2, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

