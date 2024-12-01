#  name-it

0.1.2

Get the English names of integers.

Get the English names of integers.

##  Example

![Example](https://github.com/typst/packages/raw/main/packages/preview/name-
it/0.1.2/example.png)

    
    
    #import "@preview/name-it:0.1.0": name-it
    
    #set page(width: auto, height: auto, margin: 1cm)
    
    - #name-it(-5)
    - #name-it(-5, negative-prefix: "minus")
    - #name-it(0)
    - #name-it(1)
    - #name-it(10)
    - #name-it(11)
    - #name-it(42)
    - #name-it(100)
    - #name-it(110)
    - #name-it(1104)
    - #name-it(11040)
    - #name-it(11000)
    - #name-it(110000)
    - #name-it(1100004)
    - #name-it(10000000000006)
    - #name-it(10000000000006, show-and: false)
    - #name-it("200000000000000000000000007")
    

##  Usage

###  ` name-it `

Convert the given number into its English word representation.

    
    
    #let name-it(num, show-and: true, negative-prefix: "negative") = { .. }
    

**Arguments:**

  * ` num ` : [ ` int ` ](https://typst.app/docs/reference/foundations/int/) , [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The number to name. 
  * ` show-and ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether an âandâ should be used in certain places. For example, âone hundred tenâ vs âone hundred and tenâ. 
  * ` negative-prefix ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The prefix to use for negative numbers. 

###  How to add

Copy this into your project and use the import as  ` name-it `

    
    
    #import "@preview/name-it:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     RubixDev 
License:

     GPL-3.0-only 
Current version:

     0.1.2 
Last updated:

     November 12, 2024 
First released:

     October 4, 2023 
Archive size:

     74.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/name-it-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/RubixDev/typst-name-it)

###  Where to report issues?

This  package  is a project of  RubixDev  .  Report issues on  [ their
repository ](https://github.com/RubixDev/typst-name-it) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  November 12, 2024   
[ 0.1.1 ](https://typst.app/universe/package/name-it/0.1.1/) |  October 5, 2023   
[ 0.1.0 ](https://typst.app/universe/package/name-it/0.1.0/) |  October 4, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

