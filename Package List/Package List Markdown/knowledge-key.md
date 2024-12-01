![A preview of the knowledge-key Typst
template.](https://packages.typst.org/preview/thumbnails/knowledge-
key-1.0.1-small.webp)

#  knowledge-key

1.0.1

A compact cheat-sheet

[ Create project in app ](/app?template=knowledge-key&version=1.0.1)

This is a typst template for a compact cheat-sheet.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` knowledge-key ` .
Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/knowledge-key
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` ieee ` function with the following named
arguments:

  * ` title ` : The title of the cheat-sheet 
  * ` authors ` : A string of authors 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the `
knowledge-key ` function in a show rule. If you want to change an existing
project to use this template, you can add a show rule like this at the top of
your file:

    
    
    #import "@preview/knowledge-key:1.0.1": *
    
    #show: knowledge-key.with(
      title: [Title],
      authors: "Author1, Author2"
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=knowledge-key&version=1.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/knowledge-key:1.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Nick Goetti 
License:

     MIT-0 
Current version:

     1.0.1 
Last updated:

     October 25, 2024 
First released:

     October 1, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     166 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/knowledge-key-1.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/ngoetti/knowledge-key)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Flyer icon](/assets/icons/16-map.svg) [ Flyer ](https://typst.app/universe/search/?category=flyer)

###  Where to report issues?

This  template  is a project of  Nick Goetti  .  Report issues on  [ their
repository ](https://github.com/ngoetti/knowledge-key) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.1  |  October 25, 2024   
[ 1.0.0 ](https://typst.app/universe/package/knowledge-key/1.0.0/) |  October 1, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

