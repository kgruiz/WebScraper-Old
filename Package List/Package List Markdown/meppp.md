![A preview of the meppp Typst
template.](https://packages.typst.org/preview/thumbnails/meppp-0.2.1-small.webp)

#  meppp

0.2.1

Template for modern physics experiment reports at the Physics School of PKU.

[ Create project in app ](/app?template=meppp&version=0.2.1)

A simple template for modern physics experiments (MPE) courses at the Physics
School of PKU.

##  meppp-lab-report

The recommended report format of MPE course. Default arguments are shown as
below:

    
    
    #import "@preview/meppp:0.2.1": *
    
    #let meppp-lab-report(
      title: "",
      author: "",
      info: [],
      abstract: [],
      keywords: (),
      author-footnote: [],
      heading-numbering-array: ("I" ,"A", "1", "a"),
      heading-suffix: ". ",
      doc,
    ) = ...
    

  * ` title ` is the title of the report. 
  * ` author ` is the name of the author. 
  * ` info ` is a line (or lines) of brief information of author and the report (e.g. student ID, school, experiment dateâ¦) 
  * ` abstract ` is the abstract of the report, not shown when it is empty. 
  * ` keywords ` are keywords of the report, only shown when the abstract is shown. 
  * ` author-footnote ` is the phone number or the e-mail of the author, shown in the footnote. 
  * ` heading-numbering-array ` is the heading numbering of each level. Only shows the numbering of the deepest level. 
  * ` heading-suffix ` is the suffix of headings 

It is recommended to use ` #show ` to use the template:

    
    
    #show: meppp-lab-report.with(
        title: [Test title],
        ..args
    )
    ...your report below.
    

##  meppp-tl-table

Modify your input ` table ` to a three-lined table (AIP style), returned as a
` figure ` . Double-lines above and below the table, and a single line below
the header.

    
    
    #let meppp-tl-table(
      caption: none,
      supplement: auto,
      stroke: 0.5pt,
      tbl
    ) = ...
    

  * ` caption ` is the caption above the table, center-aligned 
  * ` supplement ` is same as the supplement in the figure. 
  * ` stroke ` is the stroke used in the three lines (maybe five lines). 
  * ` tbl ` is the input table, which must contains a ` table.header `

Example:

    
    
    #meppp-tl-table(
      table(
        columns: 4,
        rows: 2,
        table.header([Item1], [Item2], [Item3], [Item4]),
        [Data1], [Data2], [Data3], [Data4],
      )
    )
    

##  subfigure

Counts subfigures and displays in the figure, mostly used when inserting
multiple images.

    
    
    #let subfigure(
      body,
      caption: none,
      numbering: "(a)",
      inside: true,
      dx: 10pt,
      dy: 10pt,
      boxargs: (fill: white, inset: 5pt),
      alignment: top + left,
    ) = ...
    

##  pku-logo

The logo of PKU, returned as a ` image `

    
    
    #let pku-logo(..args) = image("pkulogo.png", ..args)
    

Example:

    
    
    #pku-logo(width: 50%)
    #pku-logo()
    

[ Create project in app ](/app?template=meppp&version=0.2.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/meppp:0.2.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ CL4R3T ](https://github.com/CL4R3T)
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     September 22, 2024 
First released:

     May 8, 2024 
Archive size:

     103 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/meppp-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/pku-typst/meppp)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  CL4R3T  .  Report issues on  [ their
repository ](https://github.com/pku-typst/meppp) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  September 22, 2024   
[ 0.2.0 ](https://typst.app/universe/package/meppp/0.2.0/) |  September 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/meppp/0.1.0/) |  May 8, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

