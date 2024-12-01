![A preview of the rubber-article Typst
template.](https://packages.typst.org/preview/thumbnails/rubber-
article-0.1.0-small.webp)

#  rubber-article

0.1.0

A simple template recreating the look of the classic LaTeX article.

[ Create project in app ](/app?template=rubber-article&version=0.1.0)

Version 0.1.0

This template is a intended as a starting point for creating documents, which
should have the classic LaTeX Article look.

##  Getting Started

These instructions will get you a copy of the project up and running on the
typst web app. Perhaps a short code example on importing the package and a
very simple teaser usage.

    
    
    #import "@preview/rubber-article:0.1.0": *
    
    #show: article.with()
    
    #maketitle(
      title: "The Title of the Paper",
      authors: (
        "Authors Name",
      ),
      date: "September 1970",
    )
    

##  Further Functionality

The template provides a few more functions to customize the document.

    
    
    #show article.with(
      lang:"de",
      eq-numbering:none,
      text-size:10pt,
      page-numbering: "1",
      page-numbering-align: center,
      heading-numbering: "1.1  ",
    )
    

[ Create project in app ](/app?template=rubber-article&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/rubber-article:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Niko Pikall 
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     September 8, 2024 
First released:

     September 8, 2024 
Archive size:

     3.00 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/rubber-article-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/npikall/rubber-article.git)
Discipline  s  :

    

  * [ Biology ](https://typst.app/universe/search/?discipline=biology)
  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Geography ](https://typst.app/universe/search/?discipline=geography)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  ies  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Niko Pikall  .  Report issues on  [ their
repository ](https://github.com/npikall/rubber-article.git) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 8, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

