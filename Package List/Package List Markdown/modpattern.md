#  modpattern

0.1.0

Easily create patterns in typst.

This package provides exactly one function: ` modpattern `

Itâs primary goal is to create make this: ![comparison
table](https://github.com/typst/packages/raw/main/packages/preview/modpattern/0.1.0/examples/comparison.png)

##  modpattern function

The function with the signature ` modpattern(size, body, dx: 0pt, dy: 0pt,
background: none) ` has the following parameters:

  * ` size ` is as size for patterns 
  * ` body ` is the inside/body/content of the pattern 
  * ` dx ` , ` dy ` allow for translations 
  * ` background ` allows any type allowed in the box fill argument. It gets applied first 

Notice that, in contrast to typst patterns, size is a positional argument.

Take a look at the example directory, to understand how to use this and to see
the reasoning behind the ` background ` argument.

###  How to add

Copy this into your project and use the import as  ` modpattern `

    
    
    #import "@preview/modpattern:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Ludwig Austermann 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 12, 2024 
First released:

     April 12, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     1.62 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modpattern-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ludwig-austermann/modpattern)

###  Where to report issues?

This  package  is a project of  Ludwig Austermann  .  Report issues on  [
their repository ](https://github.com/ludwig-austermann/modpattern) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 12, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

