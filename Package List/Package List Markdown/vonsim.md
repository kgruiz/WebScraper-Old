#  vonsim

0.1.0

Syntax highlighting support for VonSim.

This package adds the ability to syntax highlighting VonSim source code in
Typst.

##  How to use

To add global support for VonSim, just add these lines and use a raw block
with ` vonsim ` as its language.

    
    
    #import "@preview/vonsim:0.1.0": init-vonsim
    
    // Adds global support for VonSim
    #show: init-vonsim
    
    // Highlight VonSim code
    ```vonsim
    ; Welcome to VonSim!
    ; This is an example program that calculates the first
    ; n numbers of the Fibonacci sequence, and stores them
    ; starting at memory position 1000h.
    
         n  equ 10    ; Calculate the first 10 numbers
    
            org 1000h
    start   db 1
    
            org 2000h
            mov bx, offset start + 1
            mov al, 0
            mov ah, start
    
    loop:   cmp bx, offset start + n
            jns finish
            mov cl, ah
            add cl, al
            mov al, ah
            mov ah, cl
            mov [bx], cl
            inc bx
            jmp loop
    finish: hlt
            end
    ```
    

Alternatively, use ` init-vonsim-full ` to also use the VonSim theme.

###  How to add

Copy this into your project and use the import as  ` vonsim `

    
    
    #import "@preview/vonsim:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Juan MartÃ­n Seery ](https://github.com/JuanM04)
License:

     AGPL-3.0-only 
Current version:

     0.1.0 
Last updated:

     June 10, 2024 
First released:

     June 10, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     13.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/vonsim-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/vonsim/typst-package)
Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  Juan MartÃ­n Seery  .  Report issues on  [
their repository ](https://github.com/vonsim/typst-package) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 10, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

