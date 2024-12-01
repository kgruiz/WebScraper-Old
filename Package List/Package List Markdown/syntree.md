#  syntree

0.2.0

Linguistics syntax/parse tree rendering

**syntree** is a typst package for rendering syntax trees / parse trees (the
kind linguists use).

The name and syntax are inspired by Miles Shangâs [ syntree
](https://github.com/mshang/syntree) . Hereâs an example to get started:

    
    
    #import "@preview/syntree:0.2.0": syntree
    
    #syntree(
      nonterminal: (font: "Linux Biolinum"),
      terminal: (fill: blue),
      child-spacing: 3em, // default 1em
      layer-spacing: 2em, // default 2.3em
      "[S [NP This] [VP [V is] [^NP a wug]]]"
    )
    

|  ![Output tree for "This is a wug"](https://github.com/lynn/typst-
syntree/assets/16232127/d0c680b2-4fd0-420f-b350-9e9c96ac37f3)  
---|---  
  
Thereâs limited support for formulas inside nodes; try `
#syntree("[DP$zws_i$ this]") ` or ` #syntree("[C $diameter$]") ` .

For more flexible tree-drawing, use ` tree ` :

    
    
    #import "@preview/syntree:0.2.0": tree
    
    #let bx(col) = box(fill: col, width: 1em, height: 1em)
    #tree("colors",
      tree("warm", bx(red), bx(orange)),
      tree("cool", bx(blue), bx(teal)))
    

|  ![Output tree of colors](https://github.com/lynn/typst-
syntree/assets/16232127/bc979614-e2ce-4616-97d1-1584788fc71f)  
---|---  
  
###  How to add

Copy this into your project and use the import as  ` syntree `

    
    
    #import "@preview/syntree:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Lynn ](https://github.com/lynn)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     January 12, 2024 
First released:

     July 8, 2023 
Archive size:

     2.50 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/syntree-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/lynn/typst-syntree)

###  Where to report issues?

This  package  is a project of  Lynn  .  Report issues on  [ their repository
](https://github.com/lynn/typst-syntree) .  You can also try to ask for help
with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  January 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/syntree/0.1.0/) |  July 8, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

