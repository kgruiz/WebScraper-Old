![A preview of the cram-snap Typst
template.](https://packages.typst.org/preview/thumbnails/cram-
snap-0.2.1-small.webp)

#  cram-snap

0.2.1

Compact and legible cheat sheets

Featured  Template

[ Create project in app ](/app?template=cram-snap&version=0.2.1)

Simple cheatsheet template for [ Typst ](https://typst.app/) that allows you
to snap a quick picture of essential information and cram it into a useful
cheatsheet format.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` cram-snap ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/cram-snap
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` cram-snap ` function with the following named
arguments:

  * ` title ` : Title of the document 
  * ` subtitle ` : Subtitle of the document 
  * ` icon ` : Image that appears next to the title 
  * ` column-number ` : Number of columns 

The ` theader ` function is a wrapper around the ` table.header ` function
that creates a header and takes ` colspan ` as argument to span the header
across multiple table columns (by default it spans across two)

If you want to change an existing project to use this template, you can add a
show rule like this at the top of your file:

    
    
    #import "@preview/cram-snap:0.2.1": *
    
    #set page(paper: "a4", flipped: true, margin: 1cm)
    #set text(font: "Arial", size: 11pt)
    
    #show: cram-snap.with(
      title: [Cheatsheet],
      subtitle: [Cheatsheet for an amazing program],
      icon: image("icon.png"),
      column-number: 3,
    )
    
    // Use it if you want different table columns (the default are: (2fr, 3fr))
    #set table(columns: (2fr, 3fr, 3fr))
    
    #table(
      theader(colspan: 3)[Great heading that is really looooong],
      [Closing the program], [Type `:q`], [You can also type `QQ`]
    )
    

[ Create project in app ](/app?template=cram-snap&version=0.2.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/cram-snap:0.2.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     kamack38 
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     October 25, 2024 
First released:

     May 13, 2024 
Archive size:

     3.79 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cram-snap-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/kamack38/cram-snap)
Categor  y  :

    

  * ![Flyer icon](/assets/icons/16-map.svg) [ Flyer ](https://typst.app/universe/search/?category=flyer)

###  Where to report issues?

This  template  is a project of  kamack38  .  Report issues on  [ their
repository ](https://github.com/kamack38/cram-snap) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  October 25, 2024   
[ 0.2.0 ](https://typst.app/universe/package/cram-snap/0.2.0/) |  October 15, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cram-snap/0.1.0/) |  May 13, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

