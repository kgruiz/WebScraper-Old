#  slashion

0.1.1

Fractions with slash.

You might not like the inline fraction displayed in a vertical layout. Just
use **Slashion** to convert it to a slash fraction.

    
    
    #import "@preview/slashion:0.1.1": slash-frac
    #show math.equation.where(block: false): slash-frac
    

You may also use it solely

    
    
    #import "@preview/slashion:0.1.1": slash-frac as sfrac
    $sfrac(1/2)$, $sfrac(3, 4)$ or even $sfrac((5 + 6) / 7 + 8)$ are acceptable.
    

##  Notice

  1. This function converts only the outermoest fraction. 
  2. This function has an option to turn off the auto parenthesizing feature: ` slash-frac.with(parens: false) `

###  How to add

Copy this into your project and use the import as  ` slashion `

    
    
    #import "@preview/slashion:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     sjfhsjfh 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     November 13, 2024 
First released:

     November 12, 2024 
Archive size:

     2.23 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/slashion-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/sjfhsjfh/slashion)
Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  sjfhsjfh  .  Report issues on  [ their
repository ](https://github.com/sjfhsjfh/slashion) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 13, 2024   
[ 0.1.0 ](https://typst.app/universe/package/slashion/0.1.0/) |  November 12, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

