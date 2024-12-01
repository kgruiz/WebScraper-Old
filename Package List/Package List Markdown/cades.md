#  cades

0.3.0

Generate QR codes in typst.

Draw QR codes in typst.

    
    
    #import "@preview/cades:0.3.0": qr-code
    
    = QR Code for `typst.app`:
    #qr-code("https://typst.app", width: 3cm)
    
    

##  Documentation

###  ` qr-code `

Draw a qr code to an image.

####  Arguments

  * ` content ` : ` str ` \- the content of the qr code 
  * ` width ` : ` length ` | ` auto ` \- the width of the qr code, default is ` auto `
  * ` height ` : ` length ` | ` auto ` \- the height of the qr code, default is ` auto `
  * ` color ` : ` color ` \- the color of the qrcode, default is ` black `
  * ` background ` : ` color ` \- the background color behind the qrcode, default is ` white `
  * ` error-correction ` : ` "L" ` | ` "M" ` | ` "Q" ` | ` "H" ` \- the error correction level for the qr code, default is ` "M" `

####  Returns

The image, of type ` content ` .

##  Acknowledgements

This package uses [ Jogs ](https://github.com/Enter-tainer/jogs) by [ Wenzhuo
Liu ](https://github.com/Enter-tainer) and the qr code rendering code is based
on [ qrcode-svg ](https://github.com/papnkukn/qrcode-svg/) by [ papnkukn
](https://github.com/papnkukn) .

###  How to add

Copy this into your project and use the import as  ` cades `

    
    
    #import "@preview/cades:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Niklas Ausborn 
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     November 25, 2023 
First released:

     November 10, 2023 
Archive size:

     8.61 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cades-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Midbin/cades)

###  Where to report issues?

This  package  is a project of  Niklas Ausborn  .  Report issues on  [ their
repository ](https://github.com/Midbin/cades) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  November 25, 2023   
[ 0.2.0 ](https://typst.app/universe/package/cades/0.2.0/) |  November 10, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

