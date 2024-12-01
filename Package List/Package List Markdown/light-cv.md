![A preview of the light-cv Typst
template.](https://packages.typst.org/preview/thumbnails/light-
cv-0.1.1-small.webp)

#  light-cv

0.1.1

Minimalistic CV template for your own CV. Please install the font awesome
fonts on your system before using the template.

[ Create project in app ](/app?template=light-cv&version=0.1.1)

This is my CV template written in Typst. You can find a two example CVs in
this repository as PDFs:

  * [ German CV ](https://github.com/AnsgarLichter/light-cv/blob/main/cv-de.pdf)
  * [ English CV ](https://github.com/AnsgarLichter/light-cv/blob/main/cv-en.pdf)

##  Setup

To use the CV you have to install the font awesome fonts for the icons to
work. Please refer to the intstructons of the font awesome package itself. You
can find these on: - [ Typst Universe
](https://typst.app/universe/package/fontawesome) \- [ GitHub
](https://github.com/duskmoon314/typst-fontawesome) .

##  Functions

  1. ` header ` : Creates a page haeder including your name, current job title or any other sub title, socials and profile picture 

     * ` full-name ` : your full name 
     * ` job-title ` : your current job title rendered below your name 
     * ` socials ` : array containing all socials. Every social must have the following properties: ` icon ` , ` link ` and ` text `
     * ` profile-picture ` : path to your profile picture 
  2. ` section ` : Creates a new section, e. g. ` Professional Experience ` or ` Education `

     * ` title ` : sectionâs title 
  3. ` entry ` : Adds an entry / item to the current section 

     * ` title ` : the entryâs title, e. g. your job title 
     * ` company-or-university ` : the name of the institution which you were at, e. g. company or university 
     * ` date ` : start and end date of this entry, e. g. 2020 - 2022 
     * ` location ` : describes where you worked, e. g. London, UK 
     * ` logo ` : path to the logo of this entry 
     * ``description`: description what you have done - normally supplied as a list 

##  Customization

In the folder ` settings ` you will a file ` styles.typ ` which includes all
used styles. You can customize them as you want to.

##  Multi Language Support

If you want to add a new language, copy the ` cv-en.typ ` and rename it.
Afterwards you can adapt the text correspondingly. Maybe I will introduce i18n
in the future.

##  Insipration

A big thanks to [ brilliant-CV ](https://github.com/mintyfrankie/brilliant-CV)
as this project was an inspiraton for my CV and for the scripting.

##  Questions & Issues

If you have questions, plase create a [ discussion
](https://github.com/AnsgarLichter/light-cv/discussions) . If you have an
issue, please create an [ issue ](https://github.com/AnsgarLichter/light-
cv/issues) .

[ Create project in app ](/app?template=light-cv&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/light-cv:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Ansgar Lichter 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     May 6, 2024 
First released:

     April 17, 2024 
Archive size:

     414 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/light-cv-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/AnsgarLichter/cv-typst-template)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Ansgar Lichter  .  Report issues on  [ their
repository ](https://github.com/AnsgarLichter/cv-typst-template) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/light-cv/0.1.0/) |  April 17, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

