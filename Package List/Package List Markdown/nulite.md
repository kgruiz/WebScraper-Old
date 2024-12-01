#  nulite

0.1.0

Generate charts with vegalite.

A typst plugin to generate charts using [ vegalite
](https://vega.github.io/vega-lite/)

##  Usage

    
    
    #import "@preview/nulite:0.1.0" as vegalite
    
    #vegalite.render(
      width: 100%,
      height: 100%,
      zoom: 1,
      json("spec.json")
      )
    
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/nulite/0.1.0/examples/image.png)

The module exports a single function, ` render ` with four arguments

  * ` width ` : Width of the chart in percent of the containerâs width 
  * ` height ` : Height of the chart in percent of the containerâs height 
  * ` zoom ` : Zoom factor applied to the SVG. This mainly affects the sizing of text in relation to the graphical elements. 
  * ` spec ` : [ Vegalite specification ](https://vega.github.io/vega-lite/docs/spec.html)

##  Compatibility

This plugin uses vegalite v5.21 and vega v5.30.

The following features of vegalite are **not supported** :

  * Setting ` width ` and ` height ` in the spec. These values should be provided as arguments to ` render ` . If ` width ` or ` height ` are included in the spec then they will be ignored. 
  * Loading data with the ` url ` property. Attempting to do this will result in an error while trying to compile the ` typst ` document. All data should be provided as part of the spec itself (inline). 
  * Interactive charts and tooltips. 

###  How to add

Copy this into your project and use the import as  ` nulite `

    
    
    #import "@preview/nulite:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     j-mueller 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     September 30, 2024 
First released:

     September 30, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     686 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/nulite-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/j-mueller/typst-vegalite)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  j-mueller  .  Report issues on  [ their
repository ](https://github.com/j-mueller/typst-vegalite) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 30, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

