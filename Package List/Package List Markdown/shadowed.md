#  shadowed

0.1.2

Box shadows for Typst

Box shadows for [ Typst ](https://typst.app/) .

##  Usage

    
    
    #import "@preview/shadowed:0.1.2": shadowed
    
    #set par(justify: true)
    
    #shadowed(radius: 4pt, inset: 12pt)[
        #lorem(50)
    ]
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/shadowed/0.1.2/examples/lorem.png)

##  Reference

The ` shadowed ` function takes the following arguments:

  * **blur: Length** \- The blur radius of the shadow. Also adds a padding of the same size. 
  * **radius: Length** \- The corner radius of the inner block and shadow. 
  * **color: Color** \- The color of the shadow. 
  * **inset: Length** \- The inset of the inner block. 
  * **fill: Color** \- The color of the inner block. 

##  Credits

This project was inspired by [ Harbinger ](https://github.com/typst-
community/harbinger) .

###  How to add

Copy this into your project and use the import as  ` shadowed `

    
    
    #import "@preview/shadowed:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Tim VoÃhenrich ](https://github.com/T1mVo)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     October 22, 2024 
First released:

     September 22, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     32.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/shadowed-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/T1mVo/shadowed)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Tim VoÃhenrich  .  Report issues on  [ their
repository ](https://github.com/T1mVo/shadowed) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 22, 2024   
[ 0.1.1 ](https://typst.app/universe/package/shadowed/0.1.1/) |  October 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/shadowed/0.1.0/) |  September 22, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

