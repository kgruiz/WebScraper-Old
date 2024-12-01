![A preview of the bone-resume Typst
template.](https://packages.typst.org/preview/thumbnails/bone-
resume-0.3.0-small.webp)

#  bone-resume

0.3.0

A colorful resume template for chinese.

[ Create project in app ](/app?template=bone-resume&version=0.3.0)

This is a Typst template.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` bone-resumee ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/bone-resume
    

Typst will create a new directory with all the files needed to get you
started.

###  Fonts

  * [ Source Han Sans ](https://github.com/adobe-fonts/source-han-sans)
  * [ LXGW WenKai GB ](https://github.com/lxgw/LxgwWenkaiGB)
  * [ Hack Nerd Font ](https://www.nerdfonts.com/)

##  Configuration

This template exports the ` resume-init ` function with the following named
arguments:

  * ` authors ` : Your name. 
  * ` title(optional) ` : The resumeâs title as content. 
  * ` footer(optional) ` : The resumeâs footer as content. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` bone-
resume ` function in a show rule. If you want to change an existing project to
use this template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/bone-resume:0.1.0": bone-resume
    
    #show: bone-resume.with(
      author: "å­ä¸ªéª¨å¤´"
    )
    
    = ä¸ªäººä»ç»
    A Student.
    
    // Your content goes below.
    

[ Create project in app ](/app?template=bone-resume&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/bone-resume:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     zrr1999 
License:

     Apache-2.0 
Current version:

     0.3.0 
Last updated:

     September 2, 2024 
First released:

     June 3, 2024 
Archive size:

     7.42 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bone-resume-0.3.0.tar.gz)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  zrr1999  .  You can also try to ask for help
with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  September 2, 2024   
[ 0.2.0 ](https://typst.app/universe/package/bone-resume/0.2.0/) |  July 4, 2024   
[ 0.1.0 ](https://typst.app/universe/package/bone-resume/0.1.0/) |  June 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

