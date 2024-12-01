![A preview of the aero-check Typst
template.](https://packages.typst.org/preview/thumbnails/aero-
check-0.1.1-small.webp)

#  aero-check

0.1.1

A simple template to create checklists with an aviation inspired style.

Featured  Template

[ Create project in app ](/app?template=aero-check&version=0.1.1)

![GitHub release \(with
filter\)](https://img.shields.io/github/v/release/TomVer99/Typst-checklist-
template?style=flat-square) ![GitHub Repo
stars](https://img.shields.io/github/stars/TomVer99/Typst-checklist-
template?style=flat-square)

![Maintenance](https://img.shields.io/maintenance/Yes/2024?style=flat-square)

This template is meant to create checklists with a style inspired by aviation
checklists.

It includes 2 different styles!

##  Usage

Start your checklist with the following code:

    
    
    #import "@preview/aero-check:0.1.1": *
    
    #show: checklist.with(
      title: "Title",
      // disclaimer: "",
      // 0 or 1
      // style: 0,
    )
    

You can then add items to your checklist with the following code:

    
    
    #topic("Topic")[
      #section("Section")[
        #step("Step", "Check")
        #step("Step", "Check")
        #step("Step", "Check")
        #step("Step", "Check")
      ]
    #section("Section")[
        #step("Step", "Check")
        #step("Step", "Check")
        #step("Step", "Check")
        #step("Step", "Check")
      ]
    ]
    

And you can use ` #colbreak() ` to add a column break.

[ Create project in app ](/app?template=aero-check&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/aero-check:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     TomVer99 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     September 14, 2024 
First released:

     May 13, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     2.59 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/aero-check-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/TomVer99/Typst-checklist-template)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  template  is a project of  TomVer99  .  Report issues on  [ their
repository ](https://github.com/TomVer99/Typst-checklist-template) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  September 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/aero-check/0.1.0/) |  May 13, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

