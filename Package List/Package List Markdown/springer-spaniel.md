![A preview of the springer-spaniel Typst
template.](https://packages.typst.org/preview/thumbnails/springer-
spaniel-0.1.0-small.webp)

#  springer-spaniel

0.1.0

A loose recreation of the Springer Contributed Chapter template on Overleaf

Featured  Template

[ Create project in app ](/app?template=springer-spaniel&version=0.1.0)

Version 0.1.0

This is an loose recreation of the _Springer Contributed Chapter_ LaTeX
template on Overleaf. It aims to provide template-level support for commonly
used packages so you donât have to choose between style and features.

##  Media

![Light](https://github.com/typst/packages/raw/main/packages/preview/springer-
spaniel/0.1.0/thumbnails/1.png)
![Dark](https://github.com/typst/packages/raw/main/packages/preview/springer-
spaniel/0.1.0/thumbnails/2.png)
![Light](https://github.com/typst/packages/raw/main/packages/preview/springer-
spaniel/0.1.0/thumbnails/3.png)

##  Getting Started

These instructions will get you a copy of the project up and running on the
typst web app. Perhaps a short code example on importing the package and a
very simple teaser usage.

    
    
    #import "@preview/springer-spaniel:0.1.0"
    #import springer-spaniel.ctheorems: * // provides "proof", "theorem", "lemma"
    
    #show: springer-spaniel.template(
      title: [Contribution Title],
      authors: (
        (
          name: "Name of First Author",
          institute: "Name",
          address: "Address of Institute",
          email: "name@email.address"
        ),
        // ... and so on
      ),
      abstract: lorem(75),
    
      // debug: true, // Highlights structural elements and links
      // frame: 1pt, // A border around the page for white on white display
      // printer-test: true, // Suitably placed CMYK printer tests
    )
    
    = Section Heading
    == Subsection Heading
    === Subsubsection Heading
    ==== Paragraph Heading
    ===== Subparagraph Heading
    

###  Local Installation

To install this project locally, follow the steps below;

  * Install Just 
  * Clone repository 
  * In a bash compatible shell, ` just install-preview `

[ Create project in app ](/app?template=springer-spaniel&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/springer-spaniel:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     James R. Swift 
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     July 16, 2024 
First released:

     July 16, 2024 
Archive size:

     437 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/springer-spaniel-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JamesxX/springer-spaniel)
Discipline  s  :

    

  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  ies  :

    

  * ![Book icon](/assets/icons/16-docs.svg) [ Book ](https://typst.app/universe/search/?category=book)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  James R. Swift  .  Report issues on  [ their
repository ](https://github.com/JamesxX/springer-spaniel) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

