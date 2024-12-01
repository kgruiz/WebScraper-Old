#  cheq

0.2.2

Write markdown-like checklist easily.

Write markdown-like checklist easily.

##  Usage

Checklists are incredibly useful for keeping track of important items. We can
use the cheq package to achieve checklist syntax similar to [ GitHub Flavored
Markdown ](https://github.github.com/gfm/#task-list-items-extension-) and [
Minimal ](https://minimal.guide/checklists) .

    
    
    #import "@preview/cheq:0.2.2": checklist
    
    #show: checklist
    
    = Solar System Exploration, 1950s â 1960s
    
    - [ ] Mercury
    - [x] Venus
    - [x] Earth (Orbit/Moon)
    - [x] Mars
    - [-] Jupiter
    - [/] Saturn
    - [ ] Uranus
    - [ ] Neptune
    - [ ] Comet Haley
    
    = Extras
    
    - [>] Forwarded
    - [<] Scheduling
    - [?] question
    - [!] important
    - [\*] star
    - ["] quote
    - [l] location
    - [b] bookmark
    - [i] information
    - [S] savings
    - [I] idea
    - [p] pros
    - [c] cons
    - [f] fire
    - [k] key
    - [w] win
    - [u] up
    - [d] down
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/cheq/0.2.2/examples/example.png)

##  Custom Styles

    
    
    #import "@preview/cheq:0.2.2": checklist
    
    #show: checklist.with(fill: luma(95%), stroke: blue, radius: .2em)
    
    = Solar System Exploration, 1950s â 1960s
    
    - [ ] Mercury
    - [x] Venus
    - [x] Earth (Orbit/Moon)
    - [x] Mars
    - [-] Jupiter
    - [/] Saturn
    - [ ] Uranus
    - [ ] Neptune
    - [ ] Comet Haley
    
    #show: checklist.with(marker-map: (" ": sym.ballot, "x": sym.ballot.x, "-": sym.bar.h, "/": sym.slash.double))
    
    = Solar System Exploration, 1950s â 1960s
    
    - [ ] Mercury
    - [x] Venus
    - [x] Earth (Orbit/Moon)
    - [x] Mars
    - [-] Jupiter
    - [/] Saturn
    - [ ] Uranus
    - [ ] Neptune
    - [ ] Comet Haley
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/cheq/0.2.2/examples/custom-
styles.png)

##  ` checklist ` function

    
    
    #let checklist(
      fill: white,
      stroke: rgb("#616161"),
      radius: .1em,
      marker-map: (:),
      body,
    ) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` string ` ] â The fill color for the checklist marker. 
  * ` stroke ` : [ ` string ` ] â The stroke color for the checklist marker. 
  * ` radius ` : [ ` string ` ] â The radius of the checklist marker. 
  * ` marker-map ` : [ ` map ` ] â The map of the checklist marker. It should be a map of character to symbol function, such as ` (" ": sym.ballot, "x": sym.ballot.x, "-": sym.bar.h, "/": sym.slash.double) ` . 
  * ` show-list-set-block ` : [ ` dictionary ` ] - The configuration of the block in list. It should be a dictionary of ` above ` and ` below ` keys, such as ` (above: .5em) ` . 
  * ` body ` : [ ` content ` ] â The main body from ` #show: checklist ` rule. 

The default map is:

    
    
    #let default-map = (
      "x": checked-sym(fill: fill, stroke: stroke, radius: radius),
      " ": unchecked-sym(fill: fill, stroke: stroke, radius: radius),
      "/": incomplete-sym(fill: fill, stroke: stroke, radius: radius),
      "-": canceled-sym(fill: fill, stroke: stroke, radius: radius),
      ">": "â¡",
      "<": "ð",
      "?": "â",
      "!": "â",
      "*": "â­",
      "\"": "â",
      "l": "ð",
      "b": "ð",
      "i": "â¹ï¸",
      "S": "ð°",
      "I": "ð¡",
      "p": "ð",
      "c": "ð",
      "f": "ð¥",
      "k": "ð",
      "w": "ð",
      "u": "ð¼",
      "d": "ð½",
    )
    

##  ` unchecked-sym ` function

    
    
    #let unchecked-sym(fill: white, stroke: rgb("#616161"), radius: .1em) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` string ` ] â The fill color for the unchecked symbol. 
  * ` stroke ` : [ ` string ` ] â The stroke color for the unchecked symbol. 
  * ` radius ` : [ ` string ` ] â The radius of the unchecked symbol. 

##  ` checked-sym ` function

    
    
    #let checked-sym(fill: white, stroke: rgb("#616161"), radius: .1em) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` string ` ] â The fill color for the checked symbol. 
  * ` stroke ` : [ ` string ` ] â The stroke color for the checked symbol. 
  * ` radius ` : [ ` string ` ] â The radius of the checked symbol. 

##  ` incomplete-sym ` function

    
    
    #let incomplete-sym(fill: white, stroke: rgb("#616161"), radius: .1em) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` string ` ] â The fill color for the incomplete symbol. 
  * ` stroke ` : [ ` string ` ] â The stroke color for the incomplete symbol. 
  * ` radius ` : [ ` string ` ] â The radius of the incomplete symbol. 

##  ` canceled-sym ` function

    
    
    #let canceled-sym(fill: white, stroke: rgb("#616161"), radius: .1em) = { .. }
    

**Arguments:**

  * ` fill ` : [ ` string ` ] â The fill color for the canceled symbol. 
  * ` stroke ` : [ ` string ` ] â The stroke color for the canceled symbol. 
  * ` radius ` : [ ` string ` ] â The radius of the canceled symbol. 

##  License

This project is licensed under the MIT License.

###  How to add

Copy this into your project and use the import as  ` cheq `

    
    
    #import "@preview/cheq:0.2.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     OrangeX4  ,  Myriad-Dreamin  , & duskmoon314 
License:

     MIT 
Current version:

     0.2.2 
Last updated:

     October 17, 2024 
First released:

     April 12, 2024 
Archive size:

     3.33 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cheq-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/OrangeX4/typst-cheq)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  OrangeX4, Myriad-Dreamin, and duskmoon314  .
Report issues on  [ their repository ](https://github.com/OrangeX4/typst-cheq)
.  You can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  October 17, 2024   
[ 0.2.1 ](https://typst.app/universe/package/cheq/0.2.1/) |  October 14, 2024   
[ 0.2.0 ](https://typst.app/universe/package/cheq/0.2.0/) |  September 8, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cheq/0.1.0/) |  April 12, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

