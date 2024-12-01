#  mannot

0.1.0

A package for highlighting and annotating in math blocks.

A package for highlighting and annotating in math blocks in [ Typst
](https://typst.app/) .

A full documentation is [ here
](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/docs/doc.pdf)
.

##  Example

    
    
    $
    mark(1, tag: #<num>) / mark(x + 1, tag: #<den>, color: #blue)
    + mark(2, tag: #<quo>, color: #red)
    
    #annot(<num>, pos: top)[Numerator]
    #annot(<den>)[Denominator]
    #annot(<quo>, pos: right, yshift: 1em)[Quotient]
    $
    

![Example1](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/showcase.svg)

##  Usage

Import and initialize the package ` mannot ` on the top of your document.

    
    
    #import "@preview/mannot:0.1.0": *
    #show: mannot-init
    

To highlight a part of a math block, use the ` mark ` function:

    
    
    $
    mark(x)
    $
    

![Usage1](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/usage1.svg)

You can also specify a color for the highlighted part:

    
    
    $ // Need # before color names.
    mark(3, color: #red) mark(x, color: #blue)
    + mark(integral x dif x, color: #green)
    $
    

![Usage2](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/usage2.svg)

To add an annotation to a highlighted part, use the ` annot ` function. You
need to specify the tag of the marked content:

    
    
    $
    mark(x, tag: #<x>)  // Need # before tags.
    #annot(<x>)[Annotation]
    $
    

![Usage3](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/usage3.svg)

You can customize the position of the annotation and the vertical distance
from the marked content:

    
    
    $
    mark(integral x dif x, tag: #<i>, color: #green)
    + mark(3, tag: #<3>, color: #red) mark(x, tag: #<x>, color: #blue)
    
    #annot(<i>, pos: left)[Set pos to left.]
    #annot(<i>, pos: top + left)[Top left.]
    #annot(<3>, pos: top, yshift: 1.2em)[Use yshift.]
    #annot(<x>, pos: right, yshift: 1.2em)[Auto arrow.]
    $
    

![Usage4](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/usage4.svg)

For convenience, you can define custom mark functions:

    
    
    #let rmark = mark.with(color: red)
    #let gmark = mark.with(color: green)
    #let bmark = mark.with(color: blue)
    
    $
    integral_rmark(0, tag: #<i0>)^bmark(1, tag: #<i1>)
    mark(x^2 + 1, tag: #<i2>) dif gmark(x, tag: #<i3>)
    
    #annot(<i0>)[Begin]
    #annot(<i1>, pos: top)[End]
    #annot(<i2>, pos: top + right)[Integrand]
    #annot(<i3>, pos: right, yshift: .6em)[Variable]
    $
    

![Usage5](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/examples/usage5.svg)

###  How to add

Copy this into your project and use the import as  ` mannot `

    
    
    #import "@preview/mannot:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     ryuryu-ymj 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 21, 2024 
First released:

     October 21, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     6.84 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/mannot-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ryuryu-ymj/mannot)
Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  ryuryu-ymj  .  Report issues on  [ their
repository ](https://github.com/ryuryu-ymj/mannot) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 21, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

