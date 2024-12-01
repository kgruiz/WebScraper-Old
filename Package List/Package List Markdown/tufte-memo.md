![A preview of the tufte-memo Typst
template.](https://packages.typst.org/preview/thumbnails/tufte-
memo-0.1.2-small.webp)

#  tufte-memo

0.1.2

A memo template inspired by the design of Edward Tufte's books

Featured  Template

[ Create project in app ](/app?template=tufte-memo&version=0.1.2)

A memo document template inspired by the design of Edward Tufteâs books for
the Typst typesetting program.

For usage, see the usage guide [ here ](https://github.com/nogula/tufte-
memo/blob/main/template/main.pdf) .

The template provides handy functions: ` template ` , ` note ` , and `
wideblock ` . To create a document with this template, use:

    
    
    #import "@preview/tufte-memo:0.1.2": *
    
    #show: template.with(
        title: [Document Title],
        authors: (
            (
            name: "Author Name",
            role: "Optional Role Line",
            affiliation: "Optional Affiliation Line",
            email: "email@company.com"
            ),
        )
    )
    ...
    

additional configuration information is available in the usage guide.

The ` note() ` function provides the ability to produce sidenotes next to the
main body content. It can be called simply with ` #note[...] ` . Additionally,
` wideblock() ` expands the width of its content to fill the full 6.5-inch-
wide space, rather than be compressed in to a four-inch column. It is simply
called with ` wideblock[...] ` .

[ Create project in app ](/app?template=tufte-memo&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/tufte-memo:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Noah Gula 
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     August 12, 2024 
First released:

     June 3, 2024 
Archive size:

     9.31 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tufte-memo-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/nogula/tufte-memo)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Noah Gula  .  Report issues on  [ their
repository ](https://github.com/nogula/tufte-memo) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  August 12, 2024   
[ 0.1.1 ](https://typst.app/universe/package/tufte-memo/0.1.1/) |  June 5, 2024   
[ 0.1.0 ](https://typst.app/universe/package/tufte-memo/0.1.0/) |  June 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

