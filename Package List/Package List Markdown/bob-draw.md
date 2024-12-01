#  bob-draw

0.1.0

svgbob for typst, powered by wasm

svgbob for typst, powered by wasm

This package provides a typst plugin for rendering [ svgbob
](https://github.com/ivanceras/svgbob) diagrams.

    
    
    #import "@preview/bob-draw:0.1.0": *
    #render(```
             /\_/\
    bob ->  ( o.o )
             \ " /
      .------/  /
     (        | |
      `====== o o
    ```)
    

output:

![basic-
example](https://github.com/typst/packages/raw/main/packages/preview/bob-
draw/0.1.0/examples/basic-example.svg)

##  Full example

    
    
    #import "@preview/bob-draw:0.1.0": *
    #show raw.where(lang: "bob"): it => render(it)
    
    #let svg = bob2svg("<--->")
    #render("<--->")
    #render(
        ```
          0       3  
           *-------* 
        1 /|    2 /| 
         *-+-----* | 
         | |4    | |7
         | *-----|-*
         |/      |/
         *-------*
        5       6
        ```,
        width: 25%,
    )
    
    ```bob
    "cats:"
     /\_/\  /\_/\  /\_/\  /\_/\ 
    ( o.o )( o.o )( o.o )( o.o )
    ```
    

###  How to add

Copy this into your project and use the import as  ` bob-draw `

    
    
    #import "@preview/bob-draw:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Luca Ciucci 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 24, 2023 
First released:

     October 24, 2023 
Archive size:

     126 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bob-draw-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/LucaCiucci/bob-typ)

###  Where to report issues?

This  package  is a project of  Luca Ciucci  .  Report issues on  [ their
repository ](https://github.com/LucaCiucci/bob-typ) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 24, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

