#  basalt-backlinks

0.1.0

Generate and get backlinks.

A Typst package for generating and getting backlinks.

    
    
    #import "@preview/basalt-backlinks:0.1.0" as backlinks
    #show link: backlinks.generate
    
    
    
    Here's some content I want to link to. <linktome>
    
    #pagebreak()
    
    #link(<linktome>)[I'm linking to the content.]
    
    #pagebreak()
    
    #link(<linktome>)[I'm also linking to the content!]
    
    #pagebreak()
    
    #context {
      let backs = backlinks.get(<linktome>)
      for (i, back) in backs.enumerate() [
        #link(back.location())[
          Backlink for \<linktome> (\##i)
        ]
    
      ]
    }
    

###  How to add

Copy this into your project and use the import as  ` basalt-backlinks `

    
    
    #import "@preview/basalt-backlinks:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Gabriel Talbert Bunt 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 7, 2024 
First released:

     October 7, 2024 
Archive size:

     1.59 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/basalt-backlinks-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/GabrielDTB/basalt-backlinks)

###  Where to report issues?

This  package  is a project of  Gabriel Talbert Bunt  .  Report issues on  [
their repository ](https://github.com/GabrielDTB/basalt-backlinks) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 7, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

