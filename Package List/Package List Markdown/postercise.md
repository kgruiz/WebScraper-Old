#  postercise

0.1.0

Postercise allows users to easily create academic research posters with
different themes using Typst.

_Postercise_ allows users to easily create academic research posters with
different themes using [ Typst ](https://typst.app/) .

![GitHub](https://img.shields.io/github/license/dangh3014/postercise) ![GitHub
release \(latest by
date\)](https://img.shields.io/github/v/release/dangh3014/postercise) ![GitHub
Repo stars](https://img.shields.io/github/stars/dangh3014/postercise)

##  Getting started

You can get **Postercise** from the official package repository by entering
the following.

    
    
    #import "@preview/postercise:0.1.0": *
    

Another option is to use **Postercise** as a local module by downloading the
package files into your project folder.

Next you will need to import a theme, set up the page and font, and call the `
show ` command.

    
    
    #import themes.basic: *
    
    #set page(width: 24in, height: 18in)
    #set text(size: 24pt)
    
    #show: theme
    

To add content to the poster, use the ` poster-content ` command.

    
    
    #poster-content()[
      // Content goes here
    ]
    

There are a few options for types of content that should be added inside the `
poster-content ` . The body of the poster can be typed as normal, or two box
styles are provided to headings and/or highlight content in special ways.

    
    
    #normal-box[]
    #focus-box[]
    

Basic information like title and authors is placed as options using the `
poster-header ` script.

    
    
    #poster-header(
      title: [Title],
      authors: [Author],
    )
    

Finally, additional content can be added to the footer with the ` poster-
footer ` script.

    
    
    #poster-footer[]
    

Again, as a reminder, all of these scripts should be called from inside of the
` poster-content ` block.

Using these commands, it is easy to produce posters like the following:
![Examples](https://raw.githubusercontent.com/dangh3014/postercise/main/examples/postercise-
examples.png)

##  More details

###  ` themes `

Currently, 3 themes are available. Use one of these ` import ` commands to
load that theme.

    
    
    #import themes.basic: *
    #import themes.better: *
    #import themes.boxes: *
    

###  ` show: theme.with() `

Theme options allow you to adjust the color scheme, as well as the color and
size of the content in the header. The defaults are shown below. (The
âbetter.typâ theme defaults to different titletext color and size.)

    
    
    #show: theme.with(
      primary-color: rgb(28,55,103), // Dark blue
      background-color: white,
      accent-color: rgb(243,163,30), // Yellow
      titletext-color: white,
      titletext-size: 2em,
    )
    

###  ` poster-content()[] `

The only option for the main content is the number of columns. This defaults
to 3 for most themes. For the âbetter.typâ theme, there is 1 column and
content is placed in the leftmost column below ` poster-header ` .

    
    
    #poster-content(col: 3)[
      // Content goes here
    ]
    

###  ` normal-box()[] ` and ` focus-box()[] `

By default, these boxes use the no fill and the accent-color fill,
respectively. However, they do accept color as an option, and will add a
primary-color stroke around the box if a color is given. For the
âbetter.typâ theme, use ` focus-box ` to place content in the center
column.

    
    
    #normal-box(color: none)[
      // Content
    ]
    
    #focus-box(color: none)[
      // Content
    ]
    

###  ` poster-header() `

Available options for the poster header for most themes are shown below. Note
that logos should be explicitly labeled as images. Logos are not currently
displayed in the header in the âbetter.typâ theme.

    
    
    #poster-header(
      title: [Title],
      subtitle: [Subtitle],
      author: [Author],
      affiliation: [Affiliation],
      logo-1: image("placeholder.png")
      logo-2: image("placeholder.png") 
    )
    

###  ` poster-footer[] `

This command does not currently have any extra options. The content is
typically placed at the bottom of the poster, but it is placed in the
rightmost column for the âbetter.typâ theme.

    
    
    #poster-footer[
      // Content
    ]
    

##  Known Issues

  * The bibliography does not work properly and must be done manually 
  * Figure captions do not number correctly and must be done manually 

##  Planned Features/Themes

  * Themes that use color gradients and background images 
  * Add QR code generation 

###  How to add

Copy this into your project and use the import as  ` postercise `

    
    
    #import "@preview/postercise:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Daniel King 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     May 27, 2024 
First released:

     May 27, 2024 
Archive size:

     5.11 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/postercise-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/dangh3014/postercise/)
Categor  y  :

    

  * ![Poster icon](/assets/icons/16-pin.svg) [ Poster ](https://typst.app/universe/search/?category=poster)

###  Where to report issues?

This  package  is a project of  Daniel King  .  Report issues on  [ their
repository ](https://github.com/dangh3014/postercise/) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  May 27, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

