#  circuiteria

0.1.0

Drawing block circuits with Typst made easy, using CeTZ

Circuiteria is a [ Typst ](https://typst.app/) package for drawing block
circuit diagrams using the [ CeTZ ](https://typst.app/universe/package/cetz)
package.

![Perry the
platypus](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/platypus.png)

##  Examples

[
![](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test.png)
](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test.typ)  
---  
A bit of eveything  
[
![](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test5.png)
](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test5.typ)  
Wires everywhere  
[ ![](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test4.png) ](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test4.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test6.png) ](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/test6.typ)  
Groups  |  Rotated   
  
> **Note**  
>  These circuit layouts were copied from a digital design course given by
> prof. S. Zahno and recreated using this package

_Click on the example image to jump to the code._

##  Usage

For more information, see the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/manual.pdf)

To use this package, simply import [ circuiteria
](https://typst.app/universe/package/circuiteria) and call the ` circuit `
function:

    
    
    #import "@preview/circuiteria:0.1.0"
    #circuiteria.circuit({
      import circuiteria: *
      ...
    })
    

###  How to add

Copy this into your project and use the import as  ` circuiteria `

    
    
    #import "@preview/circuiteria:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Louis Heredero ](https://git.kb28.ch/HEL)
License:

     Apache-2.0 
Current version:

     0.1.0 
Last updated:

     October 3, 2024 
First released:

     October 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     193 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/circuiteria-0.1.0.tar.gz)
Repository:

     [ git.kb28.ch ](https://git.kb28.ch/HEL/circuiteria)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Louis Heredero  .  Report issues on  [ their
repository ](https://git.kb28.ch/HEL/circuiteria) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

