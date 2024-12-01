![A preview of the minimalistic-latex-cv Typst
template.](https://packages.typst.org/preview/thumbnails/minimalistic-latex-
cv-0.1.1-small.webp)

#  minimalistic-latex-cv

0.1.1

A minimalistic LaTeX-style CV template for professionals.

[ Create project in app ](/app?template=minimalistic-latex-cv&version=0.1.1)

This is a Typst template for a minimalistic LaTeX-style CV. It provides a
simple structure for a CV with a header, a section for professional
experience, a section for education, and a section for skills and languages.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` minimalistic-latex-cv ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/minimalistic-latex-cv
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` cv ` function with the following named arguments:

  * ` name ` : The name of the person. 
  * ` metadata ` : A dictionary of metadata of the person to be displayed in the header. 
  * ` photo ` : The path to the photo of the person. 
  * ` lang ` : The language of the document. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` cv `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/minimalistic-latex-cv:0.1.1": cv
    
    #show: cv.with(
      name: "Your Name",
      metadata: (
        email: "your@email.com",
        telephone: "+123456789",
      ),
      photo: image("photo.jpeg"),
      lang: "en",
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=minimalistic-latex-cv&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/minimalistic-latex-cv:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Norbert Elter ](https://github.com/itsyoboieltr)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     May 23, 2024 
First released:

     March 19, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     7.18 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minimalistic-latex-cv-0.1.1.tar.gz)
Categor  y  :

    

  * ![CV icon](/assets/icons/16-user.svg) [ CV ](https://typst.app/universe/search/?category=cv)

###  Where to report issues?

This  template  is a project of  Norbert Elter  .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/minimalistic-latex-cv/0.1.0/) |  March 19, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

