#  sigfig

0.1.0

Typst library for rounding numbers with significant figures and measurement
uncertainty.

` sigfig ` is a [ Typst ](https://typst.app/) package for rounding numbers
with [ significant figures
](https://en.wikipedia.org/wiki/Significant_figures) and [ measurement
uncertainty ](https://en.wikipedia.org/wiki/Measurement_uncertainty) .

##  Overview

    
    
    #import "@preview/sigfig:0.1.0": round, urounds
    #import "@preview/unify:0.5.0": num
    
    $ #num(round(98654, 3)) $
    $ #num(round(2.8977729e-3, 4)) $
    $ #num(round(-.0999, 2)) $
    $ #num(urounds(114514.19, 1.98)) $
    $ #num(urounds(1234.5678, 0.096)) $
    

yields

![](https://github.com/typst/packages/assets/20166026/f3d69c3c-bc67-484f-81f9-80a10913fd11)

##  Documentation

###  ` round `

` round ` is similar to JavaScriptâs ` Number.prototype.toPrecision() ` ( [
ES spec ](https://tc39.es/ecma262/multipage/numbers-and-dates.html#sec-
number.prototype.toprecision) ).

    
    
    #assert(round(114514, 3) == "1.15e5")
    #assert(round(1, 5) == "1.0000")
    #assert(round(12345, 10) == "12345.00000")
    #assert(round(.00000002468, 3) == "2.47e-8")
    

Note that what is different from the ES spec is that there will be no sign
($+$) if the exponent after ` e ` is positive.

###  ` uround `

` uround ` rounds a number with its uncertainty, and returns a string of both.

    
    
    #assert(uround(114514, 1919) == "1.15e5+-2e3")
    #assert(uround(114514.0, 1.9) == "114514+-2")
    

###  ` urounds `

` uround ` rounds a number with its uncertainty, and returns a string of both
with the same exponent, if any.

You can use ` num ` in ` unify ` to display the result.

##  License

MIT Â© 2024 OverflowCat ( [ overflow.cat ](https://about.overflow.cat/) ).

###  How to add

Copy this into your project and use the import as  ` sigfig `

    
    
    #import "@preview/sigfig:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     OverflowCat 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     June 17, 2024 
First released:

     June 17, 2024 
Archive size:

     3.73 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/sigfig-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/OverflowCat/sigfig)
Discipline  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

###  Where to report issues?

This  package  is a project of  OverflowCat  .  Report issues on  [ their
repository ](https://github.com/OverflowCat/sigfig) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 17, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

