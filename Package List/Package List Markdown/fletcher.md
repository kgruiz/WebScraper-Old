#  fletcher

0.5.2

Draw diagrams with nodes and arrows.

Featured  Package

[ ![Manual](https://img.shields.io/badge/docs-manual.pdf-green)
](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/manual.pdf?raw=true)
![Version](https://img.shields.io/badge/version-0.5.2-green) [ ![Development
version](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fgithub.com%2FJollywatt%2Ftypst-
fletcher%2Fraw%2Fdev%2Ftypst.toml&query=package.version&label=dev&color=blue)
](https://github.com/Jollywatt/typst-fletcher/tree/dev) [
![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/Jollywatt/typst-fletcher)

_**fletcher** (noun) a maker of arrows _

A [ Typst ](https://typst.app/) package for drawing diagrams with arrows,
built on top of [ CeTZ ](https://github.com/johannes-wolf/cetz) . See the [
manual
](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/manual.pdf?raw=true)
for documentation.

    
    
    #import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge
    

![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/readme-
examples/first-isomorphism-theorem-light.svg)

    
    
    #diagram(cell-size: 15mm, $
      G edge(f, ->) edge("d", pi, ->>) & im(f) \
      G slash ker(f) edge("ur", tilde(f), "hook-->")
    $)
    

![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/readme-
examples/flowchart-trap-light.svg)

    
    
    // https://xkcd.com/1195/
    #import fletcher.shapes: diamond
    #set text(font: "Comic Neue", weight: 600)
    
    #diagram(
      node-stroke: 1pt,
      edge-stroke: 1pt,
      node((0,0), [Start], corner-radius: 2pt, extrude: (0, 3)),
      edge("-|>"),
      node((0,1), align(center)[
        Hey, wait,\ this flowchart\ is a trap!
      ], shape: diamond),
      edge("d,r,u,l", "-|>", [Yes], label-pos: 0.1)
    )
    

![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/readme-
examples/state-machine-light.svg)

    
    
    #set text(10pt)
    #diagram(
      node-stroke: .1em,
      node-fill: gradient.radial(blue.lighten(80%), blue, center: (30%, 20%), radius: 80%),
      spacing: 4em,
      edge((-1,0), "r", "-|>", `open(path)`, label-pos: 0, label-side: center),
      node((0,0), `reading`, radius: 2em),
      edge(`read()`, "-|>"),
      node((1,0), `eof`, radius: 2em),
      edge(`close()`, "-|>"),
      node((2,0), `closed`, radius: 2em, extrude: (-2.5, 0)),
      edge((0,0), (0,0), `read()`, "--|>", bend: 130deg),
      edge((0,0), (2,0), `close()`, "-|>", bend: -40deg),
    )
    

![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/readme-
examples/feynman-diagram-light.svg)

    
    
    #diagram($
      e^- edge("rd", "-<|-") & & & edge("ld", "-|>-") e^+ \
      & edge(gamma, "wave") \
      e^+ edge("ru", "-|>-") & & & edge("lu", "-<|-") e^- \
    $)
    

Pull requests are most welcome!

[ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/commutative.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/commutative.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/algebra-cube.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/algebra-cube.typ)  
---|---  
[ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/ml-architecture.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/ml-architecture.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/io-flowchart.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/io-flowchart.typ)  
[ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/digraph.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/digraph.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/node-groups.svg) ](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/node-groups.typ)  
[
![](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/uml-
diagram.svg)
](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/gallery/uml-
diagram.typ)  
  
##  Change log

