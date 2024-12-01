#  prequery

0.1.0

library for extracting metadata for preprocessing from a typst document

This package helps extracting metadata for preprocessing from a typst
document, for example image URLs for download from the web. Typst compilations
are sandboxed: it is not possible for Typst packages, or even just a Typst
document itself, to access the âouside worldâ. This sandboxing of Typst
has good reasons. Yet, it is often convenient to trade a bit of security for
convenience by weakening it. Prequery helps with that by providing some simple
scaffolding for supporting preprocessing of documents.

Hereâs an example for referencing images from the internet:

    
    
    #import "@preview/prequery:0.1.0"
    
    // toggle this comment or pass `--input prequery-fallback=true` to enable fallback
    // #prequery.fallback.update(true)
    
    #prequery.image(
      "https://en.wikipedia.org/static/images/icons/wikipedia.png",
      "assets/wikipedia.png")
    

Using ` typst query ` , the image URL(s) are extracted from the document:

    
    
    typst query --input prequery-fallback=true --field value \
        main.typ ''
    

This will output the following piece of JSON:

    
    
    [{"url": "https://en.wikipedia.org/static/images/icons/wikipedia.png", "path": "assets/wikipedia.png"}]
    

Which can then be used to download all images to the expected locations.

See the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/prequery/0.1.0/docs/manual.pdf)
for details.

###  How to add

Copy this into your project and use the import as  ` prequery `

    
    
    #import "@preview/prequery:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Clemens Koza ](https://github.com/SillyFreak/)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 15, 2024 
First released:

     July 15, 2024 
Archive size:

     3.29 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/prequery-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/SillyFreak/typst-prequery)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Clemens Koza  .  Report issues on  [ their
repository ](https://github.com/SillyFreak/typst-prequery) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

