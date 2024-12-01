#  tiaoma

0.2.1

Barcode and QRCode generator for Typst using Zint.

Featured  Package

[ tiaoma(æ¡ç ) ](https://github.com/enter-tainer/zint-wasi) is a barcode
generator for typst. It compiles [ zint ](https://github.com/zint/zint) to
wasm and use it to generate barcode. It support nearly all common barcode
types. For a complete list of supported barcode types, see [ zintâs
documentation ](https://zint.org.uk/) :

  * Australia Post 
    * Standard Customer 
    * Reply Paid 
    * Routing 
    * Redirection 
  * Aztec Code 
  * Aztec Runes 
  * Channel Code 
  * Codabar 
  * Codablock F 
  * Code 11 
  * Code 128 with automatic subset switching 
  * Code 16k 
  * Code 2 of 5 variants: 
    * Matrix 2 of 5 
    * Industrial 2 of 5 
    * IATA 2 of 5 
    * Datalogic 2 of 5 
    * Interleaved 2 of 5 
    * ITF-14 
  * Deutsche Post Leitcode 
  * Deutsche Post Identcode 
  * Code 32 (Italian pharmacode) 
  * Code 3 of 9 (Code 39) 
  * Code 3 of 9 Extended (Code 39 Extended) 
  * Code 49 
  * Code 93 
  * Code One 
  * Data Matrix ECC200 
  * DotCode 
  * Dutch Post KIX Code 
  * EAN variants: 
    * EAN-13 
    * EAN-8 
  * Grid Matrix 
  * GS1 DataBar variants: 
    * GS1 DataBar 
    * GS1 DataBar Stacked 
    * GS1 DataBar Stacked Omnidirectional 
    * GS1 DataBar Expanded 
    * GS1 DataBar Expanded Stacked 
    * GS1 DataBar Limited 
  * Han Xin 
  * Japan Post 
  * Korea Post 
  * LOGMARS 
  * MaxiCode 
  * MSI (Modified Plessey) 
  * PDF417 variants: 
    * PDF417 Truncated 
    * PDF417 
    * Micro PDF417 
  * Pharmacode 
  * Pharmacode Two-Track 
  * Pharmazentralnummer 
  * POSTNET / PLANET 
  * QR Code 
  * rMQR 
  * Royal Mail 4-State (RM4SCC) 
  * Royal Mail 4-State Mailmark 
  * Telepen 
  * UPC variants: 
    * UPC-A 
    * UPC-E 
  * UPNQR 
  * USPS OneCode (Intelligent Mail) 

##  Example

    
    
    #import "@preview/tiaoma:0.2.1"
    #set page(width: auto, height: auto)
    
    = tiÃ¡o mÇ
    
    #tiaoma.ean("1234567890128")
    

![example](https://github.com/typst/packages/raw/main/packages/preview/tiaoma/0.2.1/example.svg)

##  Manual

Please refer to [ manual
](https://github.com/typst/packages/raw/main/packages/preview/tiaoma/0.2.1/manual.pdf)
for more details.

##  Alternatives

There are other barcode/qrcode packages for typst such as:

  * [ https://github.com/jneug/typst-codetastic ](https://github.com/jneug/typst-codetastic)
  * [ https://github.com/Midbin/cades ](https://github.com/Midbin/cades)

Packages differ in provided customization options for generated barcodes. This
package is limited by zint functionality, which focuses more on coverage than
customization (e.g. inserting graphics into QR codes). Patching upstream zint
code is (currently) outside of the scope of this package - if it doesnât
provide functionality you need, check the rest of the typst ecosystem to see
if itâs available elsewhere or request it [ upstream
](https://github.com/zint/zint) and [ notify us ](https://github.com/Enter-
tainer/zint-wasi/issues) when itâs been merged.

###  Pros

  1. Support for far greater number of barcode types (all provided by zint library) 
  2. Should be faster as is uses a WASM plugin which bundles zint code which is written in C; others are written in pure typst or javascript. 

###  Cons

  1. While most if not all of zint functionality is covered, itâs hard to guarantee thereâs no overlooked functionality. 
  2. This package uses typst plugin system and has a WASM backend written in Rust which makes is less welcoming for new contributors. 

###  How to add

Copy this into your project and use the import as  ` tiaoma `

    
    
    #import "@preview/tiaoma:0.2.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     Wenzhuo Liu  & Tin Å vagelj 
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     September 8, 2024 
First released:

     November 30, 2023 
Archive size:

     457 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tiaoma-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Enter-tainer/zint-wasi)

###  Where to report issues?

This  package  is a project of  Wenzhuo Liu and Tin Å vagelj  .  Report issues
on  [ their repository ](https://github.com/Enter-tainer/zint-wasi) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  September 8, 2024   
[ 0.2.0 ](https://typst.app/universe/package/tiaoma/0.2.0/) |  February 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/tiaoma/0.1.0/) |  November 30, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

