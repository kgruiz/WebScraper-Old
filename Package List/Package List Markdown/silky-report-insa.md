![A preview of the silky-report-insa Typst
template.](https://packages.typst.org/preview/thumbnails/silky-report-
insa-0.4.0-small.webp)

#  silky-report-insa

0.4.0

A template made for reports and other documents of INSA, a French engineering
school.

[ Create project in app ](/app?template=silky-report-insa&version=0.4.0)

Typst Template for full documents and reports for the french engineering
school INSA.

##  Table of contents

  1. [ Examples & Usage ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#examples)
    1. [ ð§ª TP report ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#%F0%9F%A7%AA-tp-report)
    2. [ ð Internship report ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#%F0%9F%93%9A-internship-report)
    3. [ ðï¸ Blank templates ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#%F0%9F%97%92%EF%B8%8F-blank-templates)
  2. [ Fonts information ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#fonts)
  3. [ Notes ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#notes)
  4. [ License ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#license)
  5. [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/silky-report-insa/0.4.0/#changelog)

##  Examples & Usage

###  ð§ª TP report

![thumbnail](https://github.com/typst/packages/raw/main/packages/preview/silky-
report-insa/0.4.0/thumbnail-insa-report.png)

This is the default report for the ` silky-report-insa ` package. It uses the
` insa-report ` show rule.  
It is primarily used for reports of Practical Works (Travaux Pratiques).

####  Example

    
    
    #import "@preview/silky-report-insa:0.4.0": *
    #show: doc => insa-report(
      id: 3,
      pre-title: "STPI 2",
      title: "InterfÃ©rences et diffraction",
      authors: [
        *LE JEUNE Youenn*
    
        *MAUVY Eva*
        
        Groupe D
    
        BinÃ´me 5
      ],
      date: "11/04/2023",
      insa: "rennes",
      doc)
    
    = Introduction
    Le but de ce TP est dâinterprÃ©ter les figures de diffraction observÃ©es avec diffÃ©rents objets diffractants
    et dâen dÃ©duire les dimensions de ces objets.
    
    = Partie thÃ©orique - PhÃ©nomÃ¨ne d'interfÃ©rence
    == Diffraction par une fente double
    Lors du passage de la lumiÃ¨re par une fente double de largeur $a$ et de distance $b$ entre les centres
    des fentes...
    

####  Parameters

Parameter  |  Description  |  Type  |  Example   
---|---|---|---  
**id** |  TP number  |  int  |  ` 1 `  
**pre-title** |  Text written before the title  |  str  |  ` "STPI 2" `  
**title** |  Title of the TP  |  str  |  ` "InterfÃ©rences et diffraction" `  
**authors** |  Authors  |  content  |  ` [\*LE JEUNE Youenn\*] `  
**date** |  Date of the TP  |  datetime/str  |  ` "11/04/2023" `  
**insa** |  INSA name ( ` rennes ` , ` hdf ` â¦)  |  str  |  ` "rennes" `  
**lang** |  Language  |  str  |  ` "fr" `  
  
###  ð Internship report

![thumbnail](https://github.com/typst/packages/raw/main/packages/preview/silky-
report-insa/0.4.0/thumbnail-insa-stage.png)

If you want to make an internship report, you will need to use another show
rule: ` insa-stage ` .

####  Example

    
    
    #import "@preview/silky-report-insa:0.4.0": *
    #show: doc => insa-stage(
      "Youenn LE JEUNE",
      "INFO",
      "2023-2024",
      "Real-time virtual interaction with deformable structure",
      "Sapienza University of Rome",
      image("logo-example.png"),
      "Marilena VENDITELLI",
      "Bertrand COUASNON",
      [
        RÃ©sumÃ© du stage en franÃ§ais.
      ],
      [
        Summary of the internship in english.
      ],
      insa: "rennes",
      lang: "fr",
      doc
    )
    
    = Introduction
    PrÃ©sentation de l'entreprise, tout Ã§a tout Ã§a.
    
    #pagebreak()
    = Travail rÃ©alisÃ©
    == PremiÃ¨re partie
    Blabla
    
    == Seconde partie
    Bleble
    
    #pagebreak()
    = Conclusion
    Conclusion random
    
    #pagebreak()
    = Annexes
    

This template can also be used for a report that is written in english: in
this case, add the ` lang: "en" ` parameter to the function call in the show
rule.

####  Parameters

**Parameter** |  Required  |  Type  |  Description  |  Example   
---|---|---|---|---  
**name** |  yes  |  str  |  Name of the student  |  ` "Youenn LE JEUNE" `  
**department** |  yes  |  str  |  Department of the student  |  ` "INFO" `  
**year** |  yes  |  str  |  School year during the internship  |  ` "2023-2024" `  
**title** |  yes  |  str  |  Title of the internship  |  ` "Real-time virtual interaction with deformable structure" `  
**company** |  yes  |  str  |  Company  |  ` Sapienza University of Rome `  
**company-logo** |  yes  |  content  |  Logo of the company  |  ` image("logo-example.png") `  
**company-tutor** |  yes  |  str  |  Tutor in the company  |  ` "Marilena VENDITELLI" `  
**insa-tutor** |  yes  |  str  |  Tutor at INSA  |  ` "Bertrand COUASNON" `  
**insa-tutor-suffix** |  no  |  str  |  Suffix at the end of âencadrantâ in french  |  ` "e" `  
**summary-french** |  yes  |  content  |  Summary in French  |  ` [ RÃ©sumÃ© du stage en franÃ§ais. ] `  
**summary-english** |  yes  |  content  |  Summary in English  |  ` [ Summary of the internship in english. ] `  
**student-suffix** |  no  |  str  |  Suffix at the end of âingÃ©nieurâ in french  |  ` "e" `  
**thanks-page** |  no  |  content  |  Special thanks page.  |  ` [ Thanks to my *supervisor*, blah blah blah. ] `  
**omit-outline** |  no  |  bool  |  Whether to skip the outline page or not  |  ` false `  
**insa** |  no  |  str  |  INSA name ( ` rennes ` , ` hdf ` â¦)  |  ` "rennes" `  
**lang** |  no  |  str  |  Language of the template. Some strings are translated.  |  ` "fr" `  
  
###  ðï¸ Blank templates

![thumbnail](https://github.com/typst/packages/raw/main/packages/preview/silky-
report-insa/0.4.0/thumbnail-insa-document.png)

If you do not want the preformatted output with âTP xâ, the title and date
in the header, etc. you can simply use the ` insa-document ` show rule and
customize all by yourself.

####  Blank template types

The graphic charter provides 3 different document types, that are translated
in this Typst template under those names:

  * **` light ` ** , which does not have many color and can be printed easily. Has 3 spots to write on the cover: ` cover-top-left ` , ` cover-middle-left ` and ` cover-bottom-right ` . 
  * **` colored ` ** , which is beautiful but consumes a lot of ink to print. Only has 1 spot to write on the cover: ` cover-top-left ` . 
  * **` pfe ` ** , which is primarily used for internship reports. Has 4 spots to write on both the front and back covers: ` cover-top-left ` , ` cover-middle-left ` , ` cover-bottom-right ` and ` back-cover ` . 

The document type must be the first argument of the ` insa-document `
function.

####  Example

    
    
    #import "@preview/silky-report-insa:0.4.0": *
    #show: doc => insa-document(
      "light",
      cover-top-left: [*Document important*],
      cover-middle-left: [
        NOM PrÃ©nom
    
        DÃ©partement INFO
      ],
      cover-bottom-right: "uwu",
      page-header: "En-tÃªte au pif",
      doc
    )
    

####  Parameters

**Parameter** |  Type  |  Description   
---|---|---  
**cover-type** |  str  |  ( **REQUIRED** ) Type of cover. Available are: light, colored, pfe.   
**cover-top-left** |  content  |   
**cover-middle-left** |  content  |   
**cover-bottom-right** |  content  |   
**back-cover** |  content  |  What to display on the back cover.   
**page-header** |  content  |  Header of the pages (except the front and back). If ` none ` , will display the INSA logo. If not empty, will display the passed content with an underline.   
**page-footer** |  content  |  Footer of the pages (except the front and back). The page counter will be displayed at the right of the footer, except if the page number is 0.   
**include-back-cover** |  bool  |  whether to add the back cover or not.   
**insa** |  str  |  INSA name ( ` rennes ` , ` hdf ` â¦)   
**lang** |  str  |  Language of the template. Some strings are translated.   
**metadata-title** |  content  |  Title of the document that will be embedded in the PDF metadata.   
**metadata-authors** |  str list  |  Authors that will be embedded in the PDF metadata.   
**metadata-date** |  datetime  |  Date that will be set as the document creation date. If not specified, will be set to now.   
  
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

###  0.4.0

  * Added INSA CVL assets 
  * Added ` insa-tutor-suffix ` option to ` insa-stage `

###  0.3.1

  * Added ` insa ` option to all templates 
  * Added INSA HdF assets 
  * Added ` student-suffix ` option to ` insa-stage `
  * Made outline not shown in outline 

###  0.3.0

  * Added ` omit-outline ` option to ` insa-stage `
  * Added ` thanks-page ` parameter to ` insa-stage `
  * Added metadata-related options to ` insa-document `
  * Made some PDF metadata automatically exported for ` insa-stage ` and ` insa-report `
  * Made page number not displayed if equals to 0 
  * Adjusted positions of elements in back covers 
  * Fixed some translations 
  * Updated README to have changelog, visual examples of all documents and parameters table 

[ Create project in app ](/app?template=silky-report-insa&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/silky-report-insa:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     SkytAsul 
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     November 21, 2024 
First released:

     March 19, 2024 
Archive size:

     4.48 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/silky-report-insa-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/SkytAsul/INSA-Typst-Template)
Discipline  s  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)
  * [ Education ](https://typst.app/universe/search/?discipline=education)

Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

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
0.4.0  |  November 21, 2024   
[ 0.3.1 ](https://typst.app/universe/package/silky-report-insa/0.3.1/) |  September 24, 2024   
[ 0.3.0 ](https://typst.app/universe/package/silky-report-insa/0.3.0/) |  August 7, 2024   
[ 0.2.1 ](https://typst.app/universe/package/silky-report-insa/0.2.1/) |  July 24, 2024   
[ 0.2.0 ](https://typst.app/universe/package/silky-report-insa/0.2.0/) |  June 10, 2024   
[ 0.1.0 ](https://typst.app/universe/package/silky-report-insa/0.1.0/) |  March 19, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

