#  marginalia

0.1.1

Configurable margin-notes and matching wide blocks.

##  Setup

Put something akin to the following at the start of your ` .typ ` file:

    
    
    #import "@preview/marginalia:0.1.1" as marginalia: note, wideblock
    #let config = (
      // inner: ( far: 5mm, width: 15mm, sep: 5mm ),
      // outer: ( far: 5mm, width: 15mm, sep: 5mm ),
      // top: 2.5cm,
      // bottom: 2.5cm,
      // book: false,
      // clearance: 8pt,
      // flush-numbers: false,
      // numbering: /* numbering-function */,
    )
    #marginalia.configure(..config)
    #set page(
      // setup margins:
      ..marginalia.page-setup(..config),
      /* other page setup */
    )
    

If ` book ` is ` false ` , ` inner ` and ` outer ` correspond to the left and
right margins respectively. If book is true, the margins swap sides on even
and odd pages. Notes are placed in the outside margin by default.

Where you can then customize ` config ` to your preferences. Shown here (as
comments) are the default values taken if the corresponding keys are unset. [
Please refer to the PDF documentation for more details on the configuration
and the provided commands. ](https://github.com/nleanba/typst-
marginalia/blob/v0.1.1/Marginalia.pdf)

##  Margin-Notes

Provided via the ` #note[...] ` command.

  * ` #note(reverse: true)[...] ` to put it on the inside margin. 
  * ` #note(numbered: false)[...] ` to remove the marker. 

Note: it is recommended to reset the counter for the markers regularly, e.g.
by putting ` marginalia.notecounter.update(0) ` into the code for your header.

##  Wide Blocks

Provided via the ` #wideblock[...] ` command.

  * ` #wideblock(reverse: true)[...] ` to extend into the inside margin instead. 
  * ` #wideblock(double: true)[...] ` to extend into both margins. 

Note: ` reverse ` and ` double ` are mutually exclusive.

Note: Wideblocks do not handle pagebreaks in ` book: true ` documents well.

##  Figures

You can use figures as normal, also within wideblocks. To get captions on the
side, use

    
    
    #set figure(gap: 0pt)
    #set figure.caption(position: top)
    #show figure.caption.where(position: top): note.with(numbered: false, dy: 1em)
    

For small figures, the package also provides a ` notefigure ` command which
places the figure in the margin.

    
    
    #marginalia.notefigure(
      rect(width: 100%),
      label: <aaa>,
      caption: [A notefigure.],
    )
    

* * *

[ ![first page of the
documentation](https://raw.githubusercontent.com/nleanba/typst-
marginalia/refs/tags/v0.1.1/preview.svg) ](https://github.com/nleanba/typst-
marginalia/blob/v0.1.1/Marginalia.pdf)

###  How to add

Copy this into your project and use the import as  ` marginalia `

    
    
    #import "@preview/marginalia:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ nleanba ](https://github.com/nleanba)
License:

     Unlicense 
Current version:

     0.1.1 
Last updated:

     November 25, 2024 
First released:

     November 19, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     6.17 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/marginalia-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/nleanba/typst-marginalia)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  nleanba  .  Report issues on  [ their
repository ](https://github.com/nleanba/typst-marginalia) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 25, 2024   
[ 0.1.0 ](https://typst.app/universe/package/marginalia/0.1.0/) |  November 19, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

