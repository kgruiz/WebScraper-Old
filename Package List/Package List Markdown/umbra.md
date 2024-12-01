#  umbra

0.1.0

Basic shadows for Typst

Featured  Package

Umbra is a library for drawing basic gradient shadows in [ typst
](https://typst.app/) . It currently provides only one function for drawing a
shadow along one edge of a path.

##  Examples

###  Basic Shadow

[
![](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/basic.png)
](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/basic.typ)

###  Neumorphism

[
![](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/neumorphism.png)
](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/neumorphism.typ)

###  Torn Paper

[
![](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/torn-
paper.png)
](https://github.com/typst/packages/raw/main/packages/preview/umbra/0.1.0/gallery/torn-
paper.typ)

_Click on the example image to jump to the code._

##  Usage

The following code creates a very basic square shadow:

    
    
    #import "@preview/umbra:0.1.0": shadow-path
    
    #shadow-path((10%, 10%), (10%, 90%), (90%, 90%), (90%, 10%), closed: true)
    

The function syntax is similar to the normal path syntax. The following
arguments were added:

  * ` shadow-radius ` (default ` 0.5cm ` ): The shadow size in the direction normal to the edge 
  * ` shadow-stops ` (default ` (gray, white) ` ): The colours to be used in the shadow, passed directly to ` gradient `
  * ` correction ` (default ` 5deg ` ): A small correction factor to be added to round shadows at corners. Otherwise, there will be a small gap between the two shadows 

###  Vertex Order

The order of the vertices defines the direction of the shadow. If the shadow
is the wrong way around, just reverse the vertices.

###  Transparency

This package is designed in such a way that it should support transparency in
the gradients (i.e. corners define shadows using a path which approximates the
arc, instead of an entire circle). However, typst doesnât currently support
transparency in gradients. ( [ issue
](https://github.com/typst/typst/issues/2546) ).

In addition, the aforementioned correction factor would likely cause issues
with transparent gradients.

###  How to add

Copy this into your project and use the import as  ` umbra `

    
    
    #import "@preview/umbra:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ David Armstrong ](https://github.com/davystrong)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     August 30, 2024 
First released:

     August 30, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     3.50 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/umbra-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/davystrong/umbra)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  David Armstrong  .  Report issues on  [ their
repository ](https://github.com/davystrong/umbra) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  August 30, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

