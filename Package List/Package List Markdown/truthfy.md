#  truthfy

0.5.0

Make empty or automatically filled truth table

Make an empty or filled truth table in Typst

    
    
    truth-table-empty(info: array[math_block], data: array[str]): table
        # Create an empty (or filled with "data") truth table. 
    
    truth-table(..info: array[math_block]): table
        # Create a filled truth table.
    
    karnaugh-empty(info: array[math_block], data: array[str]): table
        # Create an empty karnaugh table.
    
    NAND: Equivalent to sym.arrow.t
    NOR: Equivalent to sym.arrow.b
    

##  ` sc `

Theses functions have a new named argument, called ` sc ` for symbol-
convention.

You can add you own function to customise the render of the 0 and the 1. See
examples.

Syntax:

    
    
    #let sc(symb) = {
        if (symb) {
            "an one"
        } else {
            "a zero"
        }
    }
    

##  ` reverse `

Reverse your table, see issue #3

##  Simple

    
    
    #import "@preview/truthfy:0.4.0": truth-table, truth-table-empty
    
    #truth-table($A and B$, $B or A$, $A => B$, $(A => B) <=> A$, $ A xor B$)
    
    #truth-table($p => q$, $not p => (q => p)$, $p or q$, $not p or q$)
    

![image](https://github.com/Thumuss/truthfy/assets/42680097/7edb921d-659e-4348-a12a-07bcc3822012)

    
    
    #import "@preview/truthfy:0.4.0": truth-table, truth-table-empty
    
    #truth-table(sc: (a) => {if (a) {"a"} else {"b"}}, $a and b$)
    
    #truth-table-empty(sc: (a) => {if (a) {"x"} else {"$"}}, ($a and b$,), (false, [], true))
    

![image](https://github.com/Thumuss/truthfy/assets/42680097/1ccf6077-5cfb-4643-b621-1dc9529b8176)

If you have any idea to add in this package, add a new issue [ here
](https://github.com/Thumuss/truthfy/issues) !

` 0.1.0 ` : Create the package.  
` 0.2.0 ` :

  * You can now use ` t ` , ` r ` , ` u ` , ` e ` , ` f ` , ` a ` , ` l ` , ` s ` without any problems! 
  * You can now add subscript to a letter 
  * Only ` generate-table ` and ` generate-empty ` are now exported 
  * Better example with more cases 
  * Implemented the ` a ? b : c ` operator   

` 0.3.0 ` :

  * Changing the name of ` generate-table ` and ` generate-empty ` to ` truth-table ` and ` truth-table-empty `
  * Adding support of ` NAND ` and ` NOR ` operators. 
  * Adding support of custom ` sc ` function. 
  * Better example and [ README.md ](http://readme.md/)

` 0.4.0 ` :

  * Add ` karnaugh-empty `
  * Images re-added (see #2) 
  * Add ` reverse ` option (see #3) 

###  How to add

Copy this into your project and use the import as  ` truthfy `

    
    
    #import "@preview/truthfy:0.5.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Quemin Thomas ](https://github.com/Thumuss)
License:

     MIT 
Current version:

     0.5.0 
Last updated:

     September 14, 2024 
First released:

     October 9, 2023 
Archive size:

     4.54 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/truthfy-0.5.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Thumuss/truthfy)

###  Where to report issues?

This  package  is a project of  Quemin Thomas  .  Report issues on  [ their
repository ](https://github.com/Thumuss/truthfy) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.0  |  September 14, 2024   
[ 0.4.0 ](https://typst.app/universe/package/truthfy/0.4.0/) |  June 10, 2024   
[ 0.3.0 ](https://typst.app/universe/package/truthfy/0.3.0/) |  February 6, 2024   
[ 0.2.0 ](https://typst.app/universe/package/truthfy/0.2.0/) |  October 16, 2023   
[ 0.1.0 ](https://typst.app/universe/package/truthfy/0.1.0/) |  October 9, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

