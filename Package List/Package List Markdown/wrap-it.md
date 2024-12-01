#  wrap-it

0.1.1

Wrap text around figures and content

Featured  Package

Until __[ https://github.com/typst/typst/issues/553
](https://github.com/typst/typst/issues/553) _ _ is resolved, ` typst `
doesnât natively support wrapping text around figures or other content.
However, you can use ` wrap-it ` to mimic much of this functionality:

  * Wrapping images left or right of their text 

  * Specifying margins 

  * And more 

Detailed descriptions of each parameter are available in the __[ wrap-it
documentation ](https://github.com/ntjess/wrap-it/blob/main/docs/manual.pdf) _
_ .

The easiest method is to import ` wrap-it: wrap-content ` from the ` @preview
` package:

    
    
    #import "@preview/wrap-it:0.1.0": wrap-content
    

##  Vanilla

    
    
    #let fig = figure(
    rect(fill: teal, radius: 0.5em, width: 8em),
    caption: [A figure],
    )
    #let body = lorem(30)
    #wrap-content(fig, body)
    

![Example 1](https://www.github.com/ntjess/wrap-
it/raw/v0.1.1/assets/example-1.png)

##  Changing alignment and margin

    
    
    #wrap-content(
    fig,
    body,
    align: bottom + right,
    column-gutter: 2em
    )
    

![Example 2](https://www.github.com/ntjess/wrap-
it/raw/v0.1.1/assets/example-2.png)

##  Uniform margin around the image

The easiest way to get a uniform, highly-customizable margin is through boxing
your image:

    
    
    #let boxed = box(fig, inset: 0.25em)
    #wrap-content(boxed)[
    #lorem(30)
    ]
    

![Example 3](https://www.github.com/ntjess/wrap-
it/raw/v0.1.1/assets/example-3.png)

##  Wrapping two images in the same paragraph

Note that for longer captions (as is the case in the bottom figure below),
providing an explicit ` columns ` parameter is necessary to inform caption
text of where to wrap.

    
    
    #let fig2 = figure(
    rect(fill: lime, radius: 0.5em),
    caption: [#lorem(10)],
    )
    #wrap-top-bottom(
    bottom-kwargs: (columns: (1fr, 2fr)),
    box(fig, inset: 0.25em),
    fig2,
    lorem(50),
    )
    

![Example 4](https://www.github.com/ntjess/wrap-
it/raw/v0.1.1/assets/example-4.png)

##  Adding a label to a wrapped figure

Typst can only append labels to figures in content mode. So, when wrapping
text around a figure that needs a label, you must first place your figure in a
content block with its label, then wrap it:

    
    
    #show ref: it => underline(text(blue, it))
    #let fig = [
      #figure(
        rect(fill: red, radius: 0.5em, width: 8em),
        caption:[Labeled]
      )<fig:lbl>
    ]
    #wrap-content(fig, [Fortunately, @fig:lbl's label can be referenced within the wrapped text. #lorem(15)])
    

![Example 5](https://www.github.com/ntjess/wrap-
it/raw/v0.1.1/assets/example-5.png)

###  How to add

Copy this into your project and use the import as  ` wrap-it `

    
    
    #import "@preview/wrap-it:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Nathan Jessurun 
License:

     Unlicense 
Current version:

     0.1.1 
Last updated:

     November 28, 2024 
First released:

     January 26, 2024 
Archive size:

     5.30 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/wrap-it-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/ntjess/wrap-it)

###  Where to report issues?

This  package  is a project of  Nathan Jessurun  .  Report issues on  [ their
repository ](https://github.com/ntjess/wrap-it) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 28, 2024   
[ 0.1.0 ](https://typst.app/universe/package/wrap-it/0.1.0/) |  January 26, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

