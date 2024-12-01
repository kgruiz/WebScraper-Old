#  rivet

0.1.0

Register / Instruction Visualizer & Explainer Tool with Typst, using CeTZ

RIVET _(Register / Instruction Visualizer & Explainer Tool) _ is a [ Typst
](https://typst.app/) package for visualizing binary instructions or
describing the contents of a register, using the [ CeTZ
](https://typst.app/universe/package/cetz) package.

It is based on the [ homonymous Python script
](https://git.kb28.ch/HEL/rivet/)

##  Examples

[
![](https://github.com/typst/packages/raw/main/packages/preview/rivet/0.1.0/gallery/example1.png)
](https://github.com/typst/packages/raw/main/packages/preview/rivet/0.1.0/gallery/example1.typ)  
---  
A bit of eveything  
[
![](https://github.com/typst/packages/raw/main/packages/preview/rivet/0.1.0/gallery/example2.png)
](https://github.com/typst/packages/raw/main/packages/preview/rivet/0.1.0/gallery/example2.typ)  
RISC-V memory instructions (blueprint)  
  
_Click on the example image to jump to the code._

##  Usage

For more information, see the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/rivet/0.1.0/manual.pdf)

To use this package, simply import ` schema ` from [ rivet
](https://typst.app/universe/package/rivet) and call ` schema.load ` to parse
a schema description. Then use ` schema.render ` to render it, et voilÃ !

    
    
    #import "@preview/rivet:0.1.0": schema
    #let doc = schema.load("path/to/schema.yaml")
    #schema.render(doc)
    

###  How to add

Copy this into your project and use the import as  ` rivet `

    
    
    #import "@preview/rivet:0.1.0"

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

     120 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/rivet-0.1.0.tar.gz)
Repository:

     [ git.kb28.ch ](https://git.kb28.ch/HEL/rivet-typst)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Louis Heredero  .  Report issues on  [ their
repository ](https://git.kb28.ch/HEL/rivet-typst) .  You can also try to ask
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

