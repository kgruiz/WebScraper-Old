#  cetz-venn

0.1.2

CeTZ library for drawing venn diagrams for two or three sets.

A [ CeTZ ](https://github.com/cetz-package/cetz) library for drawing simple
two- or three-set Venn diagrams.

##  Examples

[ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz-venn/0.1.2/gallery/venn2.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz-venn/0.1.2/gallery/venn2.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz-venn/0.1.2/gallery/venn3.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz-venn/0.1.2/gallery/venn3.typ)  
---|---  
Two set Venn diagram  |  Three set Venn diagram   
  
_Click on the example image to jump to the code._

##  Usage

This package requires CeTZ version >= 0.3.1!

For information, see the [ manual (stable) ](https://github.com/cetz-
package/cetz-venn/blob/stable/manual.pdf?raw=true) .

To use this package, simply add the following code to your document:

    
    
    #import "@preview/cetz:0.3.1"
    #import "@preview/cetz-venn:0.1.1"
    
    #cetz.canvas({
      cetz-venn.venn2()
    })
    

###  How to add

Copy this into your project and use the import as  ` cetz-venn `

    
    
    #import "@preview/cetz-venn:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Johannes Wolf ](https://github.com/johannes-wolf)
License:

     Apache-2.0 
Current version:

     0.1.2 
Last updated:

     October 28, 2024 
First released:

     July 1, 2024 
Archive size:

     6.34 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cetz-venn-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/johannes-wolf/cetz-venn)

###  Where to report issues?

This  package  is a project of  Johannes Wolf  .  Report issues on  [ their
repository ](https://github.com/johannes-wolf/cetz-venn) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 28, 2024   
[ 0.1.1 ](https://typst.app/universe/package/cetz-venn/0.1.1/) |  July 19, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cetz-venn/0.1.0/) |  July 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

