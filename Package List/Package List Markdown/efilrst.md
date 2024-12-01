#  efilrst

0.3.0

A simple referenceable list library for typst.

A simple referenceable list library for Typst. If you ever wanted to reference
elements in a list by a key, this library is for you. The name comes from
âreflistâ but sorted alphabetically because we are not allowed to use
descriptive names for packages in Typst ð¤·ð»ââï¸.

##  Example

    
    
    #import "@preview/efilrst:0.1.0" as efilrst
    #show ref: efilrst.show-rule
    
    #let constraint = efilrst.reflist.with(
      name: "Constraint", 
      list-style: "C1.1.1)", 
      ref-style: "C1.1.1")
    
    #constraint(
      counter-name: "continuable",
      [My cool constraint A],<c:a>,
      [My also cool constraint B],<c:b>,
      [My non-referenceable constraint C],
    )
    
    See how my @c:a is better than @c:b but not as cool as @c:e.
    
    #constraint(
      counter-name: "continuable",
      [We continue the list with D],<c:d>,
      [And then add constraint E],<c:e>,
    )
    
    #constraint(
      [This is a new list!],<c:f>,
      (
        [And it has a sublist!],<c:g>,
        [With a constraint H],<c:h>,
      )
    )
    
    #constraint(
      [This is another list!],<c:i>,
    )
    

This generates the following output:

![Example of the typst output. The last sentence reads "See how my Constraint
C1 is better than Constraint
C2"](https://github.com/typst/packages/raw/main/packages/preview/efilrst/0.3.0/img/image.png)

##  License

This project is licensed under the MIT License - see the [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/efilrst/0.3.0/LICENSE)
file for details.

##  TODO

  * [x] Add continuation of lists through the ` counter ` function 
  * [x] Add support for nested lists 

##  Changelog

###  0.1.0

  * Initial release 

###  0.2.0

  * Add continuation of lists through the ` counter ` function 

###  0.3.0

  * Add support for nested lists 

###  How to add

Copy this into your project and use the import as  ` efilrst `

    
    
    #import "@preview/efilrst:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Joan MarcÃ¨ i Igual ](https://github.com/jmigual)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     November 25, 2024 
First released:

     August 27, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     2.77 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/efilrst-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/jmigual/typst-efilrst)

###  Where to report issues?

This  package  is a project of  Joan MarcÃ¨ i Igual  .  Report issues on  [
their repository ](https://github.com/jmigual/typst-efilrst) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  November 25, 2024   
[ 0.2.0 ](https://typst.app/universe/package/efilrst/0.2.0/) |  November 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/efilrst/0.1.0/) |  August 27, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

