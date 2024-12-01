#  clatter

0.1.0

Just the PDF417 generator from rxing.

clatter is a simple Typst package for generating PDF417 barcodes, utilizing
the [ rxing ](https://github.com/rxing-core/rxing) library.

##  Features

  * **Easy to Use** : The package provides a single, intuitive function to generate barcodes. 
  * **Flexible Sizing** : Control the size of the barcode with optional width and height parameters. 
  * **Customizable Orientation** : Barcodes can be rendered horizontally or vertically, with automatic adjustment based on size. 

##  Usage

The primary function provided by this package is ` pdf417 ` .

###  Parameters

  * ` text ` (required): The text to encode in the barcode. 
  * ` width ` (optional): The desired width of the barcode. 
  * ` height ` (optional): The desired height of the barcode. 
  * ` direction ` (optional): Sets the orientation of the barcode, either ` "horizontal" ` or ` "vertical" ` . If not specified, the orientation is automatically determined based on the provided dimensions. 

###  Sizing Behavior

  * By default, the barcode is rendered horizontally at a reasonable size. 
  * If both ` width ` and ` height ` are provided, the barcode will fit within the specified dimensions (i.e. ` fit: "contain" ` ). 
  * If the ` height ` is greater than the ` width ` , the barcode will automatically switch to vertical orientation unless ` direction ` is manually set. 

###  Example Usage

    
    
    #import "@preview/clatter:0.1.0": pdf417
    
    // Generate a sized horizontal PDF417 barcode 
    // Note: The specified size may not be exact, as the barcode will fit within the box, maintaining its aspect ratio.
    #pdf417("sized-barcode", width: 50mm, height: 20mm)
    
    // Generate a vertical barcode
    #pdf417("vertical-barcode", direction: "vertical")
    
    // Generate a barcode and position it on the page
    #place(top + right, pdf417("absolutely-positioned-barcode", width: 50mm), dx: -5mm, dy: 5mm)
    

* * *

Of course, such a lengthy README canât be written without the help of
ChatGPT.

###  How to add

Copy this into your project and use the import as  ` clatter `

    
    
    #import "@preview/clatter:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Hung-I Wang ](mailto:whygowe@gmail.com)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     August 14, 2024 
First released:

     August 14, 2024 
Archive size:

     411 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/clatter-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Gowee/typst-clatter)

###  Where to report issues?

This  package  is a project of  Hung-I Wang  .  Report issues on  [ their
repository ](https://github.com/Gowee/typst-clatter) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  August 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

