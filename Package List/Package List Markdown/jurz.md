#  jurz

0.1.0

Randziffern in Typst

[ _Randziffern_
](https://de.wikipedia.org/w/index.php?title=Randnummer&oldid=231943223) (also
called _Randnummern_ ) are a way to reference text passages in a document,
independent of the page number or the section number. They are used in many
German legal texts, for example. This package provides a way to create
_Randziffern_ in Typst.

##  Demo

![left page with Randziffern on the left of the text](https://github.com/typst/packages/raw/main/packages/preview/jurz/0.1.0/demo-2.svg) |  ![right page with Randziffern on the right of the text](https://github.com/typst/packages/raw/main/packages/preview/jurz/0.1.0/demo-3.svg)  
---|---  
View source

    
    
    #show: init-jurz.with(
      gap: 1em,
      two-sided: true
    )
    
    #rz #lorem(50)
    
    #lorem(20)
    
    #rz<abc> #lorem(30)
    
    #rz #lorem(40)
    
    #rz #lorem(50)
    
    #lorem(20)
    
    #rz #lorem(24)
    
    Fur further information, look at @abc.
    

##  Reference

###  ` init-jurz `

A show rule that initializes the _Randziffern_ for the document. This rule
should be placed at the beginning of the document. It also allows customizing
the behavior of the _Randziffern_ .

####  Usage

    
    
    #show: init-jurz.with(
     // parameters
     // two-sided: true,
     // gap: 1em,
     // supplement: "Rz.",
     // reset-level: 0,
    )
    

####  Parameters

  * ` two-sided ` (optional): If ` true ` , the _Randziffern_ are placed on the outer margin of the page. If ` false ` , they are placed on the left margin. Default is ` true ` . 
  * ` gap ` (optional): The distance between the _Randziffer_ and the text. Default is ` 1em ` . 
  * ` supplement ` (optional): The text that is placed before the _Randziffer_ when referencing it. Default is ` "Rz." ` . 
  * ` reset-level ` (optional): The heading level at which the _Randziffern_ are reset. If set to ` 3 ` , for example, the numbering of the _Randziffern_ restarts after every heading of levels ` 1 ` , ` 2 ` , or ` 3 ` . Default is ` 0 ` . 

###  ` rz `

Adds a _Randziffer_ to the text. The _Randziffer_ is a unique identifier that
can be referenced in the text.

You can add references the same way you can with headings. In fact, the
_Randziffer_ is treated as a heading of level ` 99 ` under the hood.

####  Usage

    
    
    #rz #lorem(100)
    #rz<abc> #lorem(100)
    
    See also @abc.
    

##  License

This package is licensed under the MIT License.

###  How to add

Copy this into your project and use the import as  ` jurz `

    
    
    #import "@preview/jurz:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Zuri Klaschka ](https://github.com/pklaschka)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 4, 2024 
First released:

     April 4, 2024 
Archive size:

     2.46 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/jurz-0.1.0.tar.gz)
Discipline  :

    

  * [ Law ](https://typst.app/universe/search/?discipline=law)

Categor  ies  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)
  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Zuri Klaschka  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 4, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