###  0.5.2

  * **Require` typst ` version ` >=0.12.0 ` . **
  * Update ` cetz ` dependency to ` 0.3.1 ` . **Note:** This may slightly change edge label positions. 
  * Add ` loop-angle ` option to ` edge() ` (#36). 

###  0.5.1

  * Fix nodes which ` enclose ` absolute coordinates. 
  * Allow CeTZ-style coordinate expressions in node ` enclose ` option. 
  * Fix crash with polar coordinates. 
  * Fix edges which bend at 0deg or 180deg (e.g., ` edge("r,r") ` or ` edge("r,l") ` ) and enhance the way the corner radius adapts to the bend angle. **Note:** This may change diagram layout from previous versions. 
  * Improve error messages. 
  * Add marks for crowâs foot notation: ` n ` (many), ` n? ` (zero or more), ` n! ` (one or more), ` 1 ` (one), ` 1? ` (zero or one), ` 1! ` (exactly one). 
  * Add ` node-shape ` option to ` diagram() ` . 

###  0.5.0

  * Greatly enhance coordinate system. 
    * Support CeTZ-style coordinate expressions (relative, polar, interpolating, named coordinates, etc). 
    * Absolute coordinates (physical lengths) can be used alongside âelasticâ coordinates (row/column positions). 
  * Add ` label-angle ` option to ` edge() ` . 
  * Add ` label-wrapper ` option to allow changing the label inset, outline stroke, and so on (#26). 
  * Add ` label-size ` option to control default edge label text size (#35) 
  * Add ` trapezium ` node shape. 
  * Disallow string labels to be passed as positional arguments to ` edge() ` (to eliminate ambiguity). Used named argument or pass content instead. 

###  0.4.5

  * Add isosceles triangle node shape (#31). 
  * Add ` fit ` and ` dir ` options to various node shapes to adjust sizing and orientation. 
  * Allow more than one consecutive edge to have an implicit end vertex. 
  * Allow ` snap-to ` to be ` none ` to disable edge snapping (#32). 

###  0.4.4

  * Support fully customisable marks/arrowheads! 
    * Added new mark styles and tweaked some existing defaults. **Note.** This may change the micro-typography of diagrams from previous versions. 
  * Add node groups via the ` enclose ` option of ` node() ` . 
  * Node labels can be aligned inside the node with ` align() ` . 
  * Node labels wrap naturally when label text is wider than the node. **Note:** This may change diagram layout from previous versions. 
  * Add a ` layer ` option to nodes and edges to control drawing order. 
  * Add node shapes: ` ellipse ` , ` octagon ` . 

###  0.4.3

  * Fixed edge crossing backgrounds being drawn above nodes (#14). 
  * Add ` fletcher.hide() ` to hide elements with/without affecting layout, useful for incremental diagrams in slides (#15). 
  * Support ` shift ` ing edges by coordinate deltas as well as absolute lengths (#13). 
  * Support node names (#8). 

###  0.4.2

  * Improve edge-to-node snapping. Edges can terminate anywhere near a node (not just at its center) and will automatically snap to the node outline. Added ` snap-to ` option to ` edge() ` . 
  * Fix node ` inset ` being half the amount specified. If upgrading from previous version, you will need to divide node ` inset ` values by two to preserve diagram layout. 
  * Add ` decorations ` option to ` edge() ` for CeTZ path decorations ( ` "wave" ` , ` "zigzag" ` , and ` "coil" ` , also accepted as positional string arguments). 

###  0.4.1

  * Support custom node shapes! Edges connect to node outlines automatically. 
    * New ` shapes ` submodule, containing ` diamond ` , ` pill ` , ` parallelogram ` , ` hexagon ` , and other node shapes. 
  * Allow edges to have multiple segments. 
    * Add ` vertices ` an ` corner-radius ` options to ` edge() ` . 
    * Relative coordinate shorthands may be comma separated to signify multiple segments, e.g., ` "r,u,ll" ` . 
  * Add ` dodge ` option to ` edge() ` to adjust end points. 
  * Support ` cetz:0.2.0 ` . 

###  0.4.0

  * Add ability to specify diagrams in math-mode, using ` & ` to separate nodes. 
  * Allow implicit and relative edge coordinates, e.g., ` edge("d") ` becomes ` edge(prev-node, (0, 1)) ` . 
  * Add ability to place marks anywhere along an edge. Shorthands now accept an optional middle mark, for example ` |->-| ` and ` hook-/->> ` . 
  * Add âhanging tailâ correction to marks on curved edges. Marks now rotate a bit to fit more comfortably along tightly curving arcs. 
  * Add more arrowheads for the sake of it: ` }> ` , ` <{ ` , ` / ` , ` \ ` , ` x ` , ` X ` , ` * ` (solid dot), ` @ ` (solid circle). 
  * Add ` axes ` option to ` diagram() ` to control the direction of each axis in the diagramâs coordinate system. 
  * Add ` width ` , ` height ` and ` radius ` options to ` node() ` for explicit control over size. 
  * Add ` corner-radius ` option to ` node() ` . 
  * Add ` stroke ` option to ` edge() ` replacing ` thickness ` and ` paint ` options. 
  * Add ` edge-stroke ` option to ` diagram() ` replacing ` edge-thickness ` . 

###  0.3.0

  * Make round-style arrow heads better approximate the default math font. 
  * Add solid arrow heads with shorthand ` <|- ` , ` -|> ` and double-bar ` ||- ` , ` -|| ` . 
  * Add an ` extrude ` option to ` node() ` which duplicates and extrudes the nodeâs stroke, enabling double stroke effects. 

###  0.2.0

  * Experimental support for customising arrowheads. 
  * Add right-angled edges with ` edge(..., corner: left/right) ` . 

##  Star History

[ ![Star History Chart](https://api.star-
history.com/svg?repos=jollywatt/typst-fletcher&type=Date) ](https://star-
history.com/#jollywatt/typst-fletcher&Date)

###  How to add

Copy this into your project and use the import as  ` fletcher `

    
    
    #import "@preview/fletcher:0.5.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Joseph Wilson (Jollywatt) 
License:

     MIT 
Current version:

     0.5.2 
Last updated:

     October 25, 2024 
First released:

     November 23, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     51.1 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/fletcher-0.5.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/Jollywatt/typst-fletcher)

###  Where to report issues?

This  package  is a project of  Joseph Wilson (Jollywatt)  .  Report issues on
[ their repository ](https://github.com/Jollywatt/typst-fletcher) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.2  |  October 25, 2024   
[ 0.5.1 ](https://typst.app/universe/package/fletcher/0.5.1/) |  July 10, 2024   
[ 0.5.0 ](https://typst.app/universe/package/fletcher/0.5.0/) |  June 11, 2024   
[ 0.4.5 ](https://typst.app/universe/package/fletcher/0.4.5/) |  May 17, 2024   
[ 0.4.4 ](https://typst.app/universe/package/fletcher/0.4.4/) |  May 3, 2024   
[ 0.4.3 ](https://typst.app/universe/package/fletcher/0.4.3/) |  April 2, 2024   
[ 0.4.2 ](https://typst.app/universe/package/fletcher/0.4.2/) |  February 23, 2024   
[ 0.4.1 ](https://typst.app/universe/package/fletcher/0.4.1/) |  February 8, 2024   
[ 0.4.0 ](https://typst.app/universe/package/fletcher/0.4.0/) |  January 30, 2024   
[ 0.3.0 ](https://typst.app/universe/package/fletcher/0.3.0/) |  January 1, 2024   
[ 0.2.0 ](https://typst.app/universe/package/fletcher/0.2.0/) |  November 29, 2023   
[ 0.1.1 ](https://typst.app/universe/package/fletcher/0.1.1/) |  November 23, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

