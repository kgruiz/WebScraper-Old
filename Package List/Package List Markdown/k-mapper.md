#  k-mapper

1.1.0

A package to add Karnaugh maps into Typst projects.

ð See the ` k-mapper ` Manual [ here
](https://github.com/derekchai/k-mapper/blob/1f334d9e0f02cc656c01835302474bf728db9f80/manual.pdf)
! The Manual features much more documentation, and is typeset using Typst.

This is a package for adding Karnaugh maps into your Typst projects.

See the changelog for the package [ here
](https://github.com/derekchai/k-mapper/blob/698e8554ce67e3a61dd30319ab8f712a6a6b8daa/changelog.md)
.

##  Features

  * 2-variable (2 by 2) Karnaugh maps 
  * 3-variable (2 by 4) Karnaugh maps 
  * 4-variable (4 by 4) Karnaugh maps 

##  Getting Started

Simply import ` k-mapper ` using the Typst package manager to begin using `
k-mapper ` within your Typst documents.

    
    
    #import "@preview/k-mapper:1.1.0": *
    

##  Example

    
    
      #karnaugh(
        16,
        x-label: $C D$,
        y-label: $A B$,
        manual-terms: (
          0, 1, 2, 3, 4, 5, 6, 7, 8, 
          9, 10, 11, 12, 13, 14, 15
        ),
        implicants: ((5, 7), (5, 13), (15, 15)),
        vertical-implicants: ((1, 11), ),
        horizontal-implicants: ((4, 14), ),
        corner-implicants: true,
      )
    

![Code
result](https://raw.githubusercontent.com/derekchai/k-mapper/005cb0a839499d0dfa90ee48d2128d41e582d755/readme-
example.png)

For more detailed documentation and examples, including function parameters,
see the Manual [ PDF
](https://github.com/derekchai/k-mapper/blob/1f334d9e0f02cc656c01835302474bf728db9f80/manual.pdf)
and [ Typst file
](https://github.com/derekchai/k-mapper/blob/1f334d9e0f02cc656c01835302474bf728db9f80/manual.typ)
in the [ Github repo ](https://github.com/derekchai/typst-karnaugh-map) .

###  How to add

Copy this into your project and use the import as  ` k-mapper `

    
    
    #import "@preview/k-mapper:1.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Derek Chai 
License:

     MIT 
Current version:

     1.1.0 
Last updated:

     May 14, 2024 
First released:

     May 13, 2024 
Archive size:

     4.52 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/k-mapper-1.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/derekchai/typst-karnaugh-map)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Derek Chai  .  Report issues on  [ their
repository ](https://github.com/derekchai/typst-karnaugh-map) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.1.0  |  May 14, 2024   
[ 1.0.0 ](https://typst.app/universe/package/k-mapper/1.0.0/) |  May 13, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

