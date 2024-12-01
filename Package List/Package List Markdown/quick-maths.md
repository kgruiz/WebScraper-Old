#  quick-maths

0.2.0

Custom shorthands for math equations.

Featured  Package

A package for creating custom shorthands for math equations.

##  Usage

The package comes with a single template function ` shorthands ` that takes
one or more tuples of the form ` (shorthand, replacement) ` , where `
shorthand ` can be a string or content.

There are some small quality of life features for interaction of shorthands
with fractions and attachments:

  * If the right-most symbol of a shorthand has any attachments, they are moved to the shorthandâs replacement. 
  * If a shorthand ends in the numerator of a fraction, the whole replacement is placed in the numerator. 
  * If a shorthand starts in the denominator of a fraction, the whole replacement is placed in the denominator. 

As the implementation of these features is quite hacky, you may encounter some
edge cases, where the use of explicit parentheses hopefully saves you.

##  Notes

  * Shorthands are parsed in the order they are given, so if you have a shorthand that is a prefix of another shorthand, you should put the longer shorthand first. 

  * The content of an equation is traversed from left to right, so the left-most matching shorthand will be replaced first. 

  * Shorthands consisting of only a single character or element may be applied using show rules, so that they can affect non-sequence elements. This may lead to different behavior than multi-character shorthands. 

  * If the replacement of a shorthand contains a shorthand itself, there are no protections against infinite recursion or overflows. 

##  Example

    
    
    #import "@preview/quick-maths:0.2.0": shorthands
    
    #show: shorthands.with(
      ($+-$, $plus.minus$),
      ($|-$, math.tack),
      ($<=$, math.arrow.l.double) // Replaces 'â¤'
    )
    
    $ x^2 = 9 quad <==> quad x = +-3 $
    $ A or B |- A $
    $ x <= y $
    

![Result of example
code.](https://github.com/typst/packages/raw/main/packages/preview/quick-
maths/0.2.0/assets/example.svg)

###  How to add

Copy this into your project and use the import as  ` quick-maths `

    
    
    #import "@preview/quick-maths:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Eric Biedert 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 18, 2024 
First released:

     July 5, 2024 
Archive size:

     3.58 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/quick-maths-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/EpicEricEE/typst-quick-maths)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Eric Biedert  .  Report issues on  [ their
repository ](https://github.com/EpicEricEE/typst-quick-maths) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 18, 2024   
[ 0.1.0 ](https://typst.app/universe/package/quick-maths/0.1.0/) |  July 5, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

