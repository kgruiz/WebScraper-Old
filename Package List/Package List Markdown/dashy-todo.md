#  dashy-todo

0.0.1

A method to display TODOs at the side of the page.

Create TODO comments, which are displayed at the sides of the page.

![Screenshot](https://github.com/typst/packages/raw/main/packages/preview/dashy-
todo/0.0.1/example.svg)

##  Usage

The package provides a ` todo(message, position: auto | left | right) ` method. Call it anywhere you need a todo message. 
    
    
    #import "@preview/dashy-todo:0.0.1": todo
    
    // It automatically goes to the closer side (left or right)
    A todo on the left #todo[On the left].
    
    // You can specify a side if you want to
    #todo(position: right)[Also right]
    
    // You can add arbitrary content
    #todo[We need to fix the $lim_(x -> oo)$ equation. See #link("https://example.com")[example.com]]
    
    // And you can create an outline for the TODOs
    #outline(title: "TODOs", target: figure.where(kind: "todo"))
    

##  Styling

You can modify the text by wrapping it, e.g.:

    
    
    #let small-todo = (..args) => text(size: 0.6em)[#todo(..args)]
    
    #small-todo[This will be in fine print]
    

###  How to add

Copy this into your project and use the import as  ` dashy-todo `

    
    
    #import "@preview/dashy-todo:0.0.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Otto-AA 
License:

     MIT-0 
Current version:

     0.0.1 
Last updated:

     July 23, 2024 
First released:

     July 23, 2024 
Archive size:

     2.93 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/dashy-todo-0.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Otto-AA/dashy-todo)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Otto-AA  .  Report issues on  [ their
repository ](https://github.com/Otto-AA/dashy-todo) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  July 23, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

