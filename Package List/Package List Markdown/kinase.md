#  kinase

0.1.0

Easy styling for different link types like mails and urls.

Package for easy styling of links. See [ Docs
](https://github.com/typst/packages/raw/main/packages/preview/kinase/0.1.0/docs/manual.pdf)
for a detailed guide. Below is an example of the functionality that is added.
The problem the package solves is that different link types cannot be styled
seperatly, but are recognized as such. This package allows for easy styling of
phone numbers, urls and mail addresses. It provides helper functions that
return regex patterns for the most common use cases.

    
    
    #import "@previes/kinase:0.0.1"
    
    #show: make-link
    
    // Insert some rules
    #update-link-style(key: l-mailto(), value: it => strong(it), )
    #update-link-style(key: l-url(base: "typst\.app"), value: it => emph(it))
    #update-link-style(key: l-url(base: "google\.com"), before: l-url(base: "typst\.app"), value: it => highlight(it))
    #update-link-style(key: l-url(base: "typst\.app/docs"), value: it => strong(it), before: l-url(base: "typst\.app"))
    
    #link("mailto:john.smith@typst.org") \
    
    #link("https://www.typst.app/docs")
    
    #link("typst.app")
    
    #link("+49 2422424422")
    

![](https://github.com/typst/packages/raw/main/packages/preview/kinase/0.1.0/ressources/example.png)

###  How to add

Copy this into your project and use the import as  ` kinase `

    
    
    #import "@preview/kinase:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Lennart Schuster 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 16, 2024 
First released:

     May 16, 2024 
Archive size:

     3.10 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/kinase-0.1.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Lennart Schuster  .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 16, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

