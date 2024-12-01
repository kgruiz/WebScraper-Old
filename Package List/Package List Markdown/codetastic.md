#  codetastic

0.2.2

Generate all sorts of codes in Typst.

**Codetastic** is a [ Typst ](https://github.com/typst/typst) package for
drawing barcodes and 2d codes.

##  Usage

For Typst 0.6.0 or later, import the package from the Typst preview
repository:

    
    
    #import "@preview/codetastic:0.2.2"
    

After importing the package call any of the code generation functions:

    
    
    #import "@preview/codetastic:0.2.2": ean13, qrcode
    
    #ean13(4012345678901)
    
    #qrcode("https://github.com/typst/typst")
    

The output should look like this: ![Example for codes drawn with
Codetastic](https://github.com/typst/packages/raw/main/packages/preview/codetastic/0.2.2/assets/example.png)

##  Further documentation

See ` manual.pdf ` for a full manual of the package.

##  Development

The documentation is created using [ Mantys ](https://github.com/jneug/typst-
mantys) , a Typst template for creating package documentation.

To compile the manual, Mantys needs to be available as a local package. Refer
to Mantysâ manual for instructions on how to do so.

##  Changelog

###  Version 0.2.2

  * qrcodes: 
    * Fixed issue with alignment pattern placement. 
    * Removed minimal borders around modules for sharper edges with small module sizes. 

###  Version 0.2.1

  * qrcodes: 
    * Fixed wrong sizing for ` width ` key. 
      * The code didnât take the quiet zone into account. 
    * Moved debug information into quiet zone. 

###  Version 0.2.0

  * Removed CeTZ as a dependecy. 
    * Now using native Typst drawing functions. 
  * Hugh speed improvements for large QR-Codes. 
  * Fixed issue with checksum calculation for gtin/ean codes. 

###  Version 0.1.0

  * Initial release submitted to [ typst/packages ](https://github.com/typst/packages) . 

###  How to add

Copy this into your project and use the import as  ` codetastic `

    
    
    #import "@preview/codetastic:0.2.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     J. Neugebauer 
License:

     MIT 
Current version:

     0.2.2 
Last updated:

     September 23, 2023 
First released:

     September 12, 2023 
Archive size:

     22.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/codetastic-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jneug/typst-codetastic)

###  Where to report issues?

This  package  is a project of  J. Neugebauer  .  Report issues on  [ their
repository ](https://github.com/jneug/typst-codetastic) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  September 23, 2023   
[ 0.2.0 ](https://typst.app/universe/package/codetastic/0.2.0/) |  September 19, 2023   
[ 0.1.0 ](https://typst.app/universe/package/codetastic/0.1.0/) |  September 12, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

