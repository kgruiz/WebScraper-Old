![A preview of the isc-hei-report Typst
template.](https://packages.typst.org/preview/thumbnails/isc-hei-
report-0.1.5-small.webp)

#  isc-hei-report

0.1.5

An official report template for the 'Informatique et systÃ¨mes de
communication' (ISC) bachelor degree programme at the School of Engineering
(HEI) in Sion, Switzerland.

Officially affiliated

[ Create project in app ](/app?template=isc-hei-report&version=0.1.5)

![GitHub Repo stars](https://img.shields.io/github/stars/ISC-HEI/isc-hei-
report) ![GitHub Release](https://img.shields.io/github/v/release/ISC-HEI/isc-
hei-report?include_prereleases)

[ ![](https://raw.githubusercontent.com/ISC-
HEI/isc_logos/4f8d335f7f4b99d3d83ee579ef334c201a15166a/ISC%20Logo%20inline%20v1.png?raw=true)
](https://hevs.ch/isc)

This is an official template for students reports for the [ ISC degree
programme ](https://isc.hevs.ch/) at the School of engineering in Sion.

##  Using the template

In the ` Typst ` web application, start with the ` isc-hei-report ` and voilÃ
! Using the CLI, you can initialize the project with the command :

    
    
    typst init @preview/isc-hei-report:0.1.5
    

This template will initialize an sample report with sensible default values.

##  Installing fonts locally

If you are running ` typst ` locally, you might miss some of the required
fonts. For your convenience, a font download script is included in this repos.
As all the fonts are released under the [ SIL Open Font License
](https://openfontlicense.org/) , there are no file inclusion issues here.

To the install the fonts locally in a Linux environment, simply type

    
    
    source install_fonts.sh
    

from within the ` fonts ` directory.

##  PDF images inclusion

Unfortunately, ` typst ` does not support PDF file types inclusion at the time
of writing this documentation. As a temporary workaround, PDF files can be
converted to SVG via ` pdf2svg ` .

When used locally, creating a PDF is straightforward with the command

    
    
    typst compile report.typ
    

Even nicer, the following command compiles the report every time the file is
modified.

    
    
    typst watch report.typ
    

Another nice possibility is of course to use a VScod[e | ium] via the ` Typst LSP ` plugin which enables direct compilation. 

In the future, several things _might_ be updated, such as :

  * [ ] State diagrams and UML diagrams examples 
  * [ ] Glossary inclusion 
  * [ ] Master thesis version of this template 
  * [ ] Themes for code 
  * [ ] Other nice things 
  * [x] Appendix 
  * [x] Acronyms inclusion 
  * [x] Basic support for including code files 

If you need any help for installing or running those tools, do not hesitate to
get in touch with its maintainer [ pmudry ](https://github.com/pmudry) .

You can of course also propose changes using PR or raise issues if something
is not clear. Have fun writing reports!

[ Create project in app ](/app?template=isc-hei-report&version=0.1.5)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/isc-hei-report:0.1.5

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Pierre-AndrÃ© Mudry 
License:

     MIT 
Current version:

     0.1.5 
Last updated:

     June 17, 2024 
First released:

     May 1, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     680 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/isc-hei-report-0.1.5.tar.gz)
Verification:

     We verified that the author is affiliated with their institution  ![Verified icon](/assets/icons/16-verified.svg)
Repository:

     [ GitHub ](https://github.com/ISC-HEI/ISC-report)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Pierre-AndrÃ© Mudry  .  Report issues on  [
their repository ](https://github.com/ISC-HEI/ISC-report) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.5  |  June 17, 2024   
[ 0.1.3 ](https://typst.app/universe/package/isc-hei-report/0.1.3/) |  June 13, 2024   
[ 0.1.0 ](https://typst.app/universe/package/isc-hei-report/0.1.0/) |  May 1, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

