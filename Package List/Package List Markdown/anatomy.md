#  anatomy

0.1.1

Anatomy of a Font. Visualise metrics.

_Anatomy of a Font_ . Visualise metrics.

Import the ` anatomy ` package:

    
    
    #import "@preview/anatomy:0.1.1": metrics
    

##  Display Metrics

` metrics(72pt, "EB Garamond", display: "Typewriter") ` will be rendered as
follows:

![](https://raw.githubusercontent.com/E8D08F/packages/main/packages/preview/anatomy/0.1.1/img/export-1.svg)

Additionally, a closure using ` metrics ` dictionary as parameter can be used
to layout additional elements below:

    
    
    #metrics(54pt, "ä¸é»æé«",
      display: "é»å³æå­æ©",
      use: metrics => table(
        columns: 2,
        ..metrics.pairs().flatten().map(x => [ #x ])
      )
    )
    

It will generate:

![](https://raw.githubusercontent.com/E8D08F/packages/main/packages/preview/anatomy/0.1.1/img/export-2.svg)

##  Remark on Hybrid Typesetting

To typeset CJK text, adopting fontâs ascender/descender as ` top-edge ` / `
bottom-edge ` makes more sense in some cases. As for most CJK fonts, the
difference between ascender and descender heights will be exact 1em.

Tested with ` metrics(54pt, "Hiragino Mincho ProN", "ãã¬ã¿ã¤ãç«¯æ«") `
:

![](https://raw.githubusercontent.com/E8D08F/packages/main/packages/preview/anatomy/0.1.1/img/export-3.svg)

Since Typst will use metrics of the font which has the largest advance height
amongst the list provided in ` set text(font: ( ... )) ` to set up top and
bottom edges of a line, leading might not work as expected in hybrid
typesetting. This issue can be solved by passing the document to `
metrics(use: metrics => { ... }) ` like this:

    
    
    #show: doc => metrics(font.size, font.main,
      // Retrieve the metrics of the CJK font
      use: metrics => {
        set text(
          font.size,
          font: ( font.latin, font.main ),
          features: ( "pkna", ),
          // Use CJK fontâs ascender/descender as top/bottom edges
          top-edge: metrics.ascender,
          bottom-edge: metrics.descender,
          // ...
        )
    
        doc
      }
    )
    

###  How to add

Copy this into your project and use the import as  ` anatomy `

    
    
    #import "@preview/anatomy:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Toto 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     February 19, 2024 
First released:

     February 17, 2024 
Archive size:

     2.59 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/anatomy-0.1.1.tar.gz)

###  Where to report issues?

This  package  is a project of  Toto  .  You can also try to ask for help with
this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  February 19, 2024   
[ 0.1.0 ](https://typst.app/universe/package/anatomy/0.1.0/) |  February 17, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

