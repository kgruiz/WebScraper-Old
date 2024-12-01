#  frackable

0.2.0

Vulgar Fractions

Version 0.2.0

Provides a function, ` frackable(numerator, denominator, whole: none) ` , to
typeset vulgar and mixed fractions. Provides a second ` generator(...) `
function that returns another having the same signature as ` frackable ` to
typeset arbitrary vulgar and mixed fractions in fonts that do not support the
` frac ` feature.

    
    
    #import "@preview/frackable:0.2.0": *
    
    #frackable(1, 2)
    #frackable(1, 3)
    #frackable(3, 4, whole: 9)
    #frackable(9, 16)
    #frackable(31, 32)
    #frackable(0, "000")
    
    

![plot](https://github.com/typst/packages/raw/main/packages/preview/frackable/0.2.0/example.png)

###  How to add

Copy this into your project and use the import as  ` frackable `

    
    
    #import "@preview/frackable:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     James R. Swift 
License:

     Unlicense 
Current version:

     0.2.0 
Last updated:

     September 27, 2024 
First released:

     September 24, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.83 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/frackable-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://www.github.com/jamesrswift/frackable)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  James R. Swift  .  Report issues on  [ their
repository ](https://www.github.com/jamesrswift/frackable) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  September 27, 2024   
[ 0.1.0 ](https://typst.app/universe/package/frackable/0.1.0/) |  September 24, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

