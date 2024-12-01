![A preview of the invoice-maker Typst
template.](https://packages.typst.org/preview/thumbnails/invoice-
maker-1.1.0-small.webp)

#  invoice-maker

1.1.0

Generate beautiful invoices from a simple data record.

[ Create project in app ](/app?template=invoice-maker&version=1.1.0)

Generate beautiful invoices from a simple data record.

<img alt=âExample invoiceâ src=âthumbnail.pngâ height=â768â

> ##  Features

  * **Simple, yet Powerful**
    * Write invoices as simple ` .typ ` or ` .yaml ` files 
    * Support for cancellations, discounts, and taxes 
  * **Multilingual**
    * Integrated support for English and German 
    * Easy to add more languages by adding a translation dictionary (Check out this example: [ custom-language.typ ](https://github.com/ad-si/invoice-maker/blob/master/examples/custom-language.typ) ) 
  * **Customizable**
    * User your own banner image 
    * Customize the colors and fonts 
  * **Elegant**
    * Modern design with a focus on readability 
    * PDFs with a professional look 
  * **Stable**
    * Visual regression tests to ensure consistent output 
  * **Free and Open Source**
    * ISC License 

##  Usage

    
    
    #import "@preview/invoice-maker:1.0.0": *
    
    #show: invoice.with(
      language: "en", // or "de"
      banner_image: image("banner.png"),
      invoice_id: "2024-03-10t183205",
      â¦
    )
    

Check out the [ GitHub repository ](https://github.com/ad-si/invoice-maker)
for more information and examples.

[ Create project in app ](/app?template=invoice-maker&version=1.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/invoice-maker:1.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Adrian Sieber ](https://github.com/ad-si)
License:

     ISC 
Current version:

     1.1.0 
Last updated:

     March 28, 2024 
First released:

     March 28, 2024 
Archive size:

     14.1 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/invoice-maker-1.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ad-si/invoice-maker)
Discipline  :

    

  * [ Business ](https://typst.app/universe/search/?discipline=business)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Adrian Sieber  .  Report issues on  [ their
repository ](https://github.com/ad-si/invoice-maker) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.1.0  |  March 28, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

