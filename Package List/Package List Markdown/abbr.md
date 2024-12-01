#  abbr

0.1.0

An Abbreviations package.

Short package for making the handling of abbreviations, acronyms, and
initialisms _easy_ .

Declare your abbreviations anywhere, use everywhere â they get picked up
automatically.

##  Features

  * Automatic plurals, with optional overrides. 
  * Automatic 1- or 2-column sorted list of abbreviations 
  * Automatic links to list of abbreviations, if included. 
  * styling configuration 

##  Getting started

    
    
    #import "@preview/abbr:0.1.0"
    
    #abbr.list()
    #abbr.make(
      ("PDE", "Partial Differential Equation"),
      ("BC", "Boundary Condition"),
      ("DOF", "Degree of Freedom", "Degrees of Freedom"),
    )
    
    = Constrained Equations
    
    #abbr.pla[BC] constrain the #abbr.pla[DOF] of the #abbr.pla[PDE] they act on.\
    #abbr.pla[BC] constrain the #abbr.pla[DOF] of the #abbr.pla[PDE] they act on.
    
    #abbr.add("MOL", "Method of Lines")
    The #abbr.a[MOL] is a procedure to solve #abbr.pla[PDE] in time.
    

![](https://github.com/typst/packages/raw/main/packages/preview/abbr/0.1.0/example.png)

##  API Reference

###  Configuration

  * **style** ` (func) `   
Set a callable for styling the short version in the text.

###  Creation

  * **add** ` (short, long, long-plural) `   
Add single entry to use later.  
` long-plural ` is _optional_ , if not given but used, an ` s ` is appended to
create a plural.

  * **make** ` (list, of, entries) `   
Add multiple entries, each of the form ` (short, long, long-plural) ` .

###  Listing

  * **list** ` (title) `   
Create an outline with all abbreviations in short and expanded form

###  Usage

  * **s** ` () ` \- short   
force short form of abbreviation

  * **l** ` () ` \- long   
force long form of abbreviation

  * **a** ` () ` \- auto   
first occurence will be long form, the rest short

  * **pls** ` () ` \- plural short   
plural short form

  * **pll** ` () ` \- plural long   
plural long form

  * **pl** ` () ` \- plural automatic   
plural. first occurence long form, then short

##  Why yet another Abbreviations package?

This mostly exists because I started working on it before checking if somebody
already made a package for it. After I saw that e.g. ` acrotastic ` exists, I
kept convincing myself a new package still makes sense for the following
reasons:

  * Getting to know Typst 
  * More automatic handling than other packages 
  * Ability to keep keys as [Content] instead of having to stringify everything 

Especially the last part seems to lower the friction of writing for me. It
seems silly, I know.

##  Contributing

Please head over to the [ hub ](https://sr.ht/~slowjo/typst-packages) to find
the mailing list and ticket tracker.

Or simply reach out on IRC ( [ #typst on libera.chat
](https://web.libera.chat/gamja/?autojoin=#typst) )!

###  How to add

Copy this into your project and use the import as  ` abbr `

    
    
    #import "@preview/abbr:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jonathan Halmen ](mailto:slowjo@halmen.xyz)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 5, 2024 
First released:

     November 5, 2024 
Archive size:

     3.40 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/abbr-0.1.0.tar.gz)
Repository:

     [ git.sr.ht ](https://git.sr.ht/~slowjo/typst-abbr)
Categor  y  :

    

  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)

###  Where to report issues?

This  package  is a project of  Jonathan Halmen  .  Report issues on  [ their
repository ](https://git.sr.ht/~slowjo/typst-abbr) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 5, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

