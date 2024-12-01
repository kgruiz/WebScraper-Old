#  hydra

0.5.1

Query and display headings in your documents and templates.

Featured  Package

Hydra is a Typst package allowing you to easily display the heading like
elements anywhere in your document. Itâs primary focus is to provide the
reader with a reminder of where they currently are in your document only when
it is needed.

##  Example

    
    
    #import "@preview/hydra:0.5.1": hydra
    
    #set page(paper: "a7", margin: (y: 4em), numbering: "1", header: context {
      if calc.odd(here().page()) {
        align(right, emph(hydra(1)))
      } else {
        align(left, emph(hydra(2)))
      }
      line(length: 100%)
    })
    #set heading(numbering: "1.1")
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    = Introduction
    #lorem(50)
    
    = Content
    == First Section
    #lorem(50)
    == Second Section
    #lorem(100)
    

![ex](https://github.com/typst/packages/raw/main/packages/preview/hydra/0.5.1/examples/example.png)

##  Documentation

For a more in-depth description of hydraâs functionality and the reference
read its [ manual
](https://github.com/typst/packages/raw/main/packages/preview/hydra/0.5.1/doc/manual.pdf)
.

##  Contribution

For contributing, please take a look [ CONTRIBUTING
](https://github.com/typst/packages/raw/main/packages/preview/hydra/0.5.1/CONTRIBUTING.md)
.

##  Etymology

The package name hydra /ËhaÉªdrÉ/ is a word play headings and headers,
inspired by the monster in greek and roman mythology resembling a serpent with
many heads.

###  How to add

Copy this into your project and use the import as  ` hydra `

    
    
    #import "@preview/hydra:0.5.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ tinger ](mailto:me@tinger.dev)
License:

     MIT 
Current version:

     0.5.1 
Last updated:

     July 25, 2024 
First released:

     November 19, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     238 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/hydra-0.5.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/tingerrr/hydra)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)

###  Where to report issues?

This  package  is a project of  tinger  .  Report issues on  [ their
repository ](https://github.com/tingerrr/hydra) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.1  |  July 25, 2024   
[ 0.5.0 ](https://typst.app/universe/package/hydra/0.5.0/) |  July 3, 2024   
[ 0.4.0 ](https://typst.app/universe/package/hydra/0.4.0/) |  March 21, 2024   
[ 0.3.0 ](https://typst.app/universe/package/hydra/0.3.0/) |  January 8, 2024   
[ 0.2.0 ](https://typst.app/universe/package/hydra/0.2.0/) |  November 25, 2023   
[ 0.1.0 ](https://typst.app/universe/package/hydra/0.1.0/) |  November 19, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

