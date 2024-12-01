#  chronos

0.2.0

A package to draw sequence diagrams with CeTZ

A Typst package to draw sequence diagrams with CeTZ

* * *

This package lets you render sequence diagrams directly in Typst. The
following boilerplate code creates an empty sequence diagram with two
participants:

**Typst** |  **Result**  
---|---  
      
    
    #import "@preview/chronos:0.2.0"
    #chronos.diagram({
      import chronos: *
      _par("Alice")
      _par("Bob")
    })
    

|
![](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/readme/boilerplate.png)  
  
> _Disclaimer_  
>  The package cannot parse PlantUML syntax for the moment, and thus requires
> the use of element functions, as shown in the examples. A PlantUML parser is
> in the TODO list, just not the top priority

##  Basic sequences

You can make basic sequences using the ` _seq ` function:

**Typst** |  **Result**  
---|---  
      
    
    #chronos.diagram({
      import chronos: *
      _par("Alice")
      _par("Bob")
    
      _seq("Alice", "Bob", comment: "Hello")
      _seq("Bob", "Bob", comment: "Think")
      _seq("Bob", "Alice", comment: "Hi")
    })
    

|
![](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/readme/simple_sequence.png)  
  
You can make lifelines using the following parameters of the ` _seq `
function:

  * ` enable-dst ` : enables the destination lifeline 
  * ` create-dst ` : creates the destination lifeline and participant 
  * ` disable-dst ` : disables the destination lifeline 
  * ` destroy-dst ` : destroys the destination lifeline and participant 
  * ` disable-src ` : disables the source lifeline 
  * ` destroy-src ` : destroy the source lifeline and participant 

**Typst** |  **Result**  
---|---  
      
    
    #chronos.diagram({
      import chronos: *
      _par("A", display-name: "Alice")
      _par("B", display-name: "Bob")
      _par("C", display-name: "Charlie")
      _par("D", display-name: "Derek")
    
      _seq("A", "B", comment: "hello", enable-dst: true)
      _seq("B", "B", comment: "self call", enable-dst: true)
      _seq("C", "B", comment: "hello from thread 2", enable-dst: true, lifeline-style: (fill: rgb("#005500")))
      _seq("B", "D", comment: "create", create-dst: true)
      _seq("B", "C", comment: "done in thread 2", disable-src: true, dashed: true)
      _seq("B", "B", comment: "rc", disable-src: true, dashed: true)
      _seq("B", "D", comment: "delete", destroy-dst: true)
      _seq("B", "A", comment: "success", disable-src: true, dashed: true)
    })
    

|
![](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/readme/lifelines.png)  
  
##  Showcase

Several features have already been implemented in Chronos. Donât hesitate to
checkout the examples in the [ gallery
](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery)
folder to see what you can do.

####  Quick example reference:

**Example** |  **Features**  
---|---  
` example1 `  
( [ PDF ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example1.pdf) | [ Typst ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example1.typ) )  |  Simple cases, color sequences, groups, separators, gaps, self-sequences   
` example2 `  
( [ PDF ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example2.pdf) | [ Typst ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example2.typ) )  |  Lifelines, found/lost messages, synchronized sequences, slanted sequences   
` example3 `  
( [ PDF ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example3.pdf) | [ Typst ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/example3.typ) )  |  Participant shapes, sequence tips, hidden partipicant ends   
` notes `  
( [ PDF ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/notes.pdf) | [ Typst ](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/notes.typ) )  |  Notes (duh), deferred participant creation   
  
> [!NOTE]
>
> Many examples were taken/adapted from the PlantUML [ documentation
> ](https://plantuml.com/sequence-diagram) on sequence diagrams

###  How to add

Copy this into your project and use the import as  ` chronos `

    
    
    #import "@preview/chronos:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Louis Heredero ](https://git.kb28.ch/HEL)
License:

     Apache-2.0 
Current version:

     0.2.0 
Last updated:

     November 12, 2024 
First released:

     October 1, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     537 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/chronos-0.2.0.tar.gz)
Repository:

     [ git.kb28.ch ](https://git.kb28.ch/HEL/chronos)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Louis Heredero  .  Report issues on  [ their
repository ](https://git.kb28.ch/HEL/chronos) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/chronos/0.1.0/) |  October 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

