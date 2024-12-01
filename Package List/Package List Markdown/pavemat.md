#  pavemat

0.1.0

Style matrices with custom paths, strokes and fills for appealing
visualizations.

Featured  Package

![pavement +
matrix](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/logo.svg)

repo: [ https://github.com/QuadnucYard/pavemat
](https://github.com/QuadnucYard/pavemat)

##  Introduction

The _pavemat_ is a tool for creating styled matrices with custom paths,
strokes, and fills. It allows users to define how paths should be drawn
through the matrix, apply different strokes to these paths, and fill specific
cells with various colors. This function is particularly useful for
visualizing complex data structures, mathematical matrices, and creating
custom grid layouts.

##  Examples

The logo example:

    
    
    #{
      set math.mat(row-gap: 0.25em, column-gap: 0.1em)
      set text(size: 2em)
    
      pavemat(
        pave: (
          "SDS(dash: 'solid')DDD]WW",
          (path: "sdDDD", stroke: aqua.darken(30%))
        ),
        stroke: (dash: "dashed", thickness: 1pt, paint: yellow),
        fills: (
          "0-0": green.transparentize(80%),
          "1-1": blue.transparentize(80%),
          "[0-0]": green.transparentize(60%),
          "[1-1]": blue.transparentize(60%),
        ),
        delim: "[",
      )[$mat(P, a, v, e; "", m, a, t)$]
    }
    

Code of examples can be found in [ ` examples/examples.typ `
](https://github.com/QuadnucYard/pavemat/tree/main/examples) .

![](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/example1.svg)
![](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/example2.svg)
![](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/example4.svg)
![](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/example5.svg)

##  Manual

See [ ` docs/manual.typ `
](https://github.com/QuadnucYard/pavemat/tree/main/docs) .

###  How to add

Copy this into your project and use the import as  ` pavemat `

    
    
    #import "@preview/pavemat:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ QuadnucYard ](https://github.com/QuadnucYard)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 29, 2024 
First released:

     July 29, 2024 
Archive size:

     3.60 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pavemat-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/QuadnucYard/pavemat)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  QuadnucYard  .  Report issues on  [ their
repository ](https://github.com/QuadnucYard/pavemat) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

