![A preview of the modern-report-umfds Typst
template.](https://packages.typst.org/preview/thumbnails/modern-report-
umfds-0.1.1-small.webp)

#  modern-report-umfds

0.1.1

A template for writing reports for the Faculty of Sciences of the University
of Montpellier

[ Create project in app ](/app?template=modern-report-umfds&version=0.1.1)

A template for writing reports for the Faculty of Sciences of the University
of Montpellier.

Basic usage:

    
    
    #import "@preview/modern-report-umfds:0.1.1": umfds
    
    #show: umfds.with(
      title: [Your report title],
      authors: (
        "Author 1",
        "Author 2",
        "Author 3",
        "Author 4"
      ),
      date: datetime.today().display("[day] [month repr:long] [year]"), // or any string
      img: image("cover.png"), // optional
      abstract: [
        Your abstract, optional
      ],
      bibliography: bibliography("refs.bib", full: true), // optional
      lang: "en", // or "fr"
    )
    
    // Your report content
    

[ Create project in app ](/app?template=modern-report-umfds&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-report-umfds:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     Pablo Laviron  & SÃ©bastien Vial 
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     October 14, 2024 
First released:

     October 7, 2024 
Archive size:

     80.0 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-report-umfds-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/UM-nerds/modern-report-umfds)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Pablo Laviron and SÃ©bastien Vial  .  Report
issues on  [ their repository ](https://github.com/UM-nerds/modern-report-
umfds) .  You can also try to ask for help with this  template  on the  [
Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/modern-report-umfds/0.1.0/) |  October 7, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

