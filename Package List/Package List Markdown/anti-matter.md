#  anti-matter

0.1.1

Simple page numbering of front and back matter.

This typst packages allows you to simply mark the end and start of your front
matter and back matter to change style and value of your page number without
manually setting and keeping track of inner and outer page counters.

##  Example

    
    
    #import "@preview/anti-matter:0.1.1": anti-matter, fence, set-numbering
    
    #set page("a4", height: auto)
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    #show: anti-matter
    
    #set-numbering(none)
    #align(center)[My Title Page]
    #pagebreak()
    #set-numbering("I")
    
    #include "front-matter.typ"
    #fence()
    
    #include "chapters.typ"
    #fence()
    
    #include "back-matter.typ"
    

![An example outline showing the outer Roman numbering interrupted by
temporary inner Arabic

numbering](https://github.com/typst/packages/raw/main/packages/preview/anti-
matter/0.1.1/example/example.png)

##  Features

  * Marking the start and end of front/back matter. 
  * Specifying the numbering styles for each part fo the document 

##  FAQ

  1. Why are the pages not correctly counted? 
     * If you are setting your own page header, you must use ` step ` , see section II in the [ manual ](https://github.com/typst/packages/raw/main/packages/preview/anti-matter/0.1.1/docs/manual.pdf) . 
  2. Why is my outline not displaying the correct numbering? 
     * If you configure your own ` outline.entry ` , you must use ` page-number ` , see section II in the [ manual ](https://github.com/typst/packages/raw/main/packages/preview/anti-matter/0.1.1/docs/manual.pdf) . 
  3. Why does my front/inner/back matter numbering start on the wrong page? 
     * The fences must be on the last page of their respective part, if you have a ` pagebreak ` forcing them on the next page it will also incorrectly label that page. 
     * Otherwise please open an issue with a minimal reproducible example. 

##  Etymology

The package name ` anti-matter ` was choosen as a word play on front/back
matter.

##  Glossary

  * [ front matter ](https://en.wikipedia.org/wiki/Book_design#Front_matter) \- The first part of a thesis or book (intro, outline, etc.) 
  * [ back matter ](https://en.wikipedia.org/wiki/Book_design#Back_matter_\(end_matter\)) \- The last part of a thesis or book (bibliography, listings, acknowledgements, etc.) 

###  How to add

Copy this into your project and use the import as  ` anti-matter `

    
    
    #import "@preview/anti-matter:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ tinger ](mailto:me@tinger.dev)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     December 3, 2023 
First released:

     September 29, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     3.70 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/anti-matter-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/tingerrr/anti-matter)

###  Where to report issues?

This  package  is a project of  tinger  .  Report issues on  [ their
repository ](https://github.com/tingerrr/anti-matter) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  December 3, 2023   
[ 0.1.0 ](https://typst.app/universe/package/anti-matter/0.1.0/) |  November 29, 2023   
[ 0.0.2 ](https://typst.app/universe/package/anti-matter/0.0.2/) |  October 2, 2023   
[ 0.0.1 ](https://typst.app/universe/package/anti-matter/0.0.1/) |  September 29, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

