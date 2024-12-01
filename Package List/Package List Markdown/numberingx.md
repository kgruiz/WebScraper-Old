#  numberingx

0.0.1

Extended numbering patterns using the CSS Counter Styles spec

_Extended numbering patterns using the[ CSS Counter Styles
](https://www.w3.org/TR/css-counter-styles-3/) specification, along with a
number of [ Ready-made Counter Styles ](https://www.w3.org/TR/predefined-
counter-styles/) . _

##  Usage

    
    
    // numberingx is expected to be imported with the syntax creating a named module
    #import "@preview/numberingx:0.0.1"
    
    // Use full-width roman numerals for titles, and lowercase ukrainian letters
    #set heading(numbering: numberingx.formatter(
      "{fullwidth-upper-roman}.{fullwidth-lower-roman}.{lower-ukrainian}"
    ))
    

###  Patterns

numberingxâs patterns are similiar to typstâs [ numbering patterns
](https://typst.app/docs/reference/meta/numbering/) and use the same notion of
fragments with a prefix and a final suffix. The main difference is that it
doesnât use special characters and all numbering styles must be written
within braces. To insert a literal brace, you can double it.

A list of patterns can be found in the [ Ready-made Counter Styles
](https://www.w3.org/TR/predefined-counter-styles/) document. Additionally,
numberingx allows typstâs numbering characters to be used in patterns. This
way, ` "{upper-roman}.{decimal})" ` can be shortened to ` "{I}.{1})" ` .

###  API

numberingx exposes two functions, ` format ` and ` formatter ` .

####  ` format(fmt, styles: (:), ..nums) `

This function uses the same api as typstâs ` numbering() ` and takes the
pattern string as its first positional argument, and numbers as trailing
arguments. An optional ` styles ` argument allows for [ user-defined styles
](https://github.com/typst/packages/raw/main/packages/preview/numberingx/0.0.1/#user-
defined-styles) .

####  ` formatter(fmt, styles: (:)) `

This function is little more than a shorter version of ` format.with(..) ` .
It takes a pattern string and an optional ` styles ` argument, and return the
matching numbering functions. This is mainly intended to be used for ` #set `
rules.

##  User-defined styles

Custom styles can be defined according to the [ CSS Counter Styles
](https://www.w3.org/TR/css-counter-styles-3/) spec and passed through a `
styles ` named argument to ` format ` and ` formatter ` . It must be a
dictionary mapping style names to style descriptions.

Note that the ` prefix ` , ` suffix ` , ` pad ` , and ` speak-as ` descriptors
are not supported, nor is the ` extends ` system.

##  License

This repository is licensed under [ MIT-0
](https://spdx.org/licenses/MIT-0.html) , which is the closest Iâm legally
allowed to public domain while being OSI approved.

###  How to add

Copy this into your project and use the import as  ` numberingx `

    
    
    #import "@preview/numberingx:0.0.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Edhebi 
License:

     MIT-0 
Current version:

     0.0.1 
Last updated:

     July 21, 2023 
First released:

     July 21, 2023 
Archive size:

     13.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/numberingx-0.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/edhebi/numberingx)

###  Where to report issues?

This  package  is a project of  Edhebi  .  Report issues on  [ their
repository ](https://github.com/edhebi/numberingx) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  July 21, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

