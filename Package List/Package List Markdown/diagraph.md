#  diagraph

0.3.0

Draw graphs with Graphviz. Use mathematical formulas as labels.

A simple Graphviz binding for Typst using the WebAssembly plugin system.

##  Usage

###  Basic usage

You can render a Graphviz Dot string to a SVG image using the ` render `
function:

    
    
    #render("digraph { a -> b }")
    

Alternatively, you can use ` raw-render ` to pass a ` raw ` instead of a
string:

    
    
    #raw-render(
      ```dot
      digraph {
        a -> b
      }
      ```
    )
    

![raw-
render](https://raw.githubusercontent.com/Robotechnic/diagraph/main/images/raw-
render1.png)

For more information about the Graphviz Dot language, you can check the [
official documentation ](https://graphviz.org/documentation/) .

###  Advanced usage

Check the [ manual
](https://raw.githubusercontent.com/Robotechnic/diagraph/main/doc/manual.pdf)
for more information about the plugin.

##  License

This project is licensed under the MIT License - see the [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/diagraph/0.3.0/LICENSE)
file for details

##  Changelog

###  0.3.0

  * Added support for edge labels 
  * Added a manual generated with Typst 
  * Updated graphviz version 
  * Fix an error in math mode detection 

###  0.2.5

  * If the shape is point, the label isnât displayed 
  * Now a minimum size is not enforced if the node label is empty 
  * Added support for font alternatives 

###  0.2.4

  * Added support for xlabels which are now rendered by Typst 
  * Added support for cluster labels which are now rendered by Typst 
  * Fix a margin problem with the clusters 

###  0.2.3

  * Updated to typst 0.11.0 
  * Added support for ` fontcolor ` , ` fontsize ` and ` fontname ` nodes attributes 
  * Diagraph now uses a protocol generator to generate the wasm interface 

###  0.2.2

  * Fix an alignment issue 
  * Added a better mathematic formula recognition for node labels 

###  0.2.1

  * Added support for relative lenghts in the ` width ` and ` height ` arguments 
  * Fix various bugs 

###  0.2.0

  * Node labels are now handled by Typst 

###  0.1.2

  * Graphs are now scaled to make the graph text size match the document text size 

###  0.1.1

  * Remove the ` raw-render-rule ` show rule because it doesnât allow use of custom font and the ` render ` / ` raw-render ` functions are more flexible 
  * Add the ` background ` parameter to the ` render ` and ` raw-render ` typst functions and default it to ` transparent ` instead of ` white `
  * Add center attribute to draw graph in the center of the svg in the ` render ` c function 

###  0.1.0

Initial working version

###  How to add

Copy this into your project and use the import as  ` diagraph `

    
    
    #import "@preview/diagraph:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ Robotechnic ](https://github.com/Robotechnic) & [ Malo ](https://github.com/MDLC01)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     September 3, 2024 
First released:

     September 23, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     450 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/diagraph-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Robotechnic/diagraph.git)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  Robotechnic and Malo  .  Report issues on  [
their repository ](https://github.com/Robotechnic/diagraph.git) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  September 3, 2024   
[ 0.2.5 ](https://typst.app/universe/package/diagraph/0.2.5/) |  June 11, 2024   
[ 0.2.4 ](https://typst.app/universe/package/diagraph/0.2.4/) |  May 23, 2024   
[ 0.2.3 ](https://typst.app/universe/package/diagraph/0.2.3/) |  May 13, 2024   
[ 0.2.2 ](https://typst.app/universe/package/diagraph/0.2.2/) |  March 15, 2024   
[ 0.2.1 ](https://typst.app/universe/package/diagraph/0.2.1/) |  January 16, 2024   
[ 0.2.0 ](https://typst.app/universe/package/diagraph/0.2.0/) |  November 18, 2023   
[ 0.1.2 ](https://typst.app/universe/package/diagraph/0.1.2/) |  November 6, 2023   
[ 0.1.1 ](https://typst.app/universe/package/diagraph/0.1.1/) |  September 28, 2023   
[ 0.1.0 ](https://typst.app/universe/package/diagraph/0.1.0/) |  September 23, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

