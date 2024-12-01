#  finite

0.3.2

Typst-setting finite automata with CeTZ

Featured  Package

**finite** is a [ Typst ](https://github.com/typst/typst) package for
rendering finite automata on top of [ CeTZ ](https://github.com/johannes-
wolf/typst-canvas) .

##  Usage

For Typst 0.6.0 or later, import the package from the typst preview
repository:

    
    
    #import "@preview/finite:0.3.2": automaton
    

After importing the package, simply call ` #automaton() ` with a dictionary
holding a transition table:

    
    
    #import "@preview/finite:0.3.2": automaton
    
    #automaton((
      q0: (q1:0, q0:"0,1"),
      q1: (q0:(0,1), q2:"0"),
      q2: (),
    ))
    

The output should look like this: ![Example for a finite automaton drawn with
finite](https://github.com/typst/packages/raw/main/packages/preview/finite/0.3.2/assets/example.png)

##  Further documentation

See ` manual.pdf ` for a full manual of the package.

##  Development

The documentation is created using [ Mantys ](https://github.com/jneug/typst-
mantys) , a Typst template for creating package documentation.

To compile the manual, Mantys needs to be available as a local package. Refer
to Mantysâ manual for instructions on how to do so.

##  Changelog

###  Version 0.3.2

  * Fixed an issue with final states not beeing recognized properly (#5) 

###  Version 0.3.1

  * Added styling options for intial states: 
    * ` stroke ` sets a stroke for the marking. 
    * ` scale ` scales the marking by a factor. 
  * Updated manual. 

###  Version 0.3.0

  * Bumped tools4typst to v0.3.2. 
  * Introducing automaton specs as a data structure. 
  * Changes to ` automaton ` command: 
    * Changed ` label-format ` argument to ` state-format ` and ` input-format ` . 
    * ` layout ` can now take a dictionary with ( ` state ` : ` coordinate ` ) pairs to position states. 
  * Added ` #powerset ` command, to transform a NFA into a DFA. 
  * Added ` #add-trap ` command, to complete a partial DFA. 
  * Added ` #accepts ` command, to test a word against an NFA or DFA. 
  * Added ` transpose-table ` and ` get-inputs ` utilities. 
  * Added âStartâ label to the mark for initial states. 
    * Added option to modify the mark label for initial states. 
  * Added anchor option for loops, to position the loop at one of the eight default anchors. 
  * Changed ` curve ` option to be the height of the arc of the transition. 
    * This makes styling more consistent over longer distances. 
  * Added ` rest ` key to custom layouts. 

###  Version 0.2.0

  * Bumped CeTZ to v0.1.1. 

###  Version 0.1.0

  * Initial release submitted to [ typst/packages ](https://github.com/typst/packages) . 

###  How to add

Copy this into your project and use the import as  ` finite `

    
    
    #import "@preview/finite:0.3.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Jonas Neugebauer 
License:

     MIT 
Current version:

     0.3.2 
Last updated:

     September 30, 2024 
First released:

     September 3, 2023 
Archive size:

     13.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/finite-0.3.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jneug/typst-finite)

###  Where to report issues?

This  package  is a project of  Jonas Neugebauer  .  Report issues on  [ their
repository ](https://github.com/jneug/typst-finite) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.2  |  September 30, 2024   
[ 0.3.0 ](https://typst.app/universe/package/finite/0.3.0/) |  September 23, 2023   
[ 0.1.0 ](https://typst.app/universe/package/finite/0.1.0/) |  September 3, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

