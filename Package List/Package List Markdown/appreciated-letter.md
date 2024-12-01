![A preview of the appreciated-letter Typst
template.](https://packages.typst.org/preview/thumbnails/appreciated-
letter-0.1.0-small.webp)

#  appreciated-letter

0.1.0

Correspond with business associates and your friends via mail

[ Create project in app ](/app?template=appreciated-letter&version=0.1.0)

A basic letter with sender and recipient address. The letter is ready for a
DIN DL windowed envelope.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` appreciated-letter ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/appreciated-letter
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` letter ` function with the following named
arguments:

  * ` sender ` : The letterâs sender as content. This is displayed at the top of the page. 
  * ` recipient ` : The address of the letterâs recipient as content. This is displayed near the top of the page. 
  * ` date ` : The date, and possibly place, the letter was written at as content. Flushed to the right after the address. 
  * ` subject ` : The subject line for the letter as content. 
  * ` name ` : The name the letter closes with as content. 

The function also accepts a single, positional argument for the body of the
letter.

The template will initialize your package with a sample call to the ` letter `
function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/appreciated-letter:0.1.0": letter
    
    #show: letter.with(
      sender: [
        Jane Smith, Universal Exports, 1 Heavy Plaza, Morristown, NJ 07964
      ],
      recipient: [
        Mr. John Doe \
        Acme Corp. \
        123 Glennwood Ave \
        Quarto Creek, VA 22438
      ],
      date: [Morristown, June 9th, 2023],
      subject: [Revision of our Producrement Contract],
      name: [Jane Smith \ Regional Director],
    )
    
    Dear Joe,
    
    #lorem(99)
    
    Best,
    

[ Create project in app ](/app?template=appreciated-letter&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/appreciated-letter:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Typst GmbH ](https://typst.app)
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     March 6, 2024 
First released:

     March 6, 2024 
Minimum Typst version:

     0.6.0 
Archive size:

     2.33 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/appreciated-letter-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 6, 2024 

