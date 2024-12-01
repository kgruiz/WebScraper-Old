![A preview of the fireside Typst
template.](https://packages.typst.org/preview/thumbnails/fireside-1.0.0-small.webp)

#  fireside

1.0.0

A simple letter template with a touch of warmth

Featured  Template

[ Create project in app ](/app?template=fireside&version=1.0.0)

A Typst theme for a nice and simple looking letter thatâs not completely
black and white. Inspired by a Canva theme.

Features:

  * A neutral-warm beige background that feels cosier and softer to the eyes than pure white, while still looking kinda white-ish 
  * Short content is vertically padded to look a bit more centered 
  * Long content overflows gracefully on as many pages as necessary 

Basic example  |  Short text (vertically centered)  |  Multi-page overflowing text   
---|---|---  
[ ` .rendered/demo_medium.pdf ` ](https://github.com/typst/packages/raw/main/packages/preview/fireside/1.0.0/.rendered/demo_medium.pdf) |  [ ` .rendered/demo_short.pdf ` ](https://github.com/typst/packages/raw/main/packages/preview/fireside/1.0.0/.rendered/demo_short.pdf) |  [ ` .rendered/demo_long.pdf ` ](https://github.com/typst/packages/raw/main/packages/preview/fireside/1.0.0/.rendered/demo_long.pdf)  
  
  * If using Typst locally, install the [ HK Grotesk ](https://fonts.google.com/specimen/Hanken+Grotesk) font 
    * _Note: it is already installed on the[ https://typst.app/ ](https://typst.app/) IDE _
  * Insert the setup ` show ` statement 
    
        #import "@preview/fireside:1.0.0": *
    
    #show: project.with(
      title: [Anakin \ Skywalker],
      from-details: [
        Appt. x, \
        Mos Espa, \
        Tatooine \
        anakin\@example.com \ +999 xxxx xxx
      ],
      to-details: [
        Sheev Palpatine \
        500 Republica, \
        Ambassadorial Sector, Senate District, \
        Galactic City, \ Coruscant
      ],
    )
    
    Dear Emperor, ...
    

  * If your text overflows on multiple pages, you might want to add [ page numbering ](https://typst.app/docs/reference/layout/page/#parameters-numbering) , as shown in [ ` .demo/demo_long.typ ` ](https://github.com/typst/packages/raw/main/packages/preview/fireside/1.0.0/.demo/demo_long.typ) (line 3) 

    
    
      background: rgb("f4f1eb"), # Override the background color
      title: "",                 # Set the top-left title. It looks best on two lines
      from-details: none,        # Letter sender (you) details
      to-details: none,          # Letter receiver details
      margin: 2.1cm,             # Page margin
      vertical-center-level: 2,  # When the content is small, it is vertically centered a bit, but still kept closer to the top. This controls how much. Setting to none will disable centering.
      body
    

  * ` lib.typ ` is licensed as MIT ( [ https://opensource.org/license/mit ](https://opensource.org/license/mit) ) 
  * The demo/template files are licensed as CC0 ( [ https://creativecommons.org/publicdomain/zero/1.0/legalcode ](https://creativecommons.org/publicdomain/zero/1.0/legalcode) ) 
  * Any document fully or partially generated using this template may be licensed however you wish 

[ Create project in app ](/app?template=fireside&version=1.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/fireside:1.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Edgar Onghena ](https://edgar.bzh/)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     May 8, 2024 
First released:

     May 8, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.96 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/fireside-1.0.0.tar.gz)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Edgar Onghena  .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  May 8, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

