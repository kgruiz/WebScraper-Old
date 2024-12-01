#  gentle-clues

1.0.0

A package to simply create and add some admonitions to your documents.

Featured  Package

Simple admonitions for typst. Add predefined or define your own.

Inspired from [ mdbook-admonish ](https://tommilligan.github.io/mdbook-
admonish/) .

##  Overview of all predefined clues:

![Overview of the predefined
clues](https://github.com/typst/packages/raw/main/packages/preview/gentle-
clues/1.0.0/gc-overview.svg)

##  Usage

For full information, see the [ docs.pdf ](https://github.com/jomaway/typst-
gentle-clues/blob/main/docs.pdf)

To use this package, simply add the following code to your document:

    
    
    #import "@preview/gentle-clues:1.0.0": *
    
    // add an info clue
    #info[ This is the info clue ... ]
    
    // or a tip with custom title
    #tip(title: "Best tip ever")[Check out this cool package]
    

_This will create an info clue and tip clue inside your document. See the
overview for all available clues.

###  Features

This package provides some features which helps to customize the clues to your
liking.

  * Set global default for all clues 
  * Overwrite each parameter on a single clue for changing title, color, etc. 
  * Show or hide a counter value on tasks. 
  * Define your own clues very easily. 
  * â¦ 

For a full list see the [ documentation ](https://github.com/jomaway/typst-
gentle-clues/blob/main/docs.pdf) .

##  Language support

This package does use [ linguify ](https://github.com/jomaway/typst-linguify)
to support multiple languages.

**Header titles:** The language of the header titles is detected automatically
from the ` context text.lang ` . See the file [ lang.toml
](https://github.com/jomaway/typst-gentle-clues/blob/main/lib/lang.toml) for
currently supported languages.

If an unsupported language is set it will fallback to english as default. Feel
free to open a PR with your language added to the ` lang.toml ` file.

##  License

[ MIT License
](https://github.com/typst/packages/raw/main/packages/preview/gentle-
clues/1.0.0/LICENSE)

##  Changelog

[ See CHANGELOG.md
](https://github.com/typst/packages/raw/main/packages/preview/gentle-
clues/1.0.0/CHANGELOG.md)

###  How to add

Copy this into your project and use the import as  ` gentle-clues `

    
    
    #import "@preview/gentle-clues:1.0.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jomaway ](https://github.com/jomaway)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     September 8, 2024 
First released:

     September 15, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     70.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/gentle-clues-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/jomaway/typst-gentle-clues)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Jomaway  .  Report issues on  [ their
repository ](https://github.com/jomaway/typst-gentle-clues) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  September 8, 2024   
[ 0.9.0 ](https://typst.app/universe/package/gentle-clues/0.9.0/) |  July 1, 2024   
[ 0.8.0 ](https://typst.app/universe/package/gentle-clues/0.8.0/) |  April 29, 2024   
[ 0.7.1 ](https://typst.app/universe/package/gentle-clues/0.7.1/) |  March 26, 2024   
[ 0.7.0 ](https://typst.app/universe/package/gentle-clues/0.7.0/) |  March 18, 2024   
[ 0.6.0 ](https://typst.app/universe/package/gentle-clues/0.6.0/) |  January 11, 2024   
[ 0.5.0 ](https://typst.app/universe/package/gentle-clues/0.5.0/) |  January 8, 2024   
[ 0.4.0 ](https://typst.app/universe/package/gentle-clues/0.4.0/) |  November 17, 2023   
[ 0.3.0 ](https://typst.app/universe/package/gentle-clues/0.3.0/) |  October 20, 2023   
[ 0.2.0 ](https://typst.app/universe/package/gentle-clues/0.2.0/) |  September 26, 2023   
[ 0.1.0 ](https://typst.app/universe/package/gentle-clues/0.1.0/) |  September 15, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

