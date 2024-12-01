#  crossregex

0.2.0

A crossword-like regex game written in Typst.

A crossword-like game written in Typst. You should fill in letters to satisfy
regular expression constraints. Currently, _squares_ and _regular hexagons_
are supported.

> [!note] This is not a puzzle solver, but a puzzle layout builder.

It takes inspiration from a web image, which derives our standard example.

![standard](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/standard.svg)

![sudoku](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/sudoku-
main.svg)

More examples and source code: [ https://github.com/QuadnucYard/crossregex-typ
](https://github.com/QuadnucYard/crossregex-typ)

##  Basic Usage

We use ` crossregex-square ` and ` crossregex-hex ` to build square and hex
layouts respectively. They have the same argument formats. A ` crossregex `
dispatcher function can be used for dynamic grid kind, which is compatible
with version 0.1.0.

    
    
    #import "@preview/crossregex:0.2.0": crossregex
    // or import and use `crossregex-hex`
    
    #crossregex(
      3,
      constraints: (
        `A.*`, `B.*`, `C.*`, `D.*`, `E.*`,
        `F.*`, `G.*`, `H.*`, `I.*`, `J.*`,
        `K.*`, `L.*`, `M.*`, `N.*`, `O.*`,
      ),
      answer: (
        "ABC",
        "DEFG",
        "HIJKL",
        "MNOP",
        "QRS",
      ),
    )
    
    
    
    #import "@preview/crossregex:0.2.0": crossregex-square
    
    #crossregex-square(
      9,
      alphabet: regex("[0-9]"),
      constraints: (
        `.*`,
        `.*`,
        `.*`,
        `.*`,
        `.*[12]{2}8`,
        `[1-9]9.*`,
        `.*`,
        `.*`,
        `.*`,
        `[1-9]7[29]{2}8.6.*`,
        `.*2[^3]{2}1.`,
        `.9.315[^6]+`,
        `.+4[15]{2}79.`,
        `[75]{2}18.63[1-9]+`,
        `8.*[^2][^3][^1]+56[^6]`,
        `[^5-6][0-9][56]{2}.*9`,
        `.*`,
        `[98]{2}5.*[27]{2}6`,
      ),
      answer: (
        "934872651",
        "812456937",
        "576913482",
        "125784369",
        "467395128",
        "398261574",
        "241537896",
        "783649215",
        "659128743",
      ),
      cell: rect(width: 1.4em, height: 1.4em, radius: 0.1em, stroke: 1pt + orange, fill: orange.transparentize(80%)),
      cell-config: (size: 1.6em, text-style: (size: 1.4em)),
    )
    

##  Document

Details are shown in the doc comments above the ` crossregex ` function in `
lib.typ ` . You can choose to turn off some views.

Feel free to open issues if any problems.

##  Changelog

###  0.2.0

  * Feature: Supports square shapes. 
  * Feature: Supports customization the appearance of everything, even the cells. 
  * Feature: Supports custom alphabets. 
  * Fix: An mistake related to import in the README example. 

###  0.1.0

First release with basic hex features.

###  How to add

Copy this into your project and use the import as  ` crossregex `

    
    
    #import "@preview/crossregex:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     QuadnucYard 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     September 22, 2024 
First released:

     September 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     197 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/crossregex-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/QuadnucYard/crossregex-typ)
Categor  y  :

    

  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  package  is a project of  QuadnucYard  .  Report issues on  [ their
repository ](https://github.com/QuadnucYard/crossregex-typ) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  September 22, 2024   
[ 0.1.0 ](https://typst.app/universe/package/crossregex/0.1.0/) |  September 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

