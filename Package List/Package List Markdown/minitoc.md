#  minitoc

0.1.0

An outline function just for one section and nothing else

This package provides the ` minitoc ` command that does the same thing as the
` outline ` command but only for headings under the heading above it.

This is inspired by minitoc package for LaTeX.

##  Example

    
    
    #import "@preview/minitoc:0.1.0": *
    #set heading(numbering: "1.1")
    
    #outline()
    
    = Heading 1
    
    #minitoc()
    
    == Heading 1.1
    
    #lorem(20)
    
    === Heading 1.1.1
    
    #lorem(30)
    
    == Heading 1.2
    
    #lorem(10)
    
    = Heading 2
    
    

This produces

![](https://gitlab.com/human_person/typst-local-
outline/-/raw/main/example/example.png)

##  Usage

The ` minitoc ` function has the following signature:

    
    
    #let minitoc(
      title: none, target: heading.where(outlined: true),
    	depth: none, indent: none, fill: repeat([.])
    ) { /* .. */ }
    

This is designed to be as close to the [ ` outline `
](https://typst.app/docs/reference/meta/outline/) funtions as possible. The
arguments are:

  * **title** : The title for the local outline. This is the same as for [ ` outline.title ` ](https://typst.app/docs/reference/meta/outline/#parameters-title) . 
  * **target** : What should be included. This is the same as for [ ` outline.target ` ](https://typst.app/docs/reference/meta/outline/#parameters-target)
  * **depth** : The maximum depth different to include. For example, if depth was 1 in the example, âHeading 1.1.1â would not be included 
  * **indent** : How the entries should be indented. Takes the same types as for [ ` outline.indent ` ](https://typst.app/docs/reference/meta/outline/#parameters-indent) and is passed directly to it 
  * **fill** : Content to put between the numbering and title, and the page number. Same types as for [ ` outline.fill ` ](https://typst.app/docs/reference/meta/outline/#parameters-fill)

##  Unintended consequences

Because ` minitoc ` uses ` outline ` , if you apply numbering to the title of
outline with ` #show outline: set heading(numbering: "1.") ` or similar, any
title in ` minitoc ` will be numbered and be a level 1 heading. This cannot be
changed with ` #show outline: set heading(level: 3) ` or similar
unfortunately.

###  How to add

Copy this into your project and use the import as  ` minitoc `

    
    
    #import "@preview/minitoc:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ nxe ](https://github.com/RosiePuddles)
License:

     GPL-3.0-only 
Current version:

     0.1.0 
Last updated:

     January 7, 2024 
First released:

     January 7, 2024 
Archive size:

     13.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minitoc-0.1.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/human_person/typst-local-outline)

###  Where to report issues?

This  package  is a project of  nxe  .  Report issues on  [ their repository
](https://gitlab.com/human_person/typst-local-outline) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  January 7, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

