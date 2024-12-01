#  delimitizer

0.1.0

Customize the size of delimiters. Like \big, \Big, \bigg, \Bigg in LaTeX.

This package lets you customize the size of delimiters in your math equations.
It is useful when you want to make your equations more readable by increasing
the size of certain delimiters. Just like ` \big ` , ` \Big ` , ` \bigg ` ,
and ` \Bigg ` in LaTeX, ` delimitizer ` provides you with the same
functionality in Typst.

  * ` big(delimiter) ` : Makes the delimiters bigger than the default size. 
  * ` Big(delimiter) ` : Makes the delimiters bigger than ` big() ` . 
  * ` bigg(delimiter) ` : Makes the delimiters bigger than ` Big() ` . 
  * ` Bigg(delimiter) ` : Makes the delimiters bigger than ` bigg() ` . 
  * ` scaled-delimiter(delimiter, size) ` : Scales the delimiters by a factor of your choice. 
  * ` paired-delimiter(left, right) ` : Make a short hand for paired delimiters. This function returns a closure ` f(size = auto: auto | none | big | Big | bigg | Bigg | relative, content: content) ` . The keyed argument ` size ` is optional and defaults to ` auto ` . The positional argument ` content ` is required. 
    * when ` size ` is ` auto ` , the size of the delimiters is automatically determined. 
    * when ` size ` is ` none ` , the size of the delimiters is ` 1em ` . 
    * when ` size ` is ` big ` / ` Big ` / ` bigg ` / ` Bigg ` , the size of the delimiters is set to ` big ` / ` Big ` / ` bigg ` / ` Bigg ` respectively. 
    * when ` size ` is ` relative ` length like ` 3em ` or ` 150% ` , the size of the delimiters is scaled by the factor you provide. 

Example:

    
    
    #let parn = paired-delimiter("(", ")")
    
    $
    parn(size: bigg,
      parn(size: big, (a+b)times (a-b))
    div
      parn(size: big, (c+d)times (c-d))
    ) + d \ = (a^2-b^2) / (c^2-d^2)+d
    $
    
    

![demo](https://github.com/typst/packages/raw/main/packages/preview/delimitizer/0.1.0/demo.svg)

###  How to add

Copy this into your project and use the import as  ` delimitizer `

    
    
    #import "@preview/delimitizer:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Wenzhuo Liu 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 1, 2024 
First released:

     May 1, 2024 
Archive size:

     2.10 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/delimitizer-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Enter-tainer/delimitizer)

###  Where to report issues?

This  package  is a project of  Wenzhuo Liu  .  Report issues on  [ their
repository ](https://github.com/Enter-tainer/delimitizer) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

