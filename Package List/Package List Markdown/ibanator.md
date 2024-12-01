#  ibanator

0.1.0

A package for validating and formatting International Bank Account Numbers
(IBANs) according to ISO 13616-1.

> Validate and format IBAN numbers according to ISO 13616-1.

##  Usage

    
    
    #import "@preview/ibanator:0.1.0": iban
    
    #iban("DE89370400440532013000")
    

![](https://github.com/typst/packages/raw/main/packages/preview/ibanator/0.1.0/docs/example.png)

To disable validation, set the ` validate ` flag to false:

    
    
    #iban("DE89370400440532013000", validate: false)
    

###  How to add

Copy this into your project and use the import as  ` ibanator `

    
    
    #import "@preview/ibanator:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     @mainrs 
License:

     EUPL-1.2 
Current version:

     0.1.0 
Last updated:

     April 8, 2024 
First released:

     April 8, 2024 
Archive size:

     19.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ibanator-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mainrs/typst-iban-formatter.git)
Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  @mainrs  .  Report issues on  [ their
repository ](https://github.com/mainrs/typst-iban-formatter.git) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 8, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

