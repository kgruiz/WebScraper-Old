![A preview of the silky-slides-insa Typst
template.](https://packages.typst.org/preview/thumbnails/silky-slides-
insa-0.1.1-small.webp)

#  silky-slides-insa

0.1.1

A template made for presentations of INSA, a French engineering school.

[ Create project in app ](/app?template=silky-slides-insa&version=0.1.1)

![thumbnail](https://github.com/typst/packages/raw/main/packages/preview/silky-
slides-insa/0.1.1/thumbnail-full.png)

Typst Template for presentation for the french engineering school INSA.

##  Table of contents

  1. [ Example ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#examples)
  2. [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#usage)
  3. [ Fonts information ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#fonts)
  4. [ Notes ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#notes)
  5. [ License ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#license)
  6. [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/silky-slides-insa/0.1.1/#changelog)

##  Example

    
    
    #import "@preview/silky-slides-insa:0.1.1": *
    #show: insa-slides.with(
      title: "Titre du diaporama",
      title-visual: none,
      subtitle: "Sous-titre (noms et prÃ©noms ?)",
      insa: "rennes"
    )
    
    = Titre de section
    
    == Titre d'une slide
    
    - Liste
      - dans
        - une liste
    
    On peut aussi faire un #text(fill: insa-colors.secondary)[texte] avec les #text(fill: insa-colors.primary)[couleurs de l'INSA] !
    
    == Une autre slide
    
    Du texte
    
    #pause
    
    Et un autre texte qui apparaÃ®t plus tard !
    
    #section-slide[Une autre section][Avec une petite description]
    
    Coucou
    

##  Usage

###  Slide show rule

You call it with ` #show: insa-slides.with(..parameters) ` .

Parameter  |  Description  |  Type  |  Example   
---|---|---|---  
**title** |  Title of the presentation  |  content  |  ` [Titre de la prez] `  
**title-visual** |  Content shown at the right of the title slide  |  content  |  none   
**subtitle** |  Subtitle of the presentation  |  content  |  ` [Sous-titre] `  
**insa** |  INSA name ( ` rennes ` , ` hdf ` â¦)  |  str  |  ` "rennes" `  
  
If you assign a content to ` title-visual ` , the title slide will
automatically switch layout to the âvisualâ one from the graphic charter.
If you do not assign a visual content, the title slide will only contain the
title and subtitle and will choose the simple layout.

###  Section slide

A section slide is automatically created when you put a level-1 header in your
markup. For example:

    
    
    = Slide section
    Blablabla
    

Will create a section slide with the title âSlide sectionâ and will be
followed by a content slide containing âBlablablaâ.

If you want to put a subtitle in your section slide, you must explicitely use
the ` section-slide ` function like so:

    
    
    #section-slide[Titre de section][Description de section]
    

##  Fonts

The graphic charter recommends the fonts **League Spartan** for headings and
**Source Serif** for regular text. To have the best look, you should install
those fonts.

> You can download the fonts from [ here ](https://github.com/SkytAsul/INSA-
> Typst-Template/tree/main/fonts) .

To behave correctly on computers lacking those specific fonts, this template
will automatically fallback to similar ones:

  * **League Spartan** -> **Arial** (approved by INSAâs graphic charter, by default in Windows) -> **Liberation Sans** (by default in most Linux) 
  * **Source Serif** -> **Source Serif 4** (downloadable for free) -> **Georgia** (approved by the graphic charter) -> **Linux Libertine** (default Typst font) 

###  Note on variable fonts

If you want to install those fonts on your computer, Typst might not recognize
them if you install their _Variable_ versions. You should install the static
versions ( **League Spartan Bold** and most versions of **Source Serif** ).

Keep an eye on [ the issue in Typst bug tracker
](https://github.com/typst/typst/issues/185) to see when variable fonts will
be used!

##  Notes

This template is being developed by Youenn LE JEUNE from the INSA de Rennes in
[ this repository ](https://github.com/SkytAsul/INSA-Typst-Template) .

For now it includes assets from the graphic charters of those INSAs:

  * Rennes ( ` rennes ` ) 
  * Hauts de France ( ` hdf ` ) 
  * Centre Val de Loire ( ` cvl ` ) Users from other INSAs can open a pull request on the repository with the assets for their INSA. 

If you have any other feature request, open an issue on the repository.

##  License

The typst template is licensed under the [ MIT license
](https://github.com/SkytAsul/INSA-Typst-Template/blob/main/LICENSE) . This
does _not_ apply to the image assets. Those image files are property of Groupe
INSA.

##  Changelog

###  0.1.1

  * Added INSA CVL assets 

###  0.1.0

  * Created the template 

[ Create project in app ](/app?template=silky-slides-insa&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/silky-slides-insa:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     SkytAsul 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     November 21, 2024 
First released:

     October 16, 2024 
Archive size:

     227 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/silky-slides-insa-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/SkytAsul/INSA-Typst-Template)
Discipline  s  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)
  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  SkytAsul  .  Report issues on  [ their
repository ](https://github.com/SkytAsul/INSA-Typst-Template) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/silky-slides-insa/0.1.0/) |  October 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

