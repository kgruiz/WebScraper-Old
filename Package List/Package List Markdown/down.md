#  down

0.1.0

Pass down arguments of `sum`, `integral`, etc. to the next line, which can
generate shorthand to present reusable segments.

Pass down arguments of ` sum ` , ` integral ` , etc. to the next line, which
can generate shorthand to present reusable segments. While writing long step-
by-step equations, only certain parts of a line change. ` down ` leverages
Typstâs ` context ` (from version 0.11.0) to help relieve the pressure of
writing long and repetitive formulae.

Import the package:

    
    
    #import "@preview/down:0.1.0": *
    

##  Usage

Create new contexts by using camel-case commands, such as ` Limit(x, +0) ` .
Retrieve the contextual with ` cLimit ` .

  * ` Limit(x, c) ` and ` cLimit ` : 

    
    
    $
    Lim(x, +0) x ln(sin x)
      = cLim ln(sin x) / x^(-1)
      = cLim x / (sin x) cos x
      = 0
    $
    

  * ` Sum(index, lower, upper) ` and ` cSum ` : 

    
    
    $
    Sum(n, 0, oo) 1 / sqrt(n + 1)
      = Sum(#none, 0, #none) 1 / sqrt(n)
      = cSum 1 / n^(1 / 2)
    $
    

  * ` Integral(lower, upper, f, dif: [x]) ` , ` cIntegral(f) ` and ` cIntegrated(f) ` : 

    
    
    $
    Integral(0, pi / 3, sqrt(1 + tan^2 x))
      = cIntegral(1 / (cos x))
      = cIntegrated(ln (cos x / 2 + sin x / 2) / (cos x / 2 - sin x / 2))
      = ln (2 + sqrt(3))
    $
    

Refer to ` ./sample.pdf ` for more complex application.

###  How to add

Copy this into your project and use the import as  ` down `

    
    
    #import "@preview/down:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Toto ](mailto:the@unpopular.me)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 1, 2024 
First released:

     April 1, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.15 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/down-0.1.0.tar.gz)
Repository:

     [ git.sr.ht ](https://git.sr.ht/~toto/down)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Toto  .  Report issues on  [ their repository
](https://git.sr.ht/~toto/down) .  You can also try to ask for help with this
package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

