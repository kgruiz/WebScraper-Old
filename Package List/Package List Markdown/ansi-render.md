#  ansi-render

0.6.1

provides a simple way to render text with ANSI escape sequences.

[ ![GitHub manifest version
\(path\)](https://img.shields.io/github/v/tag/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render/tags) [ ![GitHub Repo
stars](https://img.shields.io/github/stars/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render) [
![GitHub](https://img.shields.io/github/license/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/ansi-render)

This script provides a simple way to render text with ANSI escape sequences.
Package ` ansi-render ` provides a function ` ansi-render ` , and a dictionary
of themes ` terminal-themes ` .

contribution is welcomed!

##  Usage

    
    
    #import "@preview/ansi-render:0.6.1": *
    
    #ansi-render(
      string,
      font:           string or none,
      size:           length,
      width:          auto or relative length,
      height:         auto or relative length,
      breakable:      boolean,
      radius:         relative length or dictionary,
      inset:          relative length or dictionary,
      outset:         relative length or dictionary,
      spacing:        relative length or fraction,
      above:          relative length or fraction,
      below:          relative length or fraction,
      clip:           boolean,
      bold-is-bright: boolean,
      theme:          terminal-themes.theme,
    )
    

###  Parameters

  * ` string ` \- string with ANSI escape sequences 
  * ` font ` \- font name or none, default is ` Cascadia Code ` , set to ` none ` to use the same font as ` raw `
  * ` size ` \- font size, default is ` 1em `
  * ` bold-is-bright ` \- boolean, whether bold text is rendered with bright colors, default is ` false `
  * ` theme ` \- theme, default is ` vscode-light `
  * parameters from [ ` block ` ](https://typst.app/docs/reference/layout/block/) function with the same default value, only affects outmost block layout: 
    * ` width `
    * ` height `
    * ` breakable `
    * ` radius `
    * ` inset `
    * ` outset `
    * ` spacing `
    * ` above `
    * ` below `
    * ` clip `

##  Themes

see [ themes ](https://github.com/8LWXpg/typst-ansi-
render/blob/master/test/themes.pdf)

##  Demo

see [ demo.typ ](https://github.com/8LWXpg/typst-ansi-
render/blob/master/test/demo.typ) [ demo.pdf
](https://github.com/8LWXpg/typst-ansi-render/blob/master/test/demo.pdf)

    
    
    #ansi-render(
    "\u{1b}[38;2;255;0;0mThis text is red.\u{1b}[0m
    \u{1b}[48;2;0;255;0mThis background is green.\u{1b}[0m
    \u{1b}[38;2;255;255;255m\u{1b}[48;2;0;0;255mThis text is white on a blue background.\u{1b}[0m
    \u{1b}[1mThis text is bold.\u{1b}[0m
    \u{1b}[4mThis text is underlined.\u{1b}[0m
    \u{1b}[38;2;255;165;0m\u{1b}[48;2;255;255;0mThis text is orange on a yellow background.\u{1b}[0m",
    inset: 5pt, radius: 3pt,
    theme: terminal-themes.vscode
    )
    

![1.png](https://raw.githubusercontent.com/8LWXpg/typst-ansi-
render/master/img/1.png)

    
    
    #ansi-render(
    "\u{1b}[38;5;196mRed text\u{1b}[0m
    \u{1b}[48;5;27mBlue background\u{1b}[0m
    \u{1b}[38;5;226;48;5;18mYellow text on blue background\u{1b}[0m
    \u{1b}[7mInverted text\u{1b}[0m
    \u{1b}[38;5;208;48;5;237mOrange text on gray background\u{1b}[0m
    \u{1b}[38;5;39;48;5;208mBlue text on orange background\u{1b}[0m
    \u{1b}[38;5;255;48;5;0mWhite text on black background\u{1b}[0m",
    inset: 5pt, radius: 3pt,
    theme: terminal-themes.vscode
    )
    

![2.png](https://raw.githubusercontent.com/8LWXpg/typst-ansi-
render/master/img/2.png)

    
    
    #ansi-render(
    "\u{1b}[31;1mHello \u{1b}[7mWorld\u{1b}[0m
    
    \u{1b}[53;4;36mOver  and \u{1b}[35m Under!
    \u{1b}[7;90mreverse\u{1b}[101m and \u{1b}[94;27mreverse",
    inset: 5pt, radius: 3pt,
    theme: terminal-themes.vscode
    )
    

![3.png](https://raw.githubusercontent.com/8LWXpg/typst-ansi-
render/master/img/3.png)

    
    
    // uses the font that supports ligatures
    #ansi-render(read("test.txt"), inset: 5pt, radius: 3pt, font: "Cascadia Code", theme: terminal-themes.putty)
    

![4.png](https://raw.githubusercontent.com/8LWXpg/typst-ansi-
render/master/img/4.png)

###  How to add

Copy this into your project and use the import as  ` ansi-render `

    
    
    #import "@preview/ansi-render:0.6.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     8LWXpg 
License:

     MIT 
Current version:

     0.6.1 
Last updated:

     December 28, 2023 
First released:

     July 3, 2023 
Minimum Typst version:

     0.10.0 
Archive size:

     6.23 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ansi-render-0.6.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/8LWXpg/typst-ansi-render)

###  Where to report issues?

This  package  is a project of  8LWXpg  .  Report issues on  [ their
repository ](https://github.com/8LWXpg/typst-ansi-render) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.6.1  |  December 28, 2023   
[ 0.6.0 ](https://typst.app/universe/package/ansi-render/0.6.0/) |  December 10, 2023   
[ 0.5.1 ](https://typst.app/universe/package/ansi-render/0.5.1/) |  October 21, 2023   
[ 0.5.0 ](https://typst.app/universe/package/ansi-render/0.5.0/) |  September 29, 2023   
[ 0.4.2 ](https://typst.app/universe/package/ansi-render/0.4.2/) |  September 25, 2023   
[ 0.4.1 ](https://typst.app/universe/package/ansi-render/0.4.1/) |  September 22, 2023   
[ 0.4.0 ](https://typst.app/universe/package/ansi-render/0.4.0/) |  September 13, 2023   
[ 0.3.0 ](https://typst.app/universe/package/ansi-render/0.3.0/) |  September 9, 2023   
[ 0.2.0 ](https://typst.app/universe/package/ansi-render/0.2.0/) |  August 5, 2023   
[ 0.1.0 ](https://typst.app/universe/package/ansi-render/0.1.0/) |  July 3, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

