#  gviz

0.1.0

Generate graphs using the graphviz dot language.

GViz is a typst plugin that can render graphviz graphs.

It uses [ https://codeberg.org/Sekoia/layout
](https://codeberg.org/Sekoia/layout) as a backend, which means it can
currently only render to SVG, and mostly supports basic features.

Import it like any other plugin: ` #import "@preview/gviz:0.1.0": * ` .

##  Usage

    
    
    #import "@preview/gviz:0.1.0": *
    
    #show raw.where(lang: "dot-render"): it => render-image(it.text)
    
    ```dot-render
    digraph mygraph {
      node [shape=box];
      A -> B;
      B -> C;
      B -> D;
      C -> E;
      D -> E;
      E -> F;
      A -> F [label="one"];
      A -> F [label="two"];
      A -> F [label="three"];
      A -> F [label="four"];
      A -> F [label="five"];
    }```
    
    #let my-graph = "digraph {A -> B}"
    #render-image(my-graph)
    
    SVG:
    #raw(render(my-graph), block: true, lang: "svg")
    

##  API

###  render

Renders a graph in dot language and returns SVG code for it.

Parameters:

  * code (string, bytes): Dot language code to be rendered. 

Returns: string

###  render-image

Renders a graph in dot language and returns an SVG image of it. Uses the same
parameters as image.decode.

Parameters:

  * code (string, bytes): Dot language code to be rendered. 
  * width (auto, relative): The width of the image. 
  * height (auto, relative): The height of the image. 
  * alt (none, string): A text describing the image. 
  * fit (string): How the image should adjust itself to a given area. See image.decode. 

Returns: content

###  How to add

Copy this into your project and use the import as  ` gviz `

    
    
    #import "@preview/gviz:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Sekoia ](https://codeberg.org/Sekoia> <https://github.com/SekoiaTree)
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     September 15, 2023 
First released:

     September 15, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     85.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/gviz-0.1.0.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/Sekoia/gviz-typst)

###  Where to report issues?

This  package  is a project of  Sekoia  .  Report issues on  [ their
repository ](https://codeberg.org/Sekoia/gviz-typst) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 15, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

