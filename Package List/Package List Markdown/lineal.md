#  lineal

0.1.0

Build elegent slide decks with Typst

IPA: /ËlÉªniÉl/

Made up of, or having the characteristic of, lines.

Lineal is a Typst template for generating beautifully clean and configurably
awesome slides.

![Demo slide
deck](https://github.com/typst/packages/raw/main/packages/preview/lineal/0.1.0/assets/img/demo.gif)

##  Philosophy

As a long time user of TeX, I have developed and embedded countless LaTeX
applications into personal and corporate environments, e.g. automating
documentation, conference materials, posters, resumes, etc.

However, LaTeX is showing its age. Compiling a some 30-slide presentation, for
instance, takes perhaps a second, and may requires multiple renders to sync
TikZ positioning and cross-document referencing. Typst remediates these issues
in real-time and with better control and confidence in its data modelling.

Hence, Lineal was born. A professional set of slides produced near instantly,
readily equipped with configurable theming and a suite of flexible components.

##  Usage

Lineal is available through Typst Universe. Ensure you have installed Typst
locally or are familiar with the Typst [ web app ](https://typst.app/) or the
[ Tinymist LSP ](https://marketplace.visualstudio.com/items?itemName=myriad-
dreamin.tinymist) extensions for VS Code.

Get started by importing the package and populating your own `
/content/<slug>.typ ` files:

    
    
    #import "@preview/lineal:0.1.0": lineal-theme
    
    #show: lineal-theme.with(
      aspect-ratio: "16-9",
      config-info(
        title: [$bb("L")"ineal"$],
        subtitle: [A Typst slide template],
        author: [Author],
        date: datetime.today(),
        institution: [Institution],
        logo: [Logo],
      ),
    )
    
    #title-slide()
    
    #include "content/index.typ"
    

Marking up content is as you would with any other Typst document, where the
section ( ` = <section-title> ` ) and subsection ( ` == <slide-title> ` )
shorthands generate the new section slides with dynamic outline and new
tracked slides respectively.

##  Contributing

PRs are very welcome. If you think Lineal could be improved in any way or is
missing a feature, please raise a request ð

##  Acknowledgements

A heartfelt thank you to the team behind [ Typst
](https://github.com/typst/typst) , developing a product that not only
preserves the beauty of LaTeXâs typesetting, but improves on its developer
experience in every way, in line with ongoing community feedback.

The creators of the [ ` Touying ` ](https://github.com/touying-typ/touying)
and [ ` Polylux ` ](https://github.com/andreasKroepelin/polylux) Typst
packages, on which Lineal is built.

###  How to add

Copy this into your project and use the import as  ` lineal `

    
    
    #import "@preview/lineal:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ ellsphillips ](https://github.com/ellsphillips)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 28, 2024 
First released:

     November 28, 2024 
Archive size:

     7.40 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/lineal-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ellsphillips/lineal)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  package  is a project of  ellsphillips  .  Report issues on  [ their
repository ](https://github.com/ellsphillips/lineal) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 28, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

