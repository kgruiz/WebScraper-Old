#  stonewall

0.1.0

Stonewall provides beautiful pride flag colours for gradients.

You can use the colour palette with _gradients_ for maximum results! For
example the code in ` example/example.typ ` which is

    
    
    #import "@preview/stonewall:0.1.0": flags
    
    #set page(width: 200pt, height: auto, margin: 0pt)
    #set text(fill: black, size: 12pt)
    #set text(top-edge: "bounds", bottom-edge: "bounds")
    
    
    #stack(
      spacing: 3pt,
      ..flags.map(((name, preset)) => block(
        width: 100%,
        height: 20pt,
        fill: gradient.linear(..preset),
        align(center + horizon, smallcaps(name)),
      ))
    )
    

gives the following stack of flags as of v0.1.0
![](https://github.com/typst/packages/raw/main/packages/preview/stonewall/0.1.0/flags.png)

To use only one flag you only import the one you want

###  How to add

Copy this into your project and use the import as  ` stonewall `

    
    
    #import "@preview/stonewall:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Charlotte Thomas 
License:

     GPL-3.0-or-later 
Current version:

     0.1.0 
Last updated:

     November 7, 2023 
First released:

     November 7, 2023 
Minimum Typst version:

     0.9.0 
Archive size:

     14.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/stonewall-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/coco33920/stonewall)

###  Where to report issues?

This  package  is a project of  Charlotte Thomas  .  Report issues on  [ their
repository ](https://github.com/coco33920/stonewall) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 7, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

