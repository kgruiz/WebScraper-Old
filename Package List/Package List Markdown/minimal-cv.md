![A preview of the minimal-cv Typst
template.](https://packages.typst.org/preview/thumbnails/minimal-
cv-0.1.0-small.webp)

#  minimal-cv

0.1.0

A clean and customizable CV template

[ Create project in app ](/app?template=minimal-cv&version=0.1.0)

Yet another John Doe CV.

[
![thumbnail](https://github.com/typst/packages/raw/main/packages/preview/minimal-
cv/0.1.0/thumbnail.png)
](https://github.com/typst/packages/raw/main/packages/preview/minimal-
cv/0.1.0/thumbnail.png)

A Typst CV template that aims for :

  * Clean aesthetics 
  * Easy customizability 

##  Usage

###  From Typst app

Create a new project based on the template [ minimal-cv
](https://typst.app/universe/package/minimal-cv) .

###  Locally

The default font is [ âInria Sansâ
](https://fonts.google.com/specimen/Inria+Sans) . Make sure it is installed on
your system, or change it in [ # Theme
](https://github.com/typst/packages/raw/main/packages/preview/minimal-
cv/0.1.0/#theme) .

Copy the [ template ](https://raw.githubusercontent.com/lelimacon/typst-
minimal-cv/main/template/cv.typ) to your Typst project.

###  From a blank project

Import the library :

    
    
    #import "@preview/minimal-cv:0.1.0": *
    

Show the root ` cv ` function :

    
    
    #show: cv.with(
      theme: (),
      title: "YOUR NAME",
      subtitle: "YOUR POSITION",
      aside: [
        ASIDE CONTENT
      ]
    
    MAIN CONTENT
    

Several content functions are available.

**Section**

    
    
    #section(
      theme: (),
      "TITLE_CONTENT",
      "BODY_CONTENT",
    )
    

**Entry**

    
    
    #entry(
      theme: (),
      right: "FLOATING_CONTENT",
    
      "GUTTER_CONTENT",
      "TITLE_CONTENT",
      "BODY_CONTENT",
    )
    

**Progress bar**

    
    
    #progress-bar(50%)
    

##  Theme

Customize the theme by specifying the ` theme ` parameter and overriding 1 or
more keys.

###  Function ` cv `

Key  |  Type  |  Default   
---|---|---  
` margin ` |  relative  |  ` 22pt `  
` font ` |  relative  |  ` "Inria Sans" `  
` font-size ` |  relative  |  ` 11pt `  
` accent-color ` |  color  |  ` blue `  
` body-color ` |  color  |  ` rgb("222") `  
` header-accent-color ` |  color  |  inherit   
` header-body-color ` |  color  |  inherit   
` main-accent-color ` |  color  |  inherit   
` main-body-color ` |  color  |  inherit   
` main-width ` |  relative  |  ` 5fr `  
` main-gutter-width ` |  relative  |  ` 64pt `  
` aside-accent-color ` |  color  |  inherit   
` aside-body-color ` |  color  |  inherit   
` aside-width ` |  relative  |  ` 3fr `  
` aside-gutter-width ` |  relative  |  ` 48pt `  
  
###  Function ` section `

Key  |  Type  |  Default   
---|---|---  
` gutter-size ` |  color  |  inherit   
` accent-color ` |  color  |  inherit   
` body-color ` |  color  |  inherit   
  
###  Function ` entry `

Key  |  Type  |  Default   
---|---|---  
` gutter-size ` |  color  |  inherit   
` accent-color ` |  color  |  inherit   
` body-color ` |  color  |  inherit   
[ Create project in app ](/app?template=minimal-cv&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/minimal-cv:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ lelimacon ](https://github.com/lelimacon)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     June 12, 2024 
First released:

     June 12, 2024 
Archive size:

     4.43 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minimal-cv-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/lelimacon/typst-minimal-cv)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  lelimacon  .  Report issues on  [ their
repository ](https://github.com/lelimacon/typst-minimal-cv) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 12, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

