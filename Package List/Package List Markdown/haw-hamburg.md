#  haw-hamburg

0.3.1

Unofficial template for writing a report or thesis in the HAW Hamburg
department of Computer Science design.

This is an **` unofficial ` ** template for writing a report or thesis in the
` HAW Hamburg ` department of ` Computer Science ` design using [ Typst
](https://github.com/typst/typst) .

##  Required Fonts

To correctly render this template please make sure that the ` New Computer
Modern ` font is installed on your system.

##  Usage

To use this package just add the following code to your [ Typst
](https://github.com/typst/typst) document:

###  Report

    
    
    #import "@preview/haw-hamburg:0.3.0": report
    
    #show: report.with(
      language: "en",
      title: "Example title",
      author:"Example author",
      faculty: "Engineering and Computer Science",
      department: "Computer Science",
      include-declaration-of-independent-processing: true,
    )
    

###  Bachelor Thesis

    
    
    #import "@preview/haw-hamburg:0.3.0": bachelor-thesis
    
    #show: bachelor-thesis.with(
      language: "en",
    
      title-de: "Beispiel Titel",
      keywords-de: ("Stichwort", "Wichtig", "Super"),
      abstract-de: "Beispiel Zusammenfassung",
    
      title-en: "Example title",
      keywords-en:  ("Keyword", "Important", "Super"),
      abstract-en: "Example abstract",
    
      author: "Example author",
      faculty: "Engineering and Computer Science",
      department: "Computer Science",
      study-course: "Bachelor of Science Informatik Technischer Systeme",
      supervisors: ("Prof. Dr. Example", "Prof. Dr. Example"),
      submission-date: datetime(year: 1948, month: 12, day: 10),
      include-declaration-of-independent-processing: true,
    )
    

###  Master Thesis

    
    
    #import "@preview/haw-hamburg:0.3.0": master-thesis
    
    #show: master-thesis.with(
      language: "en",
    
      title-de: "Beispiel Titel",
      keywords-de: ("Stichwort", "Wichtig", "Super"),
      abstract-de: "Beispiel Zusammenfassung",
    
      title-en: "Example title",
      keywords-en:  ("Keyword", "Important", "Super"),
      abstract-en: "Example abstract",
    
      author: "The Computer",
      faculty: "Engineering and Computer Science",
      department: "Computer Science",
      study-course: "Master of Science Computer Science",
      supervisors: ("Prof. Dr. Example", "Prof. Dr. Example"),
      submission-date: datetime(year: 1948, month: 12, day: 10),
      include-declaration-of-independent-processing: true,
    )
    

##  How to Compile

This project contains an example setup that splits individual chapters into
different files.  
This can cause problems when using references etc.  
These problems can be avoided by following these steps:

  * Make sure to always compile your ` main.typ ` file which includes all of your chapters for references to work correctly. 
  * VSCode: 
    * Install the [ Tinymist Typst ](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) extension. 
    * Make sure to start the ` PDF ` or ` Live Preview ` only from within your ` main.typ ` file. 
    * If problems occur it usually helps to close the preview and restart it from your ` main.typ ` file. 

##  Examples

Examples can be found inside of the [ examples
](https://github.com/LasseRosenow/HAW-Hamburg-Typst-
Template/tree/main/examples) directory

  * For Bachelor theses see: [ Bachelor thesis example ](https://github.com/LasseRosenow/HAW-Hamburg-Typst-Template/tree/main/examples/bachelor-thesis)
  * For Master theses see: [ Master thesis example ](https://github.com/LasseRosenow/HAW-Hamburg-Typst-Template/tree/main/examples/master-thesis)
  * For reports see: [ Report example ](https://github.com/LasseRosenow/HAW-Hamburg-Typst-Template/tree/main/examples/report)

###  How to add

Copy this into your project and use the import as  ` haw-hamburg `

    
    
    #import "@preview/haw-hamburg:0.3.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Lasse Rosenow 
License:

     MIT 
Current version:

     0.3.1 
Last updated:

     November 13, 2024 
First released:

     September 26, 2024 
Archive size:

     12.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/haw-hamburg-0.3.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/LasseRosenow/HAW-Hamburg-Typst-Template)
Categor  ies  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)
  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  package  is a project of  Lasse Rosenow  .  Report issues on  [ their
repository ](https://github.com/LasseRosenow/HAW-Hamburg-Typst-Template) .
You can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.1  |  November 13, 2024   
[ 0.3.0 ](https://typst.app/universe/package/haw-hamburg/0.3.0/) |  October 14, 2024   
[ 0.2.0 ](https://typst.app/universe/package/haw-hamburg/0.2.0/) |  October 9, 2024   
[ 0.1.0 ](https://typst.app/universe/package/haw-hamburg/0.1.0/) |  September 26, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

