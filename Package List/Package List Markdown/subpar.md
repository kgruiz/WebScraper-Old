#  subpar

0.2.0

Create sub figures easily.

Subpar is a [ Typst ](https://typst.app/) package for creating sub figures.

    
    
    #import "@preview/subpar:0.2.0"
    
    #set page(height: auto)
    #set par(justify: true)
    
    #subpar.grid(
      figure(image("/assets/andromeda.jpg"), caption: [
        An image of the andromeda galaxy.
      ]), <a>,
      figure(image("/assets/mountains.jpg"), caption: [
        A sunset illuminating the sky above a mountain range.
      ]), <b>,
      columns: (1fr, 1fr),
      caption: [A figure composed of two sub figures.],
      label: <full>,
    )
    
    Above in @full, we see a figure which is composed of two other figures, namely @a and @b.
    

![ex](https://github.com/typst/packages/raw/main/packages/preview/subpar/0.2.0/examples/example.png)

##  Contributing

Contributions are most welcome, make sure to let others know youâre working
on something beforehand so no two people waste their time working on the same
issue. Itâs recommended to have [ ` typst-test `
](https://github.com/tingerrr/typst-test) installed to run tests locally.

##  Documentation

A guide and API-reference for subpar can be found in itâs [ manual
](https://github.com/typst/packages/raw/main/packages/preview/subpar/0.2.0/doc/manual.pdf)
.

###  How to add

Copy this into your project and use the import as  ` subpar `

    
    
    #import "@preview/subpar:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ tinger ](mailto:me@tinger.dev)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 18, 2024 
First released:

     May 3, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     1.15 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/subpar-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/tingerrr/subpar)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)

###  Where to report issues?

This  package  is a project of  tinger  .  Report issues on  [ their
repository ](https://github.com/tingerrr/subpar) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 18, 2024   
[ 0.1.1 ](https://typst.app/universe/package/subpar/0.1.1/) |  July 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/subpar/0.1.0/) |  May 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

