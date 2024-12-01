#  fractusist

0.1.0

Create a variety of wonderful fractals in Typst.

Create a variety of wonderful fractals in Typst.

##  Examples

The example below creates a dragon curve of the 12th iteration with the `
dragon-curve ` function.

![The rendered dragon
curve](https://github.com/typst/packages/raw/main/packages/preview/fractusist/0.1.0/examples/dragon-
curve-n12.png)

Show code

    
    
    #set page(width: auto, height: auto, margin: 0pt)
    
    #dragon-curve(
      12,
      step-size: 6,
      stroke-style: stroke(
        paint: gradient.linear(..color.map.crest, angle: 45deg),
        thickness: 3pt,
        cap: "square"
      )
    )
    

##  Features

  * Use SVG backend for image rendering. 
  * Generate fractals using [ L-system ](https://en.wikipedia.org/wiki/L-system) . 
  * The number of iterations, step size, fill and stroke styles, etc. of generated fractals could be customized. 

##  Usage

Import the latest version of this package with:

    
    
    #import "@preview/fractusist:0.1.0": *
    

Each function generates a specific fractal. The input and output arguments of
all functions have a similar style. Typical input arguments are as follows:

  * ` n ` : the number of iterations ( **the valid range of values depends on the specific function** ). 
  * _` step-size ` _ : step size (in pt). 
  * _` fill-style ` _ : fill style, can be ` none ` or color or gradient ( **exists only when the curve is closed** ). 
  * _` stroke-style ` _ : stroke style, can be ` none ` or color or gradient or stroke object. 
  * _` width ` _ : the width of the image. 
  * _` height ` _ : the height of the image. 
  * _` fit ` _ : how the image should adjust itself to a given area, âcoverâ / âcontainâ / âstretchâ. 

The content returned is the ` image ` element.

For more codes with these functions see [ tests
](https://github.com/typst/packages/raw/main/packages/preview/fractusist/0.1.0/tests)
.

##  Reference

###  Dragon

  * ` dragon-curve ` : Generate dragon curve (n: range **[0, 16]** ). 

    
    
    #let dragon-curve(n, step-size: 10, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

###  Hilbert

  * ` hilbert-curve ` : Generate 2D Hilbert curve. (n: range **[1, 8]** ). 

    
    
    #let hilbert-curve(n, step-size: 10, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

  * ` peano-curve ` : Generate 2D Peano curve (n: range **[1, 5]** ). 

    
    
    #let peano-curve(n, step-size: 10, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

###  Koch

  * ` koch-curve ` : Generate Koch curve (n: range **[0, 6]** ). 

    
    
    #let koch-curve(n, step-size: 10, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

  * ` koch-snowflake ` : Generate Koch snowflake (n: range **[0, 6]** ). 

    
    
    #let koch-snowflake(n, step-size: 10, fill-style: none, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

###  SierpiÅski

  * ` sierpinski-curve ` : Generate classic SierpiÅski curve (n: range **[0, 7]** ). 

    
    
    #let sierpinski-curve(n, step-size: 10, fill-style: none, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

  * ` sierpinski-square-curve ` : Generate SierpiÅski square curve (n: range **[0, 7]** ). 

    
    
    #let sierpinski-square-curve(n, step-size: 10, fill-style: none, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

  * ` sierpinski-arrowhead-curve ` : Generate SierpiÅski arrowhead curve (n: range **[0, 8]** ). 

    
    
    #let sierpinski-arrowhead-curve(n, step-size: 10, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

  * ` sierpinski-triangle ` : Generate 2D SierpiÅski triangle (n: range **[0, 6]** ). 

    
    
    #let sierpinski-triangle(n, step-size: 10, fill-style: none, stroke-style: black + 1pt, width: auto, height: auto, fit: "cover") = {...}
    

###  How to add

Copy this into your project and use the import as  ` fractusist `

    
    
    #import "@preview/fractusist:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Guangxi Liu ](https://github.com/liuguangxi)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 6, 2024 
First released:

     May 6, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     5.75 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/fractusist-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/liuguangxi/fractusist)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Guangxi Liu  .  Report issues on  [ their
repository ](https://github.com/liuguangxi/fractusist) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 6, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

