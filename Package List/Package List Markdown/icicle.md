![A preview of the icicle Typst
template.](https://packages.typst.org/preview/thumbnails/icicle-0.1.0-small.webp)

#  icicle

0.1.0

Help the Typst Guys reach the helicopter pad and save Christmas!

[ Create project in app ](/app?template=icicle&version=0.1.0)

Help the Typst Guys reach the helicopter pad and save Christmas! Navigate them
with the WASD keys and solve puzzles with snowballs to make way for the Typst
Guys.

This small Christmas-themed game is playable in the Typst editor and best
enjoyed with the web app or ` typst watch ` . It was first released for the 24
Days to Christmas campaign in winter of 2023.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` icicle ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/icicle
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` game ` function, which accepts a positional
argument for the game input.

The template will initialize your package with a sample call to the ` game `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/icicle:0.1.0": game
    #show: game
    
    // Move with WASD.
    

You can also add your own levels by adding an array of level definition
strings in the ` game ` functionâs named ` levels ` argument. Each level
file must conform to the following format:

  * First, a line with two comma separated integers indicating the playerâs starting position. 
  * Then, a matrix with the characters f (floor), x (wall), w (water), or g (goal). 
  * Finally, a matrix with the characters b (snowball) or _ (nothing). 

The three arguments must be separated by double newlines. Additionally, each
row in the matrices space-separates its values. Newlines terminate the rows.
Comments can be added with a double slash. Find an example for a valid level
string below:

    
    
    // The starting position
    0, 0
    
    // The back layer
    f f f w f f f
    f f f w f f f
    f f x w f f f
    f f f w f f f
    f f f w f x x
    x x x g x x x
    
    // The front layer.
    _ _ b _ _ _ _
    _ _ b _ _ _ _
    _ _ _ _ b _ _
    _ _ _ _ b _ _
    _ _ _ _ _ _ _
    _ _ _ _ _ _ _
    

Itâs best to put levels into separate files and load them with the ` read `
function.

[ Create project in app ](/app?template=icicle&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/icicle:0.1.0

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

     0.8.0 
Archive size:

     143 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/icicle-0.1.0.tar.gz)
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

