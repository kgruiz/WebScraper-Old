#  outline-summaryst

0.1.0

A basic template for including a summary for each entry in the table of
contents. Useful for writing books.

##  Description

` outline-summaryst ` is a basic package designed for including a summary for
each entry in the table of contents, particularly useful for writing books. It
provides a simple structure for organizing content and generating formatted
documents with summary sections.

##  Features

  * A template for the outline, which styles both the heading and their summaries. 
  * A macro for creating new headings and a summary for each heading. 

##  Note:

Because of the way the project is implemented, only the headings created with
the provided ` make-heading("heading name", "summary") ` are shown in in the
outline. Headings created with the default ` = Heading ` syntax will not show
in said outline (though they will show up in the document itself).

##  Example Usage:

    
    
    #import "@preview/outline-summaryst:0.1.0": style-outline, make-heading
    
    
    // you can set `outline-title: none` in order not to display any title
    #show outline: style-outline.with(outline-title: "Table of Contents")
    
    #outline()
    
    
    #make-heading("Part One", "This is the summary for part one")
    #lorem(500)
    
    #make-heading("Chapter One", "Summary for chapter one in part one", level: 2)
    #lorem(300)
    
    #make-heading("Chapter Two", "This is the summary for chapter two in part one", level: 2)
    #lorem(300)
    
    #make-heading("Part Two", "And here we have the summary for part two")
    #lorem(500)
    
    #make-heading("Chapter One", "Summary for chapter one in part two", level: 2)
    #lorem(300)
    
    #make-heading("Chapter Two", "Summary for chapter two in part two", level: 2)
    #lorem(300)
    

##  Known limitations

  * Currently, we do not provide a way for styling the table of contents or headings 

##  License:

This project is licensed under the MIT License. See the LICENSE file for
details.

##  Contribution:

Contributions are welcome! Feel free to open an issue or submit a pull request
on GitHub.

###  How to add

Copy this into your project and use the import as  ` outline-summaryst `

    
    
    #import "@preview/outline-summaryst:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     @aarneng 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 15, 2024 
First released:

     April 15, 2024 
Archive size:

     2.97 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/outline-summaryst-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/aarneng/Outline-Summary)
Discipline  :

    

  * [ Literature ](https://typst.app/universe/search/?discipline=literature)

Categor  y  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  @aarneng  .  Report issues on  [ their
repository ](https://github.com/aarneng/Outline-Summary) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

