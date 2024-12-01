#  koma-labeling

0.1.0

This package introduces a labeling feature to Typst, inspired by the KOMA-
Script's labeling environment.

Version 0.1.0

The koma-labeling package for Typst is inspired by the labeling environment
from the KOMA-Script bundle in LaTeX. It provides a convenient way to create
labeled lists with customizable label widths and optional delimiters, making
it perfect for creating structured descriptions and lists in your Typst
documents.

##  Getting Started

To get started with koma-labeling, simply import the package in your Typst
document and use the labeling environment to create your labeled lists.

    
    
    #import "@preview/koma-labeling:0.1.0": labeling
    
    #labeling(
      (
        (lorem(1), lorem(10)),
        (lorem(2), lorem(20)),
        (lorem(3), lorem(30)),
      )
    )
    
    // or
    
    #labeling(
      (
        ([#lorem(1)], [#lorem(10)]),
        ([#lorem(2)], [#lorem(20)]),
        ([#lorem(3)], [#lorem(30)]),
      )
    )
    

Output:

![å¾ç](https://github.com/user-
attachments/assets/bf382afe-f66d-4032-9055-f46c72a2e7dd)

**Note:** Remember to terminate the list with a comma, even if only one pair
of items is passed.

    
    
    #import "@preview/koma-labeling:0.1.0": labeling
    
    #labeling(
      (
        (lorem(1), lorem(10)),  // Terminating the list with a comma is REQUIRED
      )
    )
    

##  Parameters

Although labeling is implemented using ` tables ` , its usage is similar to `
terms ` , except that it lacks the ` tight ` and ` hanging-indent `
parameters. If you have any questions about the parameters for ` labeling ` ,
you can refer to [ ` terms ` ](https://typst.app/docs/reference/model/terms/)
.

    
    
    labeling(
      separator: content,
      indent: length,
      spacing: auto length
      pairs: ((content, content))
    )
    

###  separator

The separator between the item and the description.

Default: ` [:#h(0.6em)] `

###  indent

The indentation of each item.

Default: ` 0pt `

###  spacing

The spacing between the items of the term list.

Default: ` auto `

###  pairs

An array of ` (item, description) ` pairs.

Example:

    
    
    #labeling(
      (
        ([key 1],[description 1]),
        ([keyword 2],[description 2]),
      )
    )
    

##  Additional Documentation and Acknowledgments

For more information on the koma-labeling package and its features, you can
refer to the following resources:

  * Typst Documentation: [ Typst Documentation ](https://typst.app/docs)
  * KOMA-Script Documentation: [ KOMA-Script Documentation ](https://ctan.org/pkg/koma-script)

###  How to add

Copy this into your project and use the import as  ` koma-labeling `

    
    
    #import "@preview/koma-labeling:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Laniakea Kamasylvia 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 28, 2024 
First released:

     October 28, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.54 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/koma-labeling-0.1.0.tar.gz)
Categor  y  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)

###  Where to report issues?

This  package  is a project of  Laniakea Kamasylvia  .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 28, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

