![A preview of the zen-zine Typst
template.](https://packages.typst.org/preview/thumbnails/zen-
zine-0.1.0-small.webp)

#  zen-zine

0.1.0

Excellently type-set a fun little zine!

[ Create project in app ](/app?template=zen-zine&version=0.1.0)

Excellently type-set a cute little zine about your favorite topic!

Providing your eight pages in order will produce a US-Letter page with the
content in a layout ready to be folded into a zine! The content is wrapped
before movement so that padding and alignment are respected.

Here is the template and its preview:

    
    
    #import "@preview/zen-zine:0.1.0": zine
    
    #set document(author: "Tom", title: "Zen Zine Example")
    #set text(font: "Linux Libertine", lang: "en")
    
    #let my_eight_pages = (
      range(8).map(
        number => [
          #pad(2em, text(10em, align(center, str(number))))
        ]
      )
    )
    
    // provide your content pages in order and they
    // are placed into the zine template positions.
    // the content is wrapped before movement so that
    // padding and alignment are respected.
    #zine(
      // draw_border: true,
      // zine_page_margin: 5pt,
      contents: my_eight_pages
    )
    

![Image of
Template](https://github.com/typst/packages/raw/main/packages/preview/zen-
zine/0.1.0/template/preview.png)

##  Improvement Ideas

Roughly in order of priority.

  * Write documentation and generate a manual 
  * Deduce ` page ` properties so that user can change the page they wish to use. 
    * Make sure the page is ` flipped ` and deduce the zine page width and height from the full page width and height (and the zine margin) 
    * Iâm currently struggling with finding out the page properties (whatâs the ` #get ` equivalent to ` #set ` ?) 
  * Add other zine sizes (there is a 16 page one I believe?) 
  * Digital mode where zine pages are separate pages (of the same size) rather than âsub pagesâ of a printer page 

[ Create project in app ](/app?template=zen-zine&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/zen-zine:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Tom Eichlersmith ](https://github.com/tomeichlersmith)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 4, 2024 
First released:

     April 4, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.34 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/zen-zine-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/tomeichlersmith/zen-zine)
Categor  ies  :

    

  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  template  is a project of  Tom Eichlersmith  .  Report issues on  [
their repository ](https://github.com/tomeichlersmith/zen-zine) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 4, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

