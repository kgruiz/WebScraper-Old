![A preview of the touying-flow Typst
template.](https://packages.typst.org/preview/thumbnails/touying-
flow-1.0.0-small.webp)

#  touying-flow

1.0.0

Discard irrelevant decorative elements, aiming to better immerse the audience
into a state of flow.

[ Create project in app ](/app?template=touying-flow&version=1.0.0)

Discard irrelevant decorative elements, aiming to better immerse the audience
into a state of flow.

Inspired by [ Dewdrop ](https://github.com/touying-typ/touying.git) , made by
[ OrangeX4 ](https://github.com/OrangeX4)

A [ Typst ](https://github.com/typst/typst) template created based on [
Touying ](https://github.com/touying-typ/touying) , designed for academic
presentations in university settings.

##  Example

See [ main.pdf
](https://github.com/typst/packages/raw/main/packages/preview/touying-
flow/1.0.0/main.pdf) for a sample PDF output. While the project is already
complete, the example content is still under development.

##  Installation

These steps assume that you already have [ Typst ](https://typst.app/)
installed and running. If not, please refer to [
github.com/typst/typst/releases/ ](https://github.com/typst/typst/releases/)
for installation instructions.Alternatively, you can use VS Code for editing
by installing the Tinymist Typst extension ( _recommended_ ).

###  Import from Typst Universe

    
    
    #import "@preview/touying-flow:1.0.0":*
    
    #show: dewdrop-theme.with(
      aspect-ratio: "16-9",
      footer: self => self.info.title,
      footer-alt: self => self.info.subtitle,
      navigation: "mini-slides",
      config-info(
        title: [Title],
        subtitle: [Subtitle],
        author: [Quaternijkon],
        date: datetime.today(),
        institution: [USTC],
      ),
    )
    
    #let primary= rgb("#004098")
    
    #show :show-cn-fakebold
    #show outline.entry.where(
      level: 1
    ): it => {
      v(1em, weak: true)
      text(primary, it.body)
    }
    #show emph: it => {  
      underline(stroke: (thickness: 1em, paint: primary.transparentize(95%), cap: "round"),offset: -7pt,background: true,evade: false,extent: -8pt,text(primary, it.body))
    }
    
    #title-slide()
    
    = Example Section Title
    
    == Example Page Title
    

[ Create project in app ](/app?template=touying-flow&version=1.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/touying-flow:1.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Quaternijkon ](https://github.com/Quaternijkon)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     November 26, 2024 
First released:

     November 26, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     12.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/touying-flow-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Quaternijkon/Typst_FLOW)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Quaternijkon  .  Report issues on  [ their
repository ](https://github.com/Quaternijkon/Typst_FLOW) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  November 26, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

