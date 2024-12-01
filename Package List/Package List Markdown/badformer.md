![A preview of the badformer Typst
template.](https://packages.typst.org/preview/thumbnails/badformer-0.1.0-small.webp)

#  badformer

0.1.0

Retro-gaming in Typst. Reach the goal and complete the mission.

[ Create project in app ](/app?template=badformer&version=0.1.0)

Reach the goal in this retro-inspired wireframing platformer. Play in 3
dimensions and compete for the lowest number of steps to win!

This small game is playable in the Typst editor and best enjoyed with the web
app or ` typst watch ` . It was first released for the 24 Days to Christmas
campaign in winter of 2023.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` badformer ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/badformer
    

Typst will create a new directory with all the files needed to get you
started.

Move with WASD and jump with space. You can also display a minimap by pressing
E.

##  Configuration

This template exports the ` game ` function, which accepts a positional
argument for the game input.

The template will initialize your package with a sample call to the ` game `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/badformer:0.1.0": game
    #show: game(read("main.typ"))
    
    // Move with WASD and jump with space.
    

[ Create project in app ](/app?template=badformer&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/badformer:0.1.0

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

     0.10.0 
Archive size:

     5.43 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/badformer-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Categor  y  :

    

  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 6, 2024 

