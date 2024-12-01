#  unify

0.7.0

Format numbers, units, and ranges correctly.

Featured  Package

` unify ` is a [ Typst ](https://github.com/typst/typst) package simplifying
the typesetting of numbers, units, and ranges. It is the equivalent to
LaTeXâs ` siunitx ` , though not as mature.

##  Overview

` unify ` allows flexible numbers and units, and still mostly gets well
typeset results.

    
    
    #import "@preview/unify:0.7.0": num,qty,numrange,qtyrange
    
    $ num("-1.32865+-0.50273e-6") $
    $ qty("1.3+1.2-0.3e3", "erg/cm^2/s", space: "#h(2mm)") $
    $ numrange("1,1238e-2", "3,0868e5", thousandsep: "'") $
    $ qtyrange("1e3", "2e3", "meter per second squared", per: "/", delimiter: "\"to\"") $
    

![](https://github.com/typst/packages/raw/main/packages/preview/unify/0.7.0/examples/overview.jpg)

Right now, physical, monetary, and binary units are supported. New issues or
pull requests for new units are welcome!

##  Multilingual support

The Unify package supports multiple languages. Currently, the supported
languages are English and Russian. The fallback is English. If you want to add
your language, you should add two files: ` prefixes-xx.csv ` and ` units-
xx.csv ` , and in the ` lib.typ ` file you should fix the ` lang-db ` state
for your files.

##  ` num `

` num ` uses string parsing in order to typeset numbers, including separators
between the thousands. They can have the following form:

  * ` float ` or ` integer ` number 
  * either ( ` {} ` stands for a number) 
    * symmetric uncertainties with ` +-{} `
    * asymmetric uncertainties with ` +{}-{} `
  * exponential notation ` e{} `

Parentheses are automatically set as necessary. Use ` thousandsep ` to change
the separator between the thousands, and ` multiplier ` to change the
multiplication symbol between the number and exponential.

##  ` unit `

` unit ` takes the unit in words or in symbolic notation as its first
argument. The value of ` space ` will be inserted between units if necessary.
Setting ` per ` to ` symbol ` will format the number with exponents (i.e. `
^(-1) ` ), ` fraction ` or ` / ` using fraction, and ` fraction-short ` or `
\\/ ` using in-line fractions.  
Units in words have four possible parts:

  * ` per ` forms the inverse of the following unit. 
  * A written-out prefix in the sense of SI (e.g. ` centi ` ). This is added before the unit. 
  * The unit itself written out (e.g. ` gram ` ). 
  * A postfix like ` squared ` . This is added after the unit and takes ` per ` into account. 

The shorthand notation also has four parts:

  * ` / ` forms the inverse of the following unit. 
  * A short prefix in the sense of SI (e.g. ` k ` ). This is added before the unit. 
  * The short unit itself (e.g. ` g ` ). 
  * An exponent like ` ^2 ` . This is added after the unit and takes ` / ` into account. 

Note: Use ` u ` for micro.

The possible values of the three latter parts are loaded at runtime from `
prefixes.csv ` , ` units.csv ` , and ` postfixes.csv ` (in the library
directory). Your own units etc. can be permanently added in these files. At
runtime, they can be added using ` add-unit ` and ` add-prefix ` ,
respectively. The formats for the pre- and postfixes are:

pre-/postfix  |  shorthand  |  symbol   
---|---|---  
milli  |  m  |  upright(âmâ)   
  
and for units:

unit  |  shorthand  |  symbol  |  space   
---|---|---|---  
meter  |  m  |  upright(âmâ)  |  true   
  
The first column specifies the written-out word, the second one the shorthand.
These should be unique. The third column represents the string that will be
inserted as the unit symbol. For units, the last column describes whether
there should be space before the unit (possible values: ` true ` / ` false ` ,
` 1 ` , ` 0 ` ). This is mostly the cases for degrees and other angle units
(e.g. arcseconds).  
If you think there are units not included that are of interest for other
users, you can create an issue or PR.

##  ` qty `

` qty ` allows a ` num ` as the first argument following the same rules. The
second argument is a unit. If ` rawunit ` is set to true, its value will be
passed on to the result (note that the string passed on will be passed to `
eval ` , so add escaped quotes ` \" ` if necessary). Otherwise, it follows the
rules of ` unit ` . The value of ` space ` will be inserted between units if
necessary, ` thousandsep ` between the thousands, and ` per ` switches between
exponents and fractions.

##  ` numrange `

` numrange ` takes two ` num ` s as the first two arguments. If they have the
same exponent, it is automatically factorized. The range symbol can be changed
with ` delimiter ` , and the space between the numbers and symbols with `
space ` .

##  ` qtyrange `

` qtyrange ` is just a combination of ` unit ` and ` range ` .

###  How to add

Copy this into your project and use the import as  ` unify `

    
    
    #import "@preview/unify:0.7.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Christopher Hecker 
License:

     MIT 
Current version:

     0.7.0 
Last updated:

     November 28, 2024 
First released:

     July 27, 2023 
Archive size:

     9.04 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/unify-0.7.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ChHecker/unify)
Discipline  s  :

    

  * [ Business ](https://typst.app/universe/search/?discipline=business)
  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Economics ](https://typst.app/universe/search/?discipline=economics)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  Christopher Hecker  .  Report issues on  [
their repository ](https://github.com/ChHecker/unify) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.7.0  |  November 28, 2024   
[ 0.6.1 ](https://typst.app/universe/package/unify/0.6.1/) |  November 18, 2024   
[ 0.6.0 ](https://typst.app/universe/package/unify/0.6.0/) |  May 23, 2024   
[ 0.5.0 ](https://typst.app/universe/package/unify/0.5.0/) |  March 26, 2024   
[ 0.4.3 ](https://typst.app/universe/package/unify/0.4.3/) |  October 22, 2023   
[ 0.4.2 ](https://typst.app/universe/package/unify/0.4.2/) |  October 9, 2023   
[ 0.4.1 ](https://typst.app/universe/package/unify/0.4.1/) |  September 3, 2023   
[ 0.4.0 ](https://typst.app/universe/package/unify/0.4.0/) |  July 28, 2023   
[ 0.1.0 ](https://typst.app/universe/package/unify/0.1.0/) |  July 27, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

