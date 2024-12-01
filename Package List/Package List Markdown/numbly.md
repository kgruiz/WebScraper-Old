#  numbly

0.1.0

A package that helps you to specify different numbering formats for different
levels of headings.

A package that helps you to specify different numbering formats for different
levels of headings.

Suppose you want to specify the following numbering format for your document:

  * Appendix A. Guide 
    * A.1. Installation 
      * Step 1. Download 
      * Step 2. Install 
    * A.2. Usage 

You might use ` if ` to achieve this:

    
    
    #set heading(numbering: (..nums) => {
      nums = nums.pos()
      if nums.len() == 1 {
        return "Appendix " + numbering("A.", ..nums)
      } else if nums.len() == 2 {
        return numbering("A.1.", ..nums)
      } else {
        return "Step " + numbering("1.", nums.last())
      }
    })
    
    = Guide
    == Installation
    === Download
    === Install
    == Usage
    

But with ` numbly ` , you can do this more easily:

    
    
    #import "@preview/numbly:0.1.0": numbly
    #set heading(numbering: numbly(
      "Appendix {1:A}.", // use {level:format} to specify the format
      "{1:A}.{2}.", // if format is not specified, arabic numbers will be used
      "Step {3}.", // here, we only want the 3rd level
    ))
    

###  How to add

Copy this into your project and use the import as  ` numbly `

    
    
    #import "@preview/numbly:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ flaribbit ](https://github.com/flaribbit)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 1, 2024 
First released:

     July 1, 2024 
Archive size:

     1.75 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/numbly-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/flaribbit/numbly)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  flaribbit  .  Report issues on  [ their
repository ](https://github.com/flaribbit/numbly) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

