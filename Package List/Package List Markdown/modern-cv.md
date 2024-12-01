![A preview of the modern-cv Typst
template.](https://packages.typst.org/preview/thumbnails/modern-
cv-0.7.0-small.webp)

#  modern-cv

0.7.0

A modern resume template based on the Awesome-CV Latex template.

[ Create project in app ](/app?template=modern-cv&version=0.7.0)

[ ![say
thanks](https://img.shields.io/badge/Say%20Thanks-%F0%9F%91%8D-1EAEDB.svg)
](https://github.com/DeveloperPaul123/modern-cv/stargazers) [
![Discord](https://img.shields.io/discord/652515194572111872?logo=Discord)
](https://discord.gg/CX2ybByRnt)
![Release](https://img.shields.io/github/v/release/DeveloperPaul123/modern-cv)
[ ![Tests](https://github.com/DeveloperPaul123/modern-
cv/actions/workflows/tests.yml/badge.svg)
](https://github.com/DeveloperPaul123/modern-cv/actions/workflows/tests.yml)

A port of the [ Awesome-CV ](https://github.com/posquit0/Awesome-CV) Latex
resume template in [ typst ](https://github.com/typst/typst) .

##  Requirements

###  Tools

The following tools are used for the development of this template:

  * [ typst ](https://github.com/typst/typst)
  * [ typst-test ](https://github.com/tingerrr/typst-test) for running tests 
  * [ just ](https://github.com/casey/just) for simplifying command running 
  * [ oxipng ](https://github.com/shssoichiro/oxipng) for compressing thumbnails used in the README 

###  Fonts

You will need the ` Roboto ` and ` Source Sans Pro ` fonts installed on your
system or available somewhere. If you are using the ` typst ` web app, no
further action is necessary. You can download them from the following links:

  * [ Roboto ](https://fonts.google.com/specimen/Roboto)
  * [ Source Sans Pro ](https://github.com/adobe-fonts/source-sans-pro)

This template also uses FontAwesome icons via the [ fontawesome
](https://typst.app/universe/package/fontawesome) package. You will need to
install the fontawesome fonts on your system or configure the ` typst ` web
app to use them. You can download fontawesome [ here
](https://fontawesome.com/download) .

To use the fontawesome icons in the web app, add a ` fonts ` folder to your
project and upload the ` otf ` files from the fontawesome download to this
folder like so:

![alt
text](https://github.com/typst/packages/raw/main/packages/preview/modern-
cv/0.7.0/assets/images/typst_web_editor.png)

See ` typst fonts --help ` for more information on configuring fonts for `
typst ` that are not installed on your system.

###  Usage

Below is a basic example for a simple resume:

    
    
    #import "@preview/modern-cv:0.7.0": *
    
    #show: resume.with(
      author: (
          firstname: "John", 
          lastname: "Smith",
          email: "js@example.com", 
          phone: "(+1) 111-111-1111",
          github: "DeveloperPaul123",
          linkedin: "Example",
          address: "111 Example St. Example City, EX 11111",
          positions: (
            "Software Engineer",
            "Software Architect"
          )
      ),
      date: datetime.today().display()
    )
    
    = Education
    
    #resume-entry(
      title: "Example University",
      location: "B.S. in Computer Science",
      date: "August 2014 - May 2019",
      description: "Example"
    )
    
    #resume-item[
      - #lorem(20)
      - #lorem(15)
      - #lorem(25)  
    ]
    

After saving to a ` *.typ ` file, compile your resume using the following
command:

    
    
    typst compile resume.typ
    

For more information on how to use and compile ` typst ` files, see the [
official documentation ](https://typst.app/docs) .

Documentation for this template is published with each commit. See the
attached PDF on each Github Action run [ here
](https://github.com/DeveloperPaul123/modern-cv/actions) .

###  Output Examples

Resumes  |  Cover letters   
---|---  
![Resume](https://github.com/typst/packages/raw/main/packages/preview/modern-cv/0.7.0/assets/images/resume.png) |  ![Cover Letter](https://github.com/typst/packages/raw/main/packages/preview/modern-cv/0.7.0/assets/images/coverletter.png)  
![Resume 2](https://github.com/typst/packages/raw/main/packages/preview/modern-cv/0.7.0/assets/images/resume2.png) |  ![Cover Letter 2](https://github.com/typst/packages/raw/main/packages/preview/modern-cv/0.7.0/assets/images/coverletter2.png)  
  
##  Building and Testing Locally

To build and test the project locally, you will need to install the ` typst `
CLI. You can find instructions on how to do this [ here
](https://github.com/typst/typst#installation) .

With typst installed you can make changes to ` lib.typ ` and then ` just
install ` or ` just install-preview ` to install the package locally. Change
the import statements in the template files to point to the local package (if
needed):

    
    
    #import "@local/modern-cv:0.6.0": *
    

If you use ` just install-preview ` you will only need to update the version
number to match ` typst.toml ` .

Note that the script parses the ` typst.toml ` to determine the version number
and the folder the local files are installed to.

###  Formatting

This project uses [ typstyle ](https://github.com/Enter-tainer/typstyle) to
format the code. Run ` just format ` to format all the ` *.typ ` files in the
project. Be sure to install ` typstyle ` before running the script.

##  License

The project is licensed under the MIT license. See [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/modern-
cv/0.7.0/LICENSE) for more details.

##  Author

[ ![](https://avatars0.githubusercontent.com/u/6591180?s=460&v=4)  
@DeveloperPaul123  ](https://github.com/DeveloperPaul123)  
---  
[ Create project in app ](/app?template=modern-cv&version=0.7.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-cv:0.7.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Paul Tsouchlos ](https://github.com/DeveloperPaul123)
License:

     MIT 
Current version:

     0.7.0 
Last updated:

     November 4, 2024 
First released:

     March 26, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     20.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-cv-0.7.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/DeveloperPaul123/modern-cv)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Paul Tsouchlos  .  Report issues on  [ their
repository ](https://github.com/DeveloperPaul123/modern-cv) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.7.0  |  November 4, 2024   
[ 0.6.0 ](https://typst.app/universe/package/modern-cv/0.6.0/) |  September 3, 2024   
[ 0.5.0 ](https://typst.app/universe/package/modern-cv/0.5.0/) |  July 23, 2024   
[ 0.4.0 ](https://typst.app/universe/package/modern-cv/0.4.0/) |  July 10, 2024   
[ 0.3.1 ](https://typst.app/universe/package/modern-cv/0.3.1/) |  May 16, 2024   
[ 0.3.0 ](https://typst.app/universe/package/modern-cv/0.3.0/) |  April 17, 2024   
[ 0.2.0 ](https://typst.app/universe/package/modern-cv/0.2.0/) |  April 4, 2024   
[ 0.1.0 ](https://typst.app/universe/package/modern-cv/0.1.0/) |  March 26, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

