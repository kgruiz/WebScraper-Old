![A preview of the soviet-matrix Typst
template.](https://packages.typst.org/preview/thumbnails/soviet-
matrix-0.1.1-small.webp)

#  soviet-matrix

0.1.1

Tetris game in Typst

[ Create project in app ](/app?template=soviet-matrix&version=0.1.1)

This is a classic Tetris game implemented using Typst. The goal is to
manipulate falling blocks to create and clear horizontal lines without letting
the blocks stack up to the top of the playing field.

![](https://github.com/typst/packages/raw/main/packages/preview/soviet-
matrix/0.1.1/demo.gif)

##  How to Play

You can play the game in two ways:

  1. **Online:**

     * Visit [ https://typst.app/app?template=soviet-matrix&version=0.1.0 ](https://typst.app/app?template=soviet-matrix&version=0.1.0) . 
     * Enter any title of your choice and click **Create** . 
  2. **Locally:**

     * Open your command line interface. 
     * Run the following command: 
        
                typst init @preview/soviet-matrix
        

     * Typst will create a new directory. 
     * Open ` main.typ ` in the created directory. 
     * Use the [ Typst Preview VS Code extension ](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) for live preview and gameplay. 

Enjoy the game!

##  Controls

  * Move Left: a 
  * Move Right: d 
  * Soft Drop: s 
  * Hard Drop: f 
  * Rotate Left: q 
  * Rotate Right: e 
  * 180-degree Rotate: w 

##  Changing the Game Seed

If you want to play different game scenarios, you can change the game seed
using the following method:

    
    
    #import "@preview/soviet-matrix:0.1.0": game
    #show: game.with(seed: 123) // Change the game seed
    

Replace ` 123 ` with any number of your choice.

##  Changing Key Bindings

Modify the ` actions ` parameter in the ` game.with ` method to change the key
bindings. The default key bindings are as follows:

    
    
    #show: game.with(seed: 0, actions: (
      left: ("a", ),
      right: ("d", ),
      down: ("s", ),
      left-rotate: ("q", ),
      right-rotate: ("e", ),
      half-turn: ("w", ),
      fast-drop: ("f", ),
    ))
    

[ Create project in app ](/app?template=soviet-matrix&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/soviet-matrix:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ YouXam ](https://github.com/YouXam)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     July 3, 2024 
First released:

     June 10, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     5.17 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/soviet-matrix-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/YouXam/soviet-matrix)
Categor  y  :

    

  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  template  is a project of  YouXam  .  Report issues on  [ their
repository ](https://github.com/YouXam/soviet-matrix) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  July 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/soviet-matrix/0.1.0/) |  June 10, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

