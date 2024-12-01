#  indenta

0.0.3

Fix indent of first paragraph.

An attempt to fix the indentation of the first paragraph in typst.

It works.

##  Usage

    
    
    #set par(first-line-indent: 2em)
    #import "@preview/indenta:0.0.3": fix-indent
    #show: fix-indent()
    
    

##  Demo

![image](https://github.com/flaribbit/indenta/assets/24885181/874df696-3277-4103-9166-a24639b0c7c6)

##  Note

When you use ` fix-indent() ` with other show rules, make sure to call ` fix-
indent() ` **after other show rules** . For example:

    
    
    #show heading.where(level: 1): set text(size: 20pt)
    #show: fix-indent()
    

If you want to process the content inside your custom block, you can call `
fix-indent ` inside your block. For example:

    
    
    #block[#set text(fill: red)
    #show: fix-indent()
    
    Hello
    
    #table()[table]
    
    World
    ]
    

This package is in a very early stage and may not work as expected in some
cases. Currently, there is no easy way to check if an element is inlined or
not. If you got an unexpected result, you can try ` fix-indent(unsafe: true) `
to disable the check.

Minor fixes can be made at any time, but the package in typst universe may not
be updated immediately. You can check the latest version on [ GitHub
](https://github.com/flaribbit/indenta) then copy and paste the code into your
typst file.

If it still doesnât work as expected, you can try another solution (aka
fake-par solution):

    
    
    #let fakepar=context{box();v(-measure(block()+block()).height)}
    #show heading: it=>it+fakepar
    #show figure: it=>it+fakepar
    #show math.equation.where(block: true): it=>it+fakepar
    // ... other elements
    

###  How to add

Copy this into your project and use the import as  ` indenta `

    
    
    #import "@preview/indenta:0.0.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ æ¢¦é£ç¿ ](https://github.com/flaribbit)
License:

     MIT 
Current version:

     0.0.3 
Last updated:

     June 10, 2024 
First released:

     May 24, 2024 
Archive size:

     2.35 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/indenta-0.0.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/flaribbit/indenta)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  æ¢¦é£ç¿  .  Report issues on  [ their
repository ](https://github.com/flaribbit/indenta) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.3  |  June 10, 2024   
[ 0.0.2 ](https://typst.app/universe/package/indenta/0.0.2/) |  May 27, 2024   
[ 0.0.1 ](https://typst.app/universe/package/indenta/0.0.1/) |  May 24, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

