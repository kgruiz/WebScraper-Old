![A preview of the minimalbc Typst
template.](https://packages.typst.org/preview/thumbnails/minimalbc-0.0.1-small.webp)

#  minimalbc

0.0.1

Sleek, minimalist design for professional business cards. Emphasizing clarity
and elegance.

Featured  Template

[ Create project in app ](/app?template=minimalbc&version=0.0.1)

This repository provides a Typst template for creating sleek and minimalist
professional business cards.

The function, **minimalbc** , allows you to customize the majority of the
business cardâs elements.

By default, the layout is horizontal. However, it can be easily switched to a
vertical layout by passing the value true to the flip argument in the
minimalbc function.

Hereâs an example of how to use the minimalbc function:

    
    
    #import "@preview/minimalbc:0.1.0": minimalbc
    
    #show: minimalbc.with(
        // possible geo_size options: eu, us, jp , cn
        geo_size: "eu",
        flip:true,
        company_name: "company name",
        name: "first and last name",
        role: "role",
        telephone_number: "+000 00 000000",
        email_address: "me@me.com",
        website: "example.com",
        company_logo: image("company_logo.png"),
        bg_color: "ffffff",
    )
    
    
    

When compiled, this example produces a PDF file named âyour filenameâ.pdf
(see example.pdf).

Feel free to download and use this as a starting point for your own business
cards.

[ Create project in app ](/app?template=minimalbc&version=0.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/minimalbc:0.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ S. Tessarin ](https://github.com/sevehub)
License:

     MIT 
Current version:

     0.0.1 
Last updated:

     June 14, 2024 
First released:

     June 14, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     80.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minimalbc-0.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/sevehub/minimalbc)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  S. Tessarin  .  Report issues on  [ their
repository ](https://github.com/sevehub/minimalbc) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  June 14, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

