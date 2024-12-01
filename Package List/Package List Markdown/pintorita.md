#  pintorita

0.1.2

Package to draw Sequence Diagrams, Entity Relationship Diagrams, Component
Diagrams, Activity Diagrams, Mind Maps, Gantt Diagrams, and DOT Diagrams based
on Pintora which is heavily influenced by mermaid.js and plantuml.

[ Pintora ](https://pintorajs.vercel.app/)

Typst package for drawing the following from markup:

  * Sequence Diagram 
  * Entity Relationship Diagram 
  * Component Diagram 
  * Activity Diagram 
  * Mind Map Experiment 
  * Gantt Diagram Experiment 
  * DOT Diagram Experiment 

![](https://github.com/typst/packages/raw/main/packages/preview/pintorita/0.1.2/pintorita.svg)

    
    
    #import "@preview/pintorita:0.1.2"
    
    #set page(height: auto, width: auto, fill: black, margin: 2em)
    #set text(fill: white)
    
    #show raw.where(lang: "pintora"): it => pintorita.render(it.text)
    
    = pintora
    
    Typst just got a load of diagrams. 
    
    ```pintora
    mindmap
    @param layoutDirection TB
    + UML Diagrams
    ++ Behavior Diagrams
    +++ Sequence Diagram
    +++ State Diagram
    +++ Activity Diagram
    ++ Structural Diagrams
    +++ Class Diagram
    +++ Component Diagram
    ```
    
    ```
    mindmap
    @param layoutDirection TB
    + UML Diagrams
    ++ Behavior Diagrams
    +++ Sequence Diagram
    +++ State Diagram
    +++ Activity Diagram
    ++ Structural Diagrams
    +++ Class Diagram
    +++ Component Diagram
    ```
    
    

##  Documentation

###  ` render `

Render a pintora string to an image

####  Arguments

  * ` src ` : ` str ` \- pintora source string 
  * ` factor ` : scale output svg, âfactor:0.5â will scale images down by half, so scale can be consistent across renders. 
  * ` style ` : ` str ` diagram style, ` default ` or ` dark ` or ` larkLight ` or ` larkDark `
  * ` font ` : ` str ` font family, default is ` Source Code Pro, sans-serif `
  * All other arguments are passed to ` image.decode ` so you can customize the image size 

####  Returns

The image, of type ` content `

###  ` render-svg `

Render a pintora string to an image

####  Arguments

  * ` src ` : ` str ` \- pintora source string 
  * ` factor ` : scale output svg, âfactor:0.5â will scale images down by half, so scale can be consistent across renders. 
  * ` style ` : ` str ` diagram style, ` default ` or ` dark ` or ` larkLight ` or ` larkDark `
  * ` font ` : ` str ` font family, default is ` Source Code Pro, sans-serif `
  * All other arguments are passed to ` image.decode ` so you can customize the image size 

####  Returns

The svg image

##  History

  * 0.1.0 - Inital Release 
  * 0.1.1 - Updated to Jogs 0.2.3 and pintora 0.7.3 
  * 0.1.2 - Fixed strange offset of text rows in class diagram, added ` render-svg ` function and more customization options 

###  How to add

Copy this into your project and use the import as  ` pintorita `

    
    
    #import "@preview/pintorita:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     Min Chen (hikerpig)  & Taylorh140 
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     October 4, 2024 
First released:

     January 16, 2024 
Archive size:

     725 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pintorita-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/taylorh140/typst-pintora)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Min Chen (hikerpig) and Taylorh140  .  Report
issues on  [ their repository ](https://github.com/taylorh140/typst-pintora) .
You can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 4, 2024   
[ 0.1.1 ](https://typst.app/universe/package/pintorita/0.1.1/) |  April 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/pintorita/0.1.0/) |  January 16, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

