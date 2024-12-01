![A preview of the bubble Typst
template.](https://packages.typst.org/preview/thumbnails/bubble-0.2.2-small.webp)

#  bubble

0.2.2

Simple and colorful template for Typst

[ Create project in app ](/app?template=bubble&version=0.2.2)

Simple and colorful template for [ Typst ](https://typst.app/) . This template
uses a main color (default is ` #E94845 ` ) applied to list items, links,
inline blocks, selected words and headings. Every page is numbered and has the
title of the document and the name of the author at the top.

You can see an example PDF [ here ](https://github.com/hzkonor/bubble-
template/blob/main/main.pdf) .

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` bubble ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/bubble
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` bubble ` function with the following named
arguments:

  * ` title ` : Title of the document 
  * ` subtitle ` : Subtitle of the document 
  * ` author ` : Name of the author(s) 
  * ` affiliation ` : It is supposed to be the name of your university for example 
  * ` year ` : The year youâre in 
  * ` class ` : For which class this document is 
  * ` other ` : Array of other information _default is none_
  * ` date ` : Date of the document, current date if none is set _default is current date_
  * ` logo ` : Path of the logo displayed at the top right of the title page, must be set like an image : ` image("path-to-img") ` _default is none_
  * ` main-color ` : Main color used in the document _default is` #E94645 ` _
  * ` alpha ` : Percentage of transparency for the bubbles on the title page _default is 60%_
  * ` color-words ` : An array of strings that you want to be colored automatically in the main-color (be careful to put a trailing comma if you have only one string in the array as noted [ here ](https://typst.app/docs/reference/foundations/array/) ) _default is an empty array_

This template also exports these functions :

  * ` blockquote ` : Function that highlights quotes with a grey bar at the left 
  * ` primary-color ` : to use your main color 
  * ` secondary-color ` : to use your secondary color (which is your main color with the alpha transparency set) 

If you want to change an existing project to use this template, you can add a
show rule like this at the top of your file:

    
    
    #import "@preview/bubble:0.2.2": *
    
    #show: bubble.with(
      title: "Bubble template",
      subtitle: "Simple and colorful template",
      author: "hzkonor",
      affiliation: "University",
      date: datetime.today().display(),
      year: "Year",
      class: "Class",
      other: ("Made with Typst", "https://typst.com"),
      logo: image("logo.png"),
      color-words: ("important",)
    ) 
    
    // Your content goes here
    

[ Create project in app ](/app?template=bubble&version=0.2.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/bubble:0.2.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Conor ](https://github.com/hzkonor)
License:

     MIT-0 
Current version:

     0.2.2 
Last updated:

     October 21, 2024 
First released:

     April 16, 2024 
Archive size:

     36.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/bubble-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/hzkonor/bubble-template)
Categor  ies  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Conor  .  Report issues on  [ their
repository ](https://github.com/hzkonor/bubble-template) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  October 21, 2024   
[ 0.2.1 ](https://typst.app/universe/package/bubble/0.2.1/) |  August 2, 2024   
[ 0.2.0 ](https://typst.app/universe/package/bubble/0.2.0/) |  July 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/bubble/0.1.0/) |  April 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

