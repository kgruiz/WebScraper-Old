#  typslides

1.2.1

Minimalistic Typst slides

![logo](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/logo.png)

![License](https://img.shields.io/badge/license-GPLv3-blue) [
![Contributors](https://badgen.net/github/contributors/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
[ ![Release](https://badgen.net/github/release/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
![GitHub Repo stars](https://img.shields.io/github/stars/manjavacas/typslides)

_Minimalistic[ typst ](https://typst.app/) slides! _

This is a simple usage example:

    
    
    #import "@preview/typslides:1.2.1": *
    
    // Project configuration
    #show: typslides.with(
      ratio: "16-9",
      theme: "bluey",
    )
    
    // The front slide is the first slide of your presentation
    #front-slide(
      title: "This is a sample presentation",
      subtitle: [Using _typslides_],
      authors: "Antonio Manjavacas",
      info: [#link("https://github.com/manjavacas/typslides")],
    )
    
    // Custom outline
    #table-of-contents()
    
    // Title slides create new sections
    #title-slide[
      This is a _Title slide_
    ]
    
    // A simple slide
    #slide[
      - This is a simple `slide` with no title.
      - #stress("Bold and coloured") text by using `#stress(text)`.
      - Sample link: #link("typst.app")
      - Sample references: @typst, @typslides.
    
      #framed[This text has been written using `#framed(text)`. The background color of the box is customisable.]
    
      #framed(title: "Frame with title")[This text has been written using `#framed(title:"Frame with title")[text]`.]
    ]
    
    // Focus slide
    #focus-slide[
      This is an auto-resized _focus slide_.
    ]
    
    // Blank slide
    #blank-slide[
      - This is a `#blank-slide`.
    
      - Available #stress[themes]:
    
      #text(fill: rgb("3059AB"), weight: "bold")[bluey]
      #text(fill: rgb("BF3D3D"), weight: "bold")[greeny]
      #text(fill: rgb("28842F"), weight: "bold")[reddy]
      #text(fill: rgb("C4853D"), weight: "bold")[yelly]
      #text(fill: rgb("862A70"), weight: "bold")[purply]
      #text(fill: rgb("1F4289"), weight: "bold")[dusky]
      #text(fill: black, weight: "bold")[darky]
    ]
    
    // Slide with title
    #slide(title: "This is the slide title")[
      #lorem(20)
      #grayed([This is a `#grayed` text. Useful for equations.])
      #grayed($ P_t = alpha - 1 / (sqrt(x) + f(y)) $)
      #lorem(20)
    ]
    
    // Bibliography
    #bibliography-slide("bibliography.bib")
    

`
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-1.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-2.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-3.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-4.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-5.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-6.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-7.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/slide-8.svg)
`

###  How to add

Copy this into your project and use the import as  ` typslides `

    
    
    #import "@preview/typslides:1.2.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Antonio Manjavacas ](https://github.com/manjavacas)
License:

     GPL-3.0 
Current version:

     1.2.1 
Last updated:

     November 22, 2024 
First released:

     October 29, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     15.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/typslides-1.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/manjavacas/typslides)
Categor  ies  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Antonio Manjavacas  .  Report issues on  [
their repository ](https://github.com/manjavacas/typslides) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.2.1  |  November 22, 2024   
[ 1.2.0 ](https://typst.app/universe/package/typslides/1.2.0/) |  November 12, 2024   
[ 1.1.1 ](https://typst.app/universe/package/typslides/1.1.1/) |  October 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

