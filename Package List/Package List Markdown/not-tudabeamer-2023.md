![A preview of the not-tudabeamer-2023 Typst
template.](https://packages.typst.org/preview/thumbnails/not-
tudabeamer-2023-0.1.0-small.webp)

#  not-tudabeamer-2023

0.1.0

Not the TU Darmstadt Beamer 2023 template

[ Create project in app ](/app?template=not-tudabeamer-2023&version=0.1.0)

A [ touying ](https://github.com/touying-typ/touying) presentation template
matching the TU Darmstadt Beamer Template 2023.

##  Usage

Install Roboto font for your system or download them from [
https://github.com/googlefonts/roboto/releases/download/v2.138/roboto-
unhinted.zip
](https://github.com/googlefonts/roboto/releases/download/v2.138/roboto-
unhinted.zip) .

Run ` typst init @preview/not-tudabeamer-2023:0.1.0 `

Download [ https://download.hrz.tu-darmstadt.de/protected/ULB/tuda_logo.pdf
](https://download.hrz.tu-darmstadt.de/protected/ULB/tuda_logo.pdf) .

Run ` pdf2svg tuda_logo.pdf tuda_logo.svg ` or convert to ` .svg ` using e.g.
Inkscape.

###  Examples

    
    
    #import "@preview/not-tudabeamer-2023:0.1.0": *
    
    #show: not-tudabeamer-2023-theme.with(
      config-info(
        title: [Title],
        short-title: [Title],
        subtitle: [Subtitle],
        author: "Author",
        short-author: "Author",
        date: datetime.today(),
        department: [Department],
        institute: [Institute],
        logo: text(fallback: true, size: 0.75in, emoji.cat.face)
        //logo: image("tuda_logo.svg", height: 100%)
      )
    )
    
    #title-slide()
    
    #outline-slide()
    
    = Section
    
    == Subsection
    
    - Some text
    

##  Development

This template currently only follows the TU Darmstadt Beamer template in
spirit but not pixel-perfect. As the PowerPoint template uses non-free fonts a
goal of this project is to more closely match the LaTeX TU Darmstadt Beamer
2023 template. Pull requests to improve this are really welcome.

    
    
    mkdir -p ~/.cache/typst/packages/preview/not-tudabeamer-2023
    ln -s $PWD ~/.cache/typst/packages/preview/not-tudabeamer-2023/0.1.0
    

[ Create project in app ](/app?template=not-tudabeamer-2023&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/not-tudabeamer-2023:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Moritz Hedtke 
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     September 8, 2024 
First released:

     September 8, 2024 
Archive size:

     3.39 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/not-tudabeamer-2023-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mohe2015/not-tudabeamer-2023)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Moritz Hedtke  .  Report issues on  [ their
repository ](https://github.com/mohe2015/not-tudabeamer-2023) .  You can also
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

