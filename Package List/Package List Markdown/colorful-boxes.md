#  colorful-boxes

1.3.1

Predefined colorful boxes to spice up your document.

Colorful boxes in [ Typst ](https://github.com/typst/typst) .

Check out [ the example project
](https://typst.app/project/rp9q3upfc69bPUCbv0BjzX) to see all boxes in action

Current features include:

  * a colorful box is in four different colors (black, red, blue, green) 
  * a colorful box with a slanted headline 
  * a box with a simple outline 
  * a rotateable stickynote 

##  Colorbox

![colorbox_example](https://github.com/typst/packages/raw/main/packages/preview/colorful-
boxes/1.3.1/examples/colorbox.png)

###  Usage

    
    
    #colorbox(
      title: lorem(5),
      color: "blue",
      radius: 2pt,
      width: auto
    )[
      #lorem(50)
    ]
    

##  Slanted Colorbox

![slantedColorbox_example](https://github.com/typst/packages/raw/main/packages/preview/colorful-
boxes/1.3.1/examples/slanted-colorbox.png)

###  Usage

    
    
    #slanted-colorbox(
      title: lorem(5),
      color: "red",
      radius: 0pt,
      width: auto
    )[
      #lorem(50)
    ]
    

##  Outlinebox

![outlinebox_example](https://github.com/typst/packages/raw/main/packages/preview/colorful-
boxes/1.3.1/examples/outline-colorbox.png)

###  Usage

    
    
    #outlinebox(
      title: lorem(5),
      width: auto,
      radius: 2pt,
      centering: false
    )[
      #lorem(50)
    ]
    
    #outlinebox(
      title: lorem(5),
      color: "green",
      width: auto,
      radius: 2pt,
      centering: true
    )[
      #lorem(50)
    ]
    

##  Stickybox

![stickybox](https://github.com/typst/packages/raw/main/packages/preview/colorful-
boxes/1.3.1/examples/stickybox.png)

###  Usage

    
    
    #stickybox(
      rotation: 5deg,
      width: 5cm
    )[
      #lorem(20)
    ]
    

###  How to add

Copy this into your project and use the import as  ` colorful-boxes `

    
    
    #import "@preview/colorful-boxes:1.3.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Lukas KÃ¶hl ](https://github.com/lkoehl)
License:

     MIT 
Current version:

     1.3.1 
Last updated:

     March 16, 2024 
First released:

     August 6, 2023 
Archive size:

     3.09 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/colorful-boxes-1.3.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/lkoehl/typst-boxes)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Lukas KÃ¶hl  .  Report issues on  [ their
repository ](https://github.com/lkoehl/typst-boxes) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.3.1  |  March 16, 2024   
[ 1.2.0 ](https://typst.app/universe/package/colorful-boxes/1.2.0/) |  September 13, 2023   
[ 1.1.0 ](https://typst.app/universe/package/colorful-boxes/1.1.0/) |  August 19, 2023   
[ 1.0.0 ](https://typst.app/universe/package/colorful-boxes/1.0.0/) |  August 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

