#  wavy

0.1.1

Draw digital timing diagram in Typst using Wavedrom.

Draw digital timing diagram in Typst using [ Wavedrom ](https://wavedrom.com/)
.

![](https://github.com/typst/packages/raw/main/packages/preview/wavy/0.1.1/wavy.svg)

    
    
    #import "@preview/wavy:0.1.1"
    
    #set page(height: auto, width: auto, fill: black, margin: 2em)
    #set text(fill: white)
    
    #show raw.where(lang: "wavy"): it => wavy.render(it.text)
    
    = Wavy
    
    Typst, now with waves.
    
    ```wavy
    {
      signal:
      [
        {name:'clk',wave:'p......'},
        {name:'bus',wave:'x.34.5x',data:'head body tail'},
        {name:'wire',wave:'0.1..0.'}
      ]
    }
    ```
    
    ```js
    {
      signal:
      [
        {name:'clk',wave:'p......'},
        {name:'bus',wave:'x.34.5x',data:'head body tail'},
        {name:'wire',wave:'0.1..0.'}
      ]
    }
    ```
    
    

##  Documentation

###  ` render `

Render a wavedrom json5 string to an image

####  Arguments

  * ` src ` : ` str ` \- wavedrom json5 string 
  * All other arguments are passed to ` image.decode ` so you can customize the image size 

####  Returns

The image, of type ` content `

###  How to add

Copy this into your project and use the import as  ` wavy `

    
    
    #import "@preview/wavy:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Wenzhuo Liu 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     December 3, 2023 
First released:

     November 8, 2023 
Archive size:

     42.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/wavy-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Enter-tainer/wavy)

###  Where to report issues?

This  package  is a project of  Wenzhuo Liu  .  Report issues on  [ their
repository ](https://github.com/Enter-tainer/wavy) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  December 3, 2023   
[ 0.1.0 ](https://typst.app/universe/package/wavy/0.1.0/) |  November 8, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

