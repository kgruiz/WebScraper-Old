![A preview of the typographix-polytechnique-reports Typst
template.](https://packages.typst.org/preview/thumbnails/typographix-
polytechnique-reports-0.1.4-small.webp)

#  typographix-polytechnique-reports

0.1.4

A report template for Polytechnique students (from TypographiX).

[ Create project in app ](/app?template=typographix-polytechnique-
reports&version=0.1.4)

A Typst package for Polytechnique student reports.

For a short introduction to Typst features and detailled information about the
package, check the [ guide ](https://github.com/remigerme/typst-
polytechnique/blob/main/guide.pdf) (available from the repo only).

##  Usage

If you want to use it on local, make sure you have the font âNew Computer
Modern Sansâ installed.

Define variables at the top of the template :

    
    
    #let title = "Rapport de stage en entreprise sur plusieurs lignes automatiquement"
    #let subtitle = "Un sous-titre pour expliquer ce titre"
    #let logo = image("path/to/my-logo.png")
    #let logo-horizontal = true
    #let short-title = "Rapport de stage"
    #let authors = ("RÃ©mi Germe")
    #let date-start = datetime(year: 2024, month: 06, day: 05)
    #let date-end = datetime(year: 2024, month: 09, day: 05)
    #let despair-mode = false
    
    #set text(lang: "fr")
    

These variables will be used for PDF metadata, default cover page and default
header.

##  Contributing

Contributions are welcomed ! See [ contribution guidelines
](https://github.com/typst/packages/raw/main/packages/preview/typographix-
polytechnique-reports/0.1.4/CONTRIBUTING.md) .

##  Todo

  * [ ] heading not at the end of a page : might be tricky 
  * [x] first line indent 
  * [ ] better spacing between elements 
  * [x] handle logos on cover page 
  * [x] ~~handle logos on header~~ : feature canceled 

[ Create project in app ](/app?template=typographix-polytechnique-
reports&version=0.1.4)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/typographix-polytechnique-reports:0.1.4

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ RÃ©mi Germe ](https://github.com/remigerme)
License:

     MIT 
Current version:

     0.1.4 
Last updated:

     September 17, 2024 
First released:

     August 1, 2024 
Archive size:

     166 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/typographix-polytechnique-reports-0.1.4.tar.gz)
Repository:

     [ GitHub ](https://github.com/remigerme/typst-polytechnique)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  RÃ©mi Germe  .  Report issues on  [ their
repository ](https://github.com/remigerme/typst-polytechnique) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.4  |  September 17, 2024   
[ 0.1.3 ](https://typst.app/universe/package/typographix-polytechnique-reports/0.1.3/) |  August 8, 2024   
[ 0.1.2 ](https://typst.app/universe/package/typographix-polytechnique-reports/0.1.2/) |  August 1, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

