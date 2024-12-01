#  unichar

0.3.0

A partial port of the Unicode Character Database.

This package ports part of the [ Unicode Character Database
](https://www.unicode.org/reports/tr44/) to Typst. Notably, it includes
information from [ UnicodeData.txt
](https://unicode.org/reports/tr44/#UnicodeData.txt) and [ Blocks.txt
](https://unicode.org/reports/tr44/#Blocks.txt) .

##  Usage

This package defines a single function: ` codepoint ` . It lets you get the
information related to a specific codepoint. The codepoint can be specified as
a string containing a single character, or with its value.

    
    
    #codepoint("â").name \
    #codepoint(sym.times).block.name \
    #codepoint(0x00C9).general-category \
    #codepoint(sym.eq).math-class
    

![image](https://github.com/typst/packages/raw/main/packages/preview/unichar/0.3.0/examples/example-1.svg)

You can display a codepoint in the style of [ Template:Unichar
](https://en.wikipedia.org/wiki/Template:Unichar) using the ` show ` entry:

    
    
    #codepoint("Â¤").show \
    #codepoint(sym.copyright).show \
    #codepoint(0x1249).show \
    #codepoint(0x100000).show
    

![image](https://github.com/typst/packages/raw/main/packages/preview/unichar/0.3.0/examples/example-2.svg)

##  Changelog

###  Version 0.3.0

  * Add ` math-class ` attribute to codepoints. 

    * Some codepoints have their math class overridden by Typst. This is the Unicode math class, not the one used by Typst. 
  * The ` id ` of codepoints now returns a string without the ` "U+" ` prefix. 

###  Version 0.2.0

  * Codepoints now have an ` id ` attribute which is its corresponding âU+xxxxâ string. 

  * The ` block ` attribute of a codepoint now contains a ` name ` , a ` start ` , and a ` size ` . 

  * Fix an issue that made some codepoints cause a panic. 

  * Include data from NameAlias.txt. 

###  Version 0.1.0

  * Add the ` codepoint ` function. 

###  How to add

Copy this into your project and use the import as  ` unichar `

    
    
    #import "@preview/unichar:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Malo ](https://github.com/MDLC01)
License:

     MIT AND Unicode-3.0 
Current version:

     0.3.0 
Last updated:

     September 19, 2024 
First released:

     September 14, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     202 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/unichar-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/MDLC01/unichar)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  Malo  .  Report issues on  [ their repository
](https://github.com/MDLC01/unichar) .  You can also try to ask for help with
this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  September 19, 2024   
[ 0.2.0 ](https://typst.app/universe/package/unichar/0.2.0/) |  September 15, 2024   
[ 0.1.0 ](https://typst.app/universe/package/unichar/0.1.0/) |  September 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

