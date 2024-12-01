#  lasaveur

0.1.3

Porting vim-latex's math shorthands to Typst. An accommendating vim syntax
file is provided in the repo.

This is a Typst package for speedy mathematical input, inspired by [ vim-latex
](https://github.com/vim-latex/vim-latex) . This project is named after my Vim
plugin [ vimtex-lasaveur ](https://github.com/yangwenbo99/vimtex-lasaveur) ,
which ports the operations in vim-latex to [ vimtex
](https://github.com/lervag/vimtex) .

##  Usages in Typst

Either use the file released in âReleasesâ or import using the following
command:

    
    
    #import "@preview/lasaveur:0.1.3": *
    

This script generates a Typst library that defines shorthand commands for
various mathematical symbols and functions. Hereâs an overview of what it
provides and how a user can use it:

  1. Mathematical Functions: 
     * Usage: ` f<key>(argument) `
     * Examples: ` fh(x) ` for hat, ` ft(x) ` for tilde, ` f2(x) ` for square root 
  2. Font Styles: 
     * Usage: ` f<key>(argument) `
     * Examples: ` fb(x) ` for bold, ` fbb(x) ` for blackboard bold, ` fca(x) ` for calligraphic 
  3. Greek Letters: 
     * Usage: ` k<key> `
     * Examples: ` ka ` for Î± (alpha), ` kb ` for Î² (beta), ` kG ` for Î (capital Gamma) 
  4. Common Mathematical Symbols: 
     * Usage: ` g<key> `
     * Examples: ` g8 ` for â (infinity), ` gU ` for âª (union), ` gI ` for â© (intersection) 
  5. LaTeX-compatible Symbols: 
     * Usage: Direct LaTeX command names 
     * Examples: ` partial ` for â, ` infty ` for â, ` cdot ` for â 
  6. Arrows: 
     * Usage: ` ar.<key> `
     * Examples: ` ar.l ` for â, ` ar.r ` for â, ` ar.lr ` for â 

Users can employ these shorthands in their Typst documents to quickly input
mathematical symbols and functions. The exact prefix for each category (like `
f ` for functions or ` k ` for Greek letters) can be customized using command-
line arguments when running the script.

For instance, in a Typst document, after importing the generated library, a
user could write:

    
    
    $fh(x) + ka + g8 + ar.r$
    

This would produce: xÌ + Î± + â + â

The script provides a wide range of symbols covering most common mathematical
notations, making it easier and faster to type complex mathematical
expressions in Typst â especially for users migrating from vim-latex.

##  Accompanying Vim Syntax File

The syntax file provides more advanced and correct concealing for both
Typstâs built-in math syntax and the lasaveur shorthands. Download the
syntax file from the âReleasesâ section and place it in your `
~/.vim/after/syntax/ ` directory. The ` syntax.vim ` file in the repo is
supposed to be used by the generation script and it _will not work_ if
directly sourced in Vim.

###  How to add

Copy this into your project and use the import as  ` lasaveur `

    
    
    #import "@preview/lasaveur:0.1.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Paul Yang ](https://github.com/yangwenbo99)
License:

     MIT 
Current version:

     0.1.3 
Last updated:

     August 22, 2024 
First released:

     August 22, 2024 
Archive size:

     2.25 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/lasaveur-0.1.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/yangwenbo99/typst-lasaveur)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Paul Yang  .  Report issues on  [ their
repository ](https://github.com/yangwenbo99/typst-lasaveur) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.3  |  August 22, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

