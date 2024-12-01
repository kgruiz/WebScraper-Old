![A preview of the gqe-lemoulon-presentation Typst
template.](https://packages.typst.org/preview/thumbnails/gqe-lemoulon-
presentation-0.0.4-small.webp)

#  gqe-lemoulon-presentation

0.0.4

Quickly generate slides for a GQE-Le moulon presentation.

[ Create project in app ](/app?template=gqe-lemoulon-
presentation&version=0.0.4)

template [ Typst web app ](https://typst.app/) to generate GQE slides

##  ð§âð» Usage

  * Directly from [ Typst web app ](https://typst.app/) by clicking âStart from templateâ on the dashboard and searching for ` gqe-lemoulon-presentation ` . 

  * With CLI: 

    
    
    typst init @preview/gqe-lemoulon-presentation:{version}
    

##  Documentation

gqe-presentation is based on [ touying ](https://touying-typ.github.io/)
package. The documentation is available [ here ](https://touying-
typ.github.io/) .

##  Local installation

###  Install Rust and Typst

    
    
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
    

and then install [ Typst ](https://github.com/typst/typst#installation)

    
    
    cargo install typst-cli
    

###  Install the âgqe-presentationâ theme on linux

clone the repository in your file system and install the theme âgqe-
lemoulon-presentationâ :

    
    
    git clone https://forgemia.inra.fr/gqe-moulon/gqe-presentation.git
    mkdir -p ~/.local/share/typst/packages/local/gqe-lemoulon-presentation/0.0.4/
    cp -r gqe-presentation/* ~/.local/share/typst/packages/local/gqe-lemoulon-presentation/0.0.4/
    

###  Start a new document

    
    
    #import "@local/gqe-lemoulon-presentation:0.0.4":*
    
    
    
    #show: gqe-theme.with(
      aspect-ratio: "4-3",
      gqe-font: "PT Sans"
      // config-common(handout: true),
      config-info(
        title: [Full native timsTOF data parser implementation in the i2MassChroq software package],
        subtitle: [sous titre],
        author: [Olivier Langella],
        gqe-equipe: [Base],
      ),
    )
    
    
    
    
    #title-slide()
    
    
    #slide()[
    = Bioinformatics challenges
    #pave("Scientific projects and hardware")[
    - High throughput
    - Metaproteomics
    - Instrument improvements
    ]
    #pause
    #pave("Means")[
    - Free software (as a speech)
    - Finding new algorithms
    - Upgrade existing ones
    - Controlling infrastructure
    - Controlling costs
    ]
    
    ]
    
    
    #slide()[
    = Yes but...
    bla bla
    ]
    
    

##  ð License

This is GPLv3 licensed.

[ Create project in app ](/app?template=gqe-lemoulon-
presentation&version=0.0.4)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/gqe-lemoulon-presentation:0.0.4

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Olivier Langella 
License:

     GPL-3.0 
Current version:

     0.0.4 
Last updated:

     November 5, 2024 
First released:

     November 5, 2024 
Archive size:

     336 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/gqe-lemoulon-presentation-0.0.4.tar.gz)
Discipline  s  :

    

  * [ Biology ](https://typst.app/universe/search/?discipline=biology)
  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Agriculture ](https://typst.app/universe/search/?discipline=agriculture)

Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Olivier Langella  .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.4  |  November 5, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

