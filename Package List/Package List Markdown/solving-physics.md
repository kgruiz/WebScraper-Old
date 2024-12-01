#  solving-physics

0.1.0

A package to formulate the solution to a physical problem

The easiest method is to import ` solving-physics: task ` from the ` @preview
` package:

    
    
    #import "@preview/solving-physics:0.1.0": *
    
    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$
      ],
      find: [
        $F$ --- ?
      ],
      fig: image("./example.png", width: 5cm)
    )[
      #lorem(100)
    ]
    

![usage](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example1.png)

    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$
      ],
      find: [
        $F$ --- ?
      ],
      stroke: "full"
    )[]
    

![full stroke](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example2.svg)

    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$
      ],
      find: [
        $F$ --- ?
      ],
      stroke: "find"
    )[]
    

![find stroke](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example3.svg)

    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$
      ],
      find: [
        $F$ --- ?
      ],
      stroke: none
    )[]
    

![none stroke](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example4.svg)

If you have so large given you may use ` given-width ` :

    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$ \
        #lorem(10)
      ],
      given-width: 6em,
      find: [
        $F$ --- ?
      ],
    )[]
    

![Given width](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example5.svg)

You may locate you figure on the center of body by ` fig-align: top + center `

    
    
    #task(
      given: [
        $mu = 0.4$ \
        $g = 10$ \
        $m = 20$
      ],
      find: [
        $F$ --- ?
      ],
      fig: image("./example.png", width: 60%),
      fig-align: top + center
    )[
      #lorem(100)
    ]
    

![Figure align](https://raw.githubusercontent.com/yegorweb/solving-
physics/master/examples/example6.png)

###  How to add

Copy this into your project and use the import as  ` solving-physics `

    
    
    #import "@preview/solving-physics:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Yegor Knyazev 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 13, 2024 
First released:

     May 13, 2024 
Archive size:

     1.86 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/solving-physics-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/yegorweb/solving-physics)
Discipline  s  :

    

  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Yegor Knyazev  .  Report issues on  [ their
repository ](https://github.com/yegorweb/solving-physics) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 13, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

