#  gridlock

0.2.0

Grid typesetting in Typst

Grid typesetting in Typst. Use this package if you want to line up your body
text across columns and pages.

##  Example

![An example image showing a two-column page with headings, a block quote, a
footnote, a figure, a display formula, and a bulleted list. All body text in
both columns lines
up.](https://github.com/typst/packages/raw/main/packages/preview/gridlock/0.2.0/docs/assets/example-
lines.png)

##  Getting Started

    
    
    #import "@preview/gridlock:0.2.0": *
    
    #show: gridlock.with()
    
    #lock[= This is a heading]
    
    #lorem(30)
    
    #figure(
      placement: auto,
      caption: [a caption],
      rect()
    )
    
    #lorem(30)
    

##  Usage

Check out [ the manual
](https://github.com/typst/packages/raw/main/packages/preview/gridlock/0.2.0/docs/gridlock-
manual.pdf) for a detailed description.

To get started, import the package into your document:

    
    
    #import "@preview/gridlock:0.2.0": *
    

Set up the basic parameters:

    
    
    #show: gridlock.with(
      paper: "a4",
      margin: (y: 76.445pt),
      font-size: 11pt,
      line-height: 13pt
    )
    

You can now use the ` lock() ` function to align any block to the text grid.
Block quotes bulleted/numbered lists, and floating figures do _not_ need to be
wrapped in ` lock() ` . Their spacing is handled fully automatically.

    
    
    #lock[= Heading]
    
    #lorem(50)
    
    #lock(figure(
      rect(),
      caption: [An example figure aligned to the grid.]
    ))
    
    #lorem(50)
    
    #lock[$ a^2 = b^2 + c^2 $]
    
    #lorem(50)
    

###  How to add

Copy this into your project and use the import as  ` gridlock `

    
    
    #import "@preview/gridlock:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     ssotoen 
License:

     Unlicense 
Current version:

     0.2.0 
Last updated:

     October 21, 2024 
First released:

     August 8, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.03 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/gridlock-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ssotoen/gridlock)
Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  ssotoen  .  Report issues on  [ their
repository ](https://github.com/ssotoen/gridlock) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/gridlock/0.1.0/) |  August 8, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

