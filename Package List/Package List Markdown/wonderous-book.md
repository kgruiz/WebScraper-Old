![A preview of the wonderous-book Typst
template.](https://packages.typst.org/preview/thumbnails/wonderous-
book-0.1.1-small.webp)

#  wonderous-book

0.1.1

A fiction book template with running headers and serif typography

[ Create project in app ](/app?template=wonderous-book&version=0.1.1)

A book template for fiction. The template contains a title page, a table of
contents, and a chapter template.

Dynamic running headers contain the title of the chapter and the book.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` wonderous-book ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/wonderous-book
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` book ` function with the following named
arguments:

  * ` title ` : The bookâs title as content. 
  * ` author ` : Content or an array of content to specify the author. 
  * ` paper-size ` : Defaults to ` iso-b5 ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. 
  * ` dedication ` : Who or what this book is dedicated to as content or ` none ` . Will appear on its own page. 
  * ` publishing-info ` : Details for the front matter of this book as content or ` none ` . 

The function also accepts a single, positional argument for the body of the
book.

The template will initialize your package with a sample call to the ` book `
function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/wonderous-book:0.1.1": book
    
    #show: book.with(
      title: [Liam's Playlist],
      author: "Janet Doe",
      dedication: [for Rachel],
      publishing-info: [
        UK Publishing, Inc. \
        6 Abbey Road \
        Vaughnham, 1PX 8A3
    
        #link("https://example.co.uk/")
    
        971-1-XXXXXX-XX-X
      ],
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=wonderous-book&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/wonderous-book:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Typst GmbH ](https://typst.app)
License:

     MIT-0 
Current version:

     0.1.1 
Last updated:

     October 29, 2024 
First released:

     March 6, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.06 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/wonderous-book-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Categor  y  :

    

  * ![Book icon](/assets/icons/16-docs.svg) [ Book ](https://typst.app/universe/search/?category=book)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/wonderous-book/0.1.0/) |  March 6, 2024 

