![A preview of the modern-technique-report Typst
template.](https://packages.typst.org/preview/thumbnails/modern-technique-
report-0.1.0-small.webp)

#  modern-technique-report

0.1.0

A template for creating modern-style technique report in Typst.

[ Create project in app ](/app?template=modern-technique-report&version=0.1.0)

= Modern Technique Report

A template support modern technique report in Typst.

= Usage

    
    
    #import "@preview/modern-technique-report:0.1.0": *
    
    #show: modern-technique-report.with(
      title: [Project Name \ Multiline When too Long],
      subtitle: [
        *Fourth Edition*, \ by _H.L. Royden_ and _P.M. Fitzpatrick_
      ],
      series: [Mathematics Courses \ Framework Series],
      author: grid(
        align: left + horizon,
        columns: 3,
        inset: 7pt,
        [*Member*], [B. Alice], [qwertyuiop\@youremail.com],
        [], [B. Alice], [qwertyuiop\@youremail.com],
        [], [B. Alice], [qwertyuiop\@youremail.com],
        [*Advisor*], [E. Eric], [qwertyuiop\@youremail.com],
      ),
      date: datetime.today().display("[year] -- [month] -- [day]"),
      background: image("bg.jpg"),
      theme_color: rgb(21, 74, 135),
      font: "New Computer Modern",
      title_font: "Noto Sans",
    )
    

Then a cover page and a content page will be automatically generated. Template
also manipulates the style of headings and some contents.

[ Create project in app ](/app?template=modern-technique-report&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-technique-report:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     aytony 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     April 16, 2024 
First released:

     April 16, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     132 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-technique-report-0.1.0.tar.gz)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  aytony  .  You can also try to ask for help
with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

