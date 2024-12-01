![A preview of the ofbnote Typst
template.](https://packages.typst.org/preview/thumbnails/ofbnote-0.2.0-small.webp)

#  ofbnote

0.2.0

A document template using French Office for biodiversity design guidelines

[ Create project in app ](/app?template=ofbnote&version=0.2.0)

This is a Typst template to help formatting documents according to the French
office for biodiversity design guidelines.

##  Usage

You can use the CLI to kick this project off using the command

    
    
    typst init @preview/ofbnote
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` ofbnote ` function with one named argument called
` meta ` which should be a dictionary of metadata for the document. The ` meta
` dictionary can contain the following fields:

  * ` title ` : The documentâs title as a string or content. 
  * ` authors ` : The documentâs author(s) as a string. 
  * ` date ` : The documentâs date as a string or content. 
  * ` version ` : The documentâs version as a string. 

It may contains other values, but they have no effect on the final document.

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` ofbnote
` function in a show rule. If you want to change an existing project to use
this template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/ofbnote:0.2.0": *
    
    #show: ofbnote.with( meta:(
      title: "My note",
      authors: "Me",
      date: "March 23rd, 2023",
      version: "1.0"
    ))
    
    // Your content goes below.
    

[ Create project in app ](/app?template=ofbnote&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ofbnote:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     FranÃ§ois Hissel 
License:

     MIT-0 
Current version:

     0.2.0 
Last updated:

     August 12, 2024 
First released:

     August 12, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     9.14 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ofbnote-0.2.0.tar.gz)
Categor  ies  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  FranÃ§ois Hissel  .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  August 12, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

