#  salsa-dip

0.1.0

DIP chip labels for Typst

Salsa Dip is a library for making [ DIP
](https://en.wikipedia.org/wiki/Dual_in-line_package) chip labels in Typst.

    
    
    #import "@preview/salsa-dip:0.1.0": dip-chip-label
    
    #set text(font: ("JetBrains Mono", "Fira Code", "DejaVu Sans Mono"), weight: "extrabold")
    #set page(width: auto, height: auto, margin: .125cm)
    
    #let z80-labels = ("A11", ..., "A9", "A10")
    
    #dip-chip-label(40, 0.54in, z80-labels, "Z80", settings: (pin-number-margin: 1pt, pin-number-size: 2.5pt, chip-label-size: 5pt))
    
    

![Z80 Chip
Label](https://github.com/typst/packages/raw/main/packages/preview/salsa-
dip/0.1.0/examples/z80.png)

    
    
    #import "@preview/salsa-dip:0.1.0": dip-chip-label
    
    #set text(font: ("JetBrains Mono", "Fira Code", "DejaVu Sans Mono"), weight: "extrabold")
    #set page(width: auto, height: auto, margin: .125cm)
    
    #let labels = ("1A", "1B", "1Y", "2A", "2B", "2Y", "GND", "3Y", "3A", "3B", "4Y", "4A", "4B", "VCC")
    #dip-chip-label(14, 0.24in, labels, "74LS00")
    

![74ls00 Chip
Label](https://github.com/typst/packages/raw/main/packages/preview/salsa-
dip/0.1.0/examples/74ls00.png)

The ` dip-chip-label ` function is called with four parameters, an integer
number of pins for the chip, the width (usually ` 0.24in ` or ` 0.54in ` ),
the list of pin labels (if no labels are desired, an empty array can be
passed), and the chip label.

There is an additional ` settings ` parameter which can be used to fine tune
the apperance of the chip labels. The ` settings ` parameter is a dictionary
optionally containing any of the setting keys:

  * ` chip-label-size ` : Font size for the chip label 
  * ` pin-number-margin ` : Margin to give next to pin numbers 
  * ` pin-number-size ` : Font size for pin numbers 
  * ` pin-label-size ` : Font size for pin labels 
  * ` include-numbers ` : Boolean enabling pin numbers 
  * ` pin-spacing ` : Spacing of pins 
  * ` vertical-margin ` : Total margin to put into spacing above and below pin labels 

###  How to add

Copy this into your project and use the import as  ` salsa-dip `

    
    
    #import "@preview/salsa-dip:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Ashlen Plasek ](https://gitlab.com/users/ashplasek)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     June 17, 2024 
First released:

     June 17, 2024 
Archive size:

     2.49 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/salsa-dip-0.1.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/ashplasek/salsa-dip)

###  Where to report issues?

This  package  is a project of  Ashlen Plasek  .  Report issues on  [ their
repository ](https://gitlab.com/ashplasek/salsa-dip) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

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

