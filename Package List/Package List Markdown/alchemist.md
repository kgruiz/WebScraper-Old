#  alchemist

0.1.2

A package to render skeletal formulas using cetz

Featured  Package

Alchemist is a typst package to draw skeletal formulae. It is based on the [
chemfig ](https://ctan.org/pkg/chemfig) package. The main goal of alchemist is
not to reproduce one-to-one chemfig. Instead, it aims to provide an interface
to achieve the same results in Typst.

    
    
    #skeletize({
      molecule(name: "A", "A")
      single()
      molecule("B")
      branch({
        single(angle: 1)
        molecule(
          "W",
          links: (
            "A": double(stroke: red),
          ),
        )
        single()
        molecule(name: "X", "X")
      })
      branch({
        single(angle: -1)
        molecule("Y")
        single()
        molecule(
          name: "Z",
          "Z",
          links: (
            "X": single(stroke: black + 3pt),
          ),
        )
      })
      single()
      molecule(
        "C",
        links: (
          "X": cram-filled-left(fill: blue),
          "Z": single(),
        ),
      )
    })
    

![links](https://raw.githubusercontent.com/Robotechnic/alchemist/master/images/links1.png)

Alchemist uses cetz to draw the molecules. This means that you can draw cetz
shapes in the same canvas as the molecules. Like this:

    
    
    #skeletize({
      import cetz.draw: *
      double(absolute: 30deg, name: "l1")
      single(absolute: -30deg, name: "l2")
      molecule("X", name: "X")
      hobby(
        "l1.50%",
        ("l1.start", 0.5, 90deg, "l1.end"),
        "l1.start",
        stroke: (paint: red, dash: "dashed"),
        mark: (end: ">"),
      )
      hobby(
        (to: "X.north", rel: (0, 1pt)),
        ("l2.end", 0.4, -90deg, "l2.start"),
        "l2.50%",
        mark: (end: ">"),
      )
    })
    

![cetz](https://raw.githubusercontent.com/Robotechnic/alchemist/master/images/cetz1.png)

##  Usage

To start using alchemist, just use the following code:

    
    
    #import "@preview/alchemist:0.1.2": *
    
    #skeletize({
      // Your molecule here
    })
    

For more information, check the [ manual
](https://raw.githubusercontent.com/Robotechnic/alchemist/master/doc/manual.pdf)
.

##  Changelog

###  0.1.2

  * Added default values for link style properties. 
  * Updated ` cetz ` to version 0.3.1. 
  * Added a ` tip-lenght ` argument to dashed cram links. 

###  0.1.1

  * Exposed the ` draw-skeleton ` function. This allows to draw in a cetz canvas directly. 
  * Fixed multiples bugs that causes overdraws of links. 

###  0.1.0

  * Initial release 

###  How to add

Copy this into your project and use the import as  ` alchemist `

    
    
    #import "@preview/alchemist:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Robotechnic ](https://github.com/Robotechnic)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     November 13, 2024 
First released:

     August 14, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     11.5 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/alchemist-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/Robotechnic/alchemist)
Discipline  s  :

    

  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Biology ](https://typst.app/universe/search/?discipline=biology)

Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Robotechnic  .  Report issues on  [ their
repository ](https://github.com/Robotechnic/alchemist) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  November 13, 2024   
[ 0.1.1 ](https://typst.app/universe/package/alchemist/0.1.1/) |  August 19, 2024   
[ 0.1.0 ](https://typst.app/universe/package/alchemist/0.1.0/) |  August 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

