#  wordometer

0.1.4

Word counts and document statistics.

Featured  Package

[ ![Manual](https://img.shields.io/badge/docs-manual.pdf-green)
](https://github.com/typst/packages/raw/main/packages/preview/wordometer/0.1.4/docs/manual.pdf)
![Version](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fgithub.com%2FJollywatt%2Ftypst-
wordometer%2Fraw%2Fmaster%2Ftypst.toml&query=package.version&label=latest%20version)
[ ![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/Jollywatt/typst-wordometer)

A small [ Typst
](https://github.com/typst/packages/raw/main/packages/preview/wordometer/0.1.4/%22https://typst.app/%22)
package for quick and easy in-document word counts.

##  Basic usage

    
    
    #import "@preview/wordometer:0.1.3": word-count, total-words
    
    #show: word-count
    
    In this document, there are #total-words words all up.
    
    #word-count(total => [
      The number of words in this block is #total.words
      and there are #total.characters letters.
    ])
    

##  Excluding elements

You can exclude elements by name (e.g., ` "caption" ` ), function (e.g., `
figure.caption ` ), where-selector (e.g., ` raw.where(block: true) ` ), or
label (e.g., ` <no-wc> ` ).

    
    
    #show: word-count.with(exclude: (heading.where(level: 1), strike))
    
    = This Heading Doesn't Count
    == But I do!
    
    In this document #strike[(excluding me)], there are #total-words words all up.
    
    #word-count(total => [
      You can exclude elements by label, too.
      #[That was #total.words, excluding this sentence!] <no-wc>
    ], exclude: <no-wc>)
    

##  Changelog

###  v0.1.4

  * Fix deprecated use of ` locate() ` for Typst ` >=0.12.0 `

###  v0.1.3

(No changes ð¤¡)

###  v0.1.2

  * Fix bugs when using labels and where-selectors to exclude elements 

###  v0.1.1

  * Allow excluding elements by passing their element functions 
  * Add basic ` element.where(..) ` selectors 
  * Fix crash for figures without captions 

###  v0.1.0

  * Initial version 

###  How to add

Copy this into your project and use the import as  ` wordometer `

    
    
    #import "@preview/wordometer:0.1.4"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Joseph Wilson (Jollywatt) 
License:

     MIT 
Current version:

     0.1.4 
Last updated:

     October 29, 2024 
First released:

     January 29, 2024 
Archive size:

     7.49 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/wordometer-0.1.4.tar.gz)
Repository:

     [ GitHub ](https://github.com/Jollywatt/typst-wordometer)

###  Where to report issues?

This  package  is a project of  Joseph Wilson (Jollywatt)  .  Report issues on
[ their repository ](https://github.com/Jollywatt/typst-wordometer) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.4  |  October 29, 2024   
[ 0.1.3 ](https://typst.app/universe/package/wordometer/0.1.3/) |  October 8, 2024   
[ 0.1.2 ](https://typst.app/universe/package/wordometer/0.1.2/) |  April 29, 2024   
[ 0.1.1 ](https://typst.app/universe/package/wordometer/0.1.1/) |  March 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/wordometer/0.1.0/) |  January 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

