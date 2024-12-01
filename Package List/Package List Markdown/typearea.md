#  typearea

0.2.0

A KOMA-Script inspired package to better configure your typearea and margins.

A KOMA-Script inspired package to better configure your typearea and margins.

    
    
    #import "@preview/typearea:0.2.0": typearea
    
    #show: typearea.with(
      paper: "a4",
      div: 9,
      binding-correction: 11mm,
    )
    
    = Hello World
    

##  Reference

` typearea ` accepts the following options:

###  two-sided

Whether the document is two-sided. Defaults to ` true ` .

###  binding-correction

Binding correction. Defaults to ` 0pt ` .

Additional margin on the inside of a page when two-sided is true. If two-sided
is false it will be on the left or right side, depending on the value of `
binding ` . A ` binding ` value of ` auto ` will currently default to ` left `
.

Note: Before version 0.2.0 this was called ` bcor ` .

###  div

How many equal parts to split the page into. Controls the margins. Defautls to
` 9 ` .

The top and bottom margin will always be one and two parts respectively. In
two-sided mode the inside margin will be one part and the outside margin two
parts, so the combined margins between the text on the left side and the text
on the right side is the same as the margins from the outer edge of the text
to the outer edge of the page.

In one-sided mode the left and right margin will take 1.5 parts each.

###  header-height / footer-height

The height of the page header/footer.

###  header-sep / footer-sep

The distance between the page header/footer and the text area.

###  header-include / footer-include

Whether the header/footer should be counted as part of the text area when
calculating the margins. Defaults to ` false ` .

###  â¦rest

All other arguments are passed on to ` page() ` as is. You can see which
arguments ` page() ` accepts in the [ typst reference for the page function
](https://typst.app/docs/reference/layout/page/) .

You should prefer this over calling or setting ` page() ` directly as doing so
could break some of ` typearea ` âs functionality.

###  How to add

Copy this into your project and use the import as  ` typearea `

    
    
    #import "@preview/typearea:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Adrian Freund 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     June 13, 2024 
First released:

     October 29, 2023 
Archive size:

     2.39 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/typearea-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/freundTech/typst-typearea)

###  Where to report issues?

This  package  is a project of  Adrian Freund  .  Report issues on  [ their
repository ](https://github.com/freundTech/typst-typearea) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  June 13, 2024   
[ 0.1.0 ](https://typst.app/universe/package/typearea/0.1.0/) |  October 29, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

