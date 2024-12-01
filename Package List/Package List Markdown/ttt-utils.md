#  ttt-utils

0.1.2

A collection of tools to make a teachers life easier.

` ttt-utils ` is the core package of the [ typst-teacher-tools collection
](https://github.com/jomaway/typst-teacher-templates) .

##  Modules

It contains several modules:

  * ` assignments ` contains functions for creating exams. 
  * ` components ` contains useful visual components such _lines_ or _caro pattern_ , _tags_ , etc â¦ 
  * ` grading ` contains functions for grading exams. 
  * ` helpers ` contains some utility functions. 
  * ` layout ` contains some layout functions such as _side-by-side_ , etcâ¦ 
  * ` random ` contains a function to shuffle an array. 

##  Usage

You can import the modules you need with:

    
    
    #import "@preview/ttt-utils:0.1.0": components
    

then you can access the modules function with:

` #components.lines(4) ` or ` #components.caro(5) ` , â¦

or import the wanted functions:

    
    
    #import "@preview/ttt-utils:0.1.0": components, assignments
    
    #import assignments: assignment, question, answer
    #import components: caro as grid_pattern
    
    // Add a question.
    
    #assignment[First assignment
    
        #question[
            #answer(field: grid_pattern(5))
        ]
    ]
    
    

##  Similar projects

  * [ scrutinize ](https://github.com/SillyFreak/typst-packages/tree/main/scrutinize) by [ SillyFreak ](https://github.com/SillyFreak) : Package to create exams, very similar to the ` assignment ` module, but only questions without assignments, and a bit more low level. I adopted a few of his ideas. 

##  CHANGELOG

See [ CHANGELOG.md
](https://github.com/typst/packages/raw/main/packages/preview/ttt-
utils/CHANGELOG.md)

###  How to add

Copy this into your project and use the import as  ` ttt-utils `

    
    
    #import "@preview/ttt-utils:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jomaway ](https://github.com/jomaway)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     May 22, 2024 
First released:

     March 26, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     7.60 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ttt-utils-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jomaway/typst-teacher-templates)
Discipline  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Jomaway  .  Report issues on  [ their
repository ](https://github.com/jomaway/typst-teacher-templates) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  May 22, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ttt-utils/0.1.0/) |  March 26, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

