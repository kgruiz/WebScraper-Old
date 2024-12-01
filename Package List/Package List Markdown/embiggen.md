#  embiggen

0.0.1

LaTeX-like delimeter sizing in Typst

Get LaTeX-like delimeter sizing in Typst!

##  Usage

    
    
    #import "@preview/embiggen:0.0.1": *
    
    = embiggen
    
    Here's an equation of sorts:
    
    $ {lr(1/2x^2|)^(x=n)_(x=0) + (2x+3)} $
    
    And here are some bigger versions of it:
    
    $ {big(1/2x^2|)^(x=n)_(x=0) + big((2x+3))} $
    $ {Big(1/2x^2|)^(x=n)_(x=0) + Big((2x+3))} $
    $ {bigg(1/2x^2|)^(x=n)_(x=0) + bigg((2x+3))} $
    $ {Bigg(1/2x^2|)^(x=n)_(x=0) + Bigg((2x+3))} $
    
    And now, some smaller versions (#text([#link("https://x.com/tsoding/status/1756517251497255167", "cAn YoUr LaTeX dO tHaT?")], fill: rgb(50, 20, 200), font: "Noto Mono")):
    
    $ small(1/2x^2|)^(x=n)_(x=0) $
    $ Small(1/2x^2|)^(x=n)_(x=0) $
    $ smalll(1/2x^2|)^(x=n)_(x=0) $
    $ Smalll(1/2x^2|)^(x=n)_(x=0) $
    

##  Functions

###  big(â¦)

Applies a scale factor of ` 125% ` to ` #lr ` pre-determined scale. Delimeters
are enlarged by this amount compared to what ` #lr ` would normally do.

###  Big(â¦)

Like ` big(...) ` , but applies a scale factor of ` 156.25% ` .

###  bigg(â¦)

Like ` big(...) ` , but applies a scale factor of ` 195.313% ` .

###  Bigg(â¦)

Like ` big(...) ` , but applies a scale factor of ` 244.141% ` .

###  small(â¦)

Applies a scale factor of ` 80% ` to ` #lr ` pre-determined scale. Delimeters
are shrunk by this amount compared to what ` #lr ` would normally do. This
does _not_ exist in standard LaTeX, but is necessary in this package because
these functions scale the output of ` #lr ` , so delimeter sizes will get
larger depending on the content.

###  Small(â¦)

Like ` small(...) ` , but applies a scale factor of ` 64% ` .

###  smalll(â¦)

Like ` small(...) ` , but applies a scale factor of ` 51.2% ` .

###  Smalll(â¦)

Like ` small(...) ` , but applies a scale factor of ` 40.96% ` .

###  How to add

Copy this into your project and use the import as  ` embiggen `

    
    
    #import "@preview/embiggen:0.0.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Ananth Venkatesh ](mailto:dev.quantum9innovation@gmail.com)
License:

     GPL-3.0-or-later 
Current version:

     0.0.1 
Last updated:

     June 18, 2024 
First released:

     June 18, 2024 
Archive size:

     13.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/embiggen-0.0.1.tar.gz)
Categor  ies  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)
  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  package  is a project of  Ananth Venkatesh  .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  June 18, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

