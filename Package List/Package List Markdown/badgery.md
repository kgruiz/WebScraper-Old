#  badgery

0.1.1

Adds styled badges, boxes and menu actions.

This package defines some colourful badges and boxes around text that
represent user interface actions such as a click or following a menu.

For examples have a look at the example [ main.typ
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/example/main.typ)
, [ main.pdf
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/exmaple/main.pdf)
.

![example](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/demo.png)

##  Badges

    
    
    #badge-gray("Gray badge"),
    #badge-red("Red badge"),
    #badge-yellow("Yellow badge"),
    #badge-green("Green badge"),
    #badge-blue("Blue badge"),
    #badge-purple("Purple badge")
    

##  User interface actions

This is a user interface action (ie. a click):

    
    
    #ui-action("Click X")
    

This is an action to follow a user interface menu (2 steps):

    
    
    #menu(("File", "New File..."))
    

This is a menu action with multiple steps:

    
    
    #menu(("Menu", "Sub-menu", "Sub-sub menu", "Action"))
    

###  How to add

Copy this into your project and use the import as  ` badgery `

    
    
    #import "@preview/badgery:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     dogezen 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     March 20, 2024 
First released:

     March 19, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.50 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/badgery-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/dogezen/badgery)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Business ](https://typst.app/universe/search/?discipline=business)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)

Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  dogezen  .  Report issues on  [ their
repository ](https://github.com/dogezen/badgery) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  March 20, 2024   
[ 0.1.0 ](https://typst.app/universe/package/badgery/0.1.0/) |  March 19, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

