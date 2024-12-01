![A preview of the casual-szu-report Typst
template.](https://packages.typst.org/preview/thumbnails/casual-szu-
report-0.1.0-small.webp)

#  casual-szu-report

0.1.0

A template for SZU course reports.

[ Create project in app ](/app?template=casual-szu-report&version=0.1.0)

A Typst template for SZU course reports.

##  Usage

Example is at ` template/main.typ ` . TLDR:

    
    
    #import "lib.typ": template
    
    #show: template.with(
      course-title: [å»é¸¡å­¦ä¹ ],
      experiment-title: [å»é¸¡],
      faculty: [å»é¸¡å­¦é¢],
      major: [æºè½å»é¸¡],
      instructor: [é¸¡èå¸],
      reporter: [é¸¡],
      student-id: [4144010590],
      class: [å»é¸¡99ç­],
      experiment-date: datetime(year: 1983, month: 9, day: 27),
      features: (
        "Bibliography": "template/refs.bib",
      ),
    )
    // Start here
    

Features:

  1. ` Bibliography ` : Bibliography file path. 
  2. ` FontFamily ` : Custom font family. Default: ` ("Noto Serif", "Noto Serif CJK SC") `
  3. ` CitationStyle ` : Citation Style supported by Typst. Default: ` gb-7714-2015-numeric `

  * Only work if have ` Bibliography ` specified. 

  4. ` CourseID ` : Add a Course ID box on top-right of the cover. NOT YET IMPLEMENTED. 

##  Method

The template will traverse body content, and split it into groups according to
Heading-1 layout. Each group content will be wrapped with ` table.cell ` . So
all content will be wrapped in container, you canât use ` pagebreak() ` in
your body content.

##  Warning

This is not a serious work and may have some rough edges. And reports from
different faculties isnât entirely uniform. Be careful when using it.

[ Create project in app ](/app?template=casual-szu-report&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/casual-szu-report:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Keaton Jiang ](mailto:jiang131072@gmail.com)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     September 8, 2024 
First released:

     September 8, 2024 
Archive size:

     36.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/casual-szu-report-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/jiang131072/casual-szu-report)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Keaton Jiang  .  Report issues on  [ their
repository ](https://github.com/jiang131072/casual-szu-report) .  You can also
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

