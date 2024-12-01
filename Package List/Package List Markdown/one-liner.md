#  one-liner

0.1.0

Automatically adjust the text size to make it fit on one line filling the
available space.

One-liner is a package containing a helper function to fit text to the
available width, without wrapping, by adjusting the text size based upon the
context. This is useful in templates where you donât know the length of text
that is supposed to fit in specific locations in your template.

##  Example

In the current version(0.1.0) one-liner contains 1 function: fit-to-width that
can used as follows:

    
    
    #import "@preview/one-liner:0.1.0": fit-to-width 
    
    #block(
      height: 3cm,
      width: 10cm,
      fill: luma(230),
      inset: 8pt,
      radius: 4pt,
      align(horizon + center,fit-to-width(lorem(2))),
    )
    

Here we have a block of specific dimensions. Using fit-to-width will change
the font-size to the content passed to fit-to-width will fit the full width
without wrapping the content.

![Example1](https://github.com/typst/packages/raw/main/packages/preview/one-
liner/0.1.0/img/example1.png)

##  fit-to-width function

Besides content the function has two parameters:

_max-text-size_ of type length. It has a default of 64pt. When fit-to-width is
limited by the max-text-size you will see that not the entire width of space
is used.

_min-text-size_ of type length. It has a default of 4pt. When fit-to-width is
limited by the min-text-size you will see that the text will wrap, because the
min-text-size is bigger than the size that would be required to prevent
wrapping.

##  Disclaimer

This package was only tested in a few of my own documents and only to fit
text. Not tested with other content yet.

###  How to add

Copy this into your project and use the import as  ` one-liner `

    
    
    #import "@preview/one-liner:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Marco ](https://github.com/mtolk)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 12, 2024 
First released:

     November 12, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     2.00 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/one-liner-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mtolk/one-liner)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Marco  .  Report issues on  [ their repository
](https://github.com/mtolk/one-liner) .  You can also try to ask for help with
this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 12, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

