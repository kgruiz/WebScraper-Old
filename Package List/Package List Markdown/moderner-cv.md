![A preview of the moderner-cv Typst
template.](https://packages.typst.org/preview/thumbnails/moderner-
cv-0.1.0-small.webp)

#  moderner-cv

0.1.0

A resume template based on the moderncv LaTeX package.

[ Create project in app ](/app?template=moderner-cv&version=0.1.0)

This is a typst adaptation of LaTeXâs [ moderncv
](https://github.com/moderncv/moderncv) , a modern curriculum vitae class.

##  Requirements

This template uses FontAwesome icons via the [ fontawesome typst package
](https://typst.app/universe/package/fontawesome) . In order to properly use
it, you need to have fontawesome installed on your system or have typst
configured (via ` --font-path ` ) to use the fontawesome font files. You can
download fontawesome [ here ](https://fontawesome.com/download) .

##  Usage

    
    
    #import "@preview/moderner-cv:0.1.0": *
    
    #show: moderner-cv.with(
      name: "Jane Doe",
      lang: "en",
      social: (
        email: "jane.doe@example.com",
        github: "jane-doe",
        linkedin: "jane-doe",
      ),
    )
    
    // ...
    

##  Examples

![Jane Doe's
CV](https://github.com/typst/packages/raw/main/packages/preview/moderner-
cv/0.1.0/assets/example.png)

##  Building and Testing Locally

To build and test the template locally, you can run ` pixi run watch ` in the
root of this repository. Please ensure to have linked this package to your
local typst packages, see [ here ](https://github.com/typst/packages#local-
packages) :

    
    
    # linux
    mkdir -p ~/.local/share/typst/packages/preview/moderner-cv
    ln -s $(pwd) ~/.local/share/typst/packages/preview/moderner-cv/0.1.0
    
    # macos
    mkdir -p ~/Library/Application\ Support/typst/packages/preview/moderner-cv
    ln -s $(pwd) ~/Library/Application\ Support/typst/packages/preview/moderner-cv/0.1.0
    

[ Create project in app ](/app?template=moderner-cv&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/moderner-cv:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Pavel Zwerschke ](https://github.com/pavelzw)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 3, 2024 
First released:

     July 3, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     3.21 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/moderner-cv-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/pavelzw/moderner-cv)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Pavel Zwerschke  .  Report issues on  [ their
repository ](https://github.com/pavelzw/moderner-cv) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

