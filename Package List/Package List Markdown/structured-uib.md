![A preview of the structured-uib Typst
template.](https://packages.typst.org/preview/thumbnails/structured-
uib-0.1.0-small.webp)

#  structured-uib

0.1.0

Lab report template for the course PHYS114 at the University of Bergen.

[ Create project in app ](/app?template=structured-uib&version=0.1.0)

Report template to be used for laboratory reports in the course PHYS114 -
Basic Measurement Science and Experimental Physics, at the University of
Bergen ( [ https://www.uib.no/en/courses/PHYS114
](https://www.uib.no/en/courses/PHYS114) ). The template is in Norwegian only
as of now. English support may be added in the future.

The first part of the packages name is arbitrary, such that it follows the
naming guidelines of Typst.

**Note:** The template uses the fonts **STIX Two Text** and **STIX Two Math**
( [ https://github.com/stipub/stixfonts/tree/master/fonts
](https://github.com/stipub/stixfonts/tree/master/fonts) ). If running Typst
locally on your computer, make sure you have these fonts installed. There
should be no font problems if you are using Typst via [ https://typst.app
](https://typst.app/) however.

Usage:

    
    
    // IMPORTS
    #import "@preview/structured-uib:0.1.0": *
    
    // TEMPLATE SETTINGS
    #show: report.with(
      task-no: "1",
      task-name: "MÃ¥ling og behandling av mÃ¥ledata",
      authors: (
        "Student Enersen",
        "Student Toersen", 
        "Student Treersen"
      ),
      mails: (
        "student.enersen@student.uib.no", 
        "student.toersen@student.uib.no", 
        "student.treersen@student.uib.no"
      ),
      group: "1-1",
      date: "29. Apr. 2024",
      supervisor: "Professor Professorsen",
    )
    
    // CONTENT HERE...
    

Front page: ![thumbnail](https://github.com/AugustinWinther/structured-
uib/assets/30674646/a93718d8-362d-453b-8047-3c3c4388d442)

##  Licenses

` lib.typ ` is licensed under MIT. The contents of the ` template/ ` directory
are licensed under MIT-0. The logo/emblem of the University of Bergen (located
at ` media/uib-emblem.svg ` ) is owned by their respective owners.

[ Create project in app ](/app?template=structured-uib&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/structured-uib:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Augustin Winther ](https://winther.io)
License:

     MIT AND MIT-0 
Current version:

     0.1.0 
Last updated:

     April 29, 2024 
First released:

     April 29, 2024 
Archive size:

     24.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/structured-uib-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/AugustinWinther/structured-uib)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Augustin Winther  .  Report issues on  [
their repository ](https://github.com/AugustinWinther/structured-uib) .  You
can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 29, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

