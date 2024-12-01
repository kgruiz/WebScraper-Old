#  m-jaxon

0.1.1

Render LaTeX equation in typst using MathJax.

Render LaTeX equation in typst using MathJax.

**Note:** This package is made for fun and to demonstrate the capability of
typst plugins. And it is **slow** . To actually convert LaTeX equations to
typst ones, you should use **pandoc** or **texmath** .

![](https://github.com/typst/packages/raw/main/packages/preview/m-jaxon/0.1.1/mj.svg)

    
    
    #import "./typst-package/lib.typ" as m-jaxon
    // Uncomment the following line to use the m-jaxon from the official package registry
    // #import "@preview/m-jaxon:0.1.1"
    
    = M-Jaxon
    
    Typst, now with *MathJax*.
    
    The equation of mass-energy equivalence is often written as $E=m c^2$ in modern physics.
    
    But we can also write it using M-Jaxon as: #m-jaxon.render("E = mc^2", inline: true)
    
    

##  Limitations

  * The baseline of the inline equation still looks a bit off. 

##  Documentation

###  ` render `

Render a LaTeX equation string to an svg image. Depending on the ` inline `
argument, the image will be rendered as an inline image or a block image.

####  Arguments

  * ` src ` : ` str ` or ` raw ` block - The LaTeX equation string 
  * ` inline ` : ` bool ` \- Whether to render the image as an inline image or a block image 

####  Returns

The image, of type ` content `

###  How to add

Copy this into your project and use the import as  ` m-jaxon `

    
    
    #import "@preview/m-jaxon:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Wenzhuo Liu 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     January 17, 2024 
First released:

     December 14, 2023 
Archive size:

     633 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/m-jaxon-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Enter-tainer/m-jaxon)

###  Where to report issues?

This  package  is a project of  Wenzhuo Liu  .  Report issues on  [ their
repository ](https://github.com/Enter-tainer/m-jaxon) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  January 17, 2024   
[ 0.1.0 ](https://typst.app/universe/package/m-jaxon/0.1.0/) |  December 14, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

