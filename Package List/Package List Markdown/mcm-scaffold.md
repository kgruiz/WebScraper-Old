![A preview of the mcm-scaffold Typst
template.](https://packages.typst.org/preview/thumbnails/mcm-
scaffold-0.1.0-small.webp)

#  mcm-scaffold

0.1.0

A Typst template for COMAP's Mathematical Contest in MCM/ICM

[ Create project in app ](/app?template=mcm-scaffold&version=0.1.0)

This is a Typst template for COMAPâs Mathematical Contest in MCM/ICM.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` mcm-scaffold ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/mcm-scaffold
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` mcm ` function with the following named arguments:

  * ` title ` : The paperâs title as content. 
  * ` problem-chosen ` : The problem your team have chosen. 
  * ` team-control-number ` : Your team control number. 
  * ` year ` : When did the competition took place. 
  * ` summary ` : The content of a brief summary of the paper. Appears at the top of the first column in boldface. 
  * ` keywords ` : Keywords of the paper. 
  * ` magic-leading ` : adjust the leading of the summary. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` mcm `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/mcm-scaffold:0.1.0": *
    
    #show: mcm.with(
      title: "A Simple Example for MCM/ICM Typst Template",
      problem-chosen: "ABCDEF",
      team-control-number: "1111111",
      year: "2025",
      summary: [
        #lorem(100)
        
        #lorem(100)
        
        #lorem(100)
    
        #lorem(100)
      ],
      keywords: [MCM; ICM; Mathemetical; template],
      magic-leading: 0.65em,
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=mcm-scaffold&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/mcm-scaffold:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ LuoQiu ](https://github.com/sxdl)
License:

     Apache-2.0 
Current version:

     0.1.0 
Last updated:

     April 2, 2024 
First released:

     April 2, 2024 
Archive size:

     492 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/mcm-scaffold-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/sxdl/MCM-Typst-template)
Discipline  s  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  LuoQiu  .  Report issues on  [ their
repository ](https://github.com/sxdl/MCM-Typst-template) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 2, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

