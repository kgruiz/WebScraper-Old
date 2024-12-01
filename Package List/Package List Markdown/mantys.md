![A preview of the mantys Typst
template.](https://packages.typst.org/preview/thumbnails/mantys-0.1.4-small.webp)

#  mantys

0.1.4

Helpers to build manuals for Typst packages.

[ Create project in app ](/app?template=mantys&version=0.1.4)

> **MAN** uals for **TY** p **S** t

Template for documenting [ typst ](https://github.com/typst/typst) packages
and templates.

##  Usage

Just import the package at the beginning of your manual:

    
    
    #import "@preview/mantys:0.1.4": *
    

Mantys supports **Typst 0.11.0** and newer.

##  Writing basics

A basic template for a manual could look like this:

    
    
    #import "@local/mantys:0.1.4": *
    
    #import "your-package.typ"
    
    #show: mantys.with(
    	name:		"your-package-name",
    	title: 		[A title for the manual],
    	subtitle: 	[A subtitle for the manual],
    	info:		[A short descriptive text for the package.],
    	authors:	"Your Name",
    	url:		"https://github.com/repository/url",
    	version:	"0.0.1",
    	date:		"date-of-release",
    	abstract: 	[
    		A few paragraphs of text to describe the package.
    	],
    
    	example-imports: (your-package: your-package)
    )
    
    // end of preamble
    
    # About
    #lorem(50)
    
    # Usage
    #lorem(50)
    
    # Available commands
    #lorem(50)
    
    

Use ` #command(name, ..args)[description] ` to describe commands and `
#argument(name, ...)[description] ` for arguments:

    
    
    #command("headline", arg[color], arg(size:1.8em), sarg[other-args], barg[body])[
    	Renders a prominent headline using #doc("meta/heading").
    
    	#argument("color", type:"color")[
        The color of the headline will be used as the background of a #doc("layout/block") element containing the headline.
      ]
      #argument("size", default:1.8em)[
        The text size for the headline.
      ]
      #argument("sarg", is-sink:true)[
        Other options will get passed directly to #doc("meta/heading").
      ]
      #argument("body", type:"content")[
        The text for the headline.
      ]
    
      The headline is shown as a prominent colored block to highlight important news articles in the newsletter:
    
      #example[```
      #headline(blue, size: 2em, level: 3)[
        #lorem(8)
      ]
      ```]
    ]
    

The result might look something like this:

![Example for a headline command with
Mantys](https://github.com/typst/packages/raw/main/packages/preview/mantys/0.1.4/docs/assets/headline-
example.png)

For a full reference of available commands read [ the manual
](https://github.com/typst/packages/raw/main/packages/preview/mantys/0.1.4/docs/mantys-
manual.pdf) .

##  Changelog

###  Version 0.1.4

  * Fix missing links in outline (@tingerrr). 
  * Fixed problem when evaluating default values with Tidy. 

###  Version 0.1.3

  * Fix for some datatypes not being displayed properly (thanks to @tingerrr). 
  * Fix for imbalanced outline columns (thanks again to @tingerrr). 

###  Version 0.1.2

  * Added [ hydra ](https://typst.app/universe/package/hydra) for better detection of headings in page headers (thanks to @tingerrr for the suggestion). 
  * Fixed problem with multiple quotes around default string values in tidy docs. 
  * Fixed datatypes linking to wrong documentation urls. 

###  Version 0.1.1

  * Added template files for submission to _Typst Universe_ . 

###  Version 0.1.0

  * Refactorings and some style changes 
  * Updated manual. 
  * Restructuring of package repository. 

###  Version 0.0.4

  * Added integration with [ tidy ](https://github.com/Mc-Zen/tidy) . 
  * Fixed issue with types in argument boxes. 
  * ` #lambda ` now uses ` #dtype `

####  Breaking changes

  * Adapted ` scope ` argument for ` eval ` in examples. 
    * ` #example() ` , ` #side-by-side() ` and ` #shortex() ` now support the ` scope ` and ` mode ` argument. 
    * The option ` example-imports ` was replaced by ` examples-scope ` . 

###  Version 0.0.3

  * It is now possible to load a packagesâ ` typst.toml ` file directly into ` #mantys ` : 
    
        #show: mantys.with( ..toml("typst.toml") )
    

  * Added some dependencies: 
    * [ jneug/typst-tools4typst ](https://github.com/jneug/typst-tools4typst) for some common utilities, 
    * [ jneug/typst-codelst ](https://github.com/jneug/typst-codelst) for rendering examples and source code, 
    * [ Pablo-Gonzalez-Calderon/showybox-package ](https://github.com/Pablo-Gonzalez-Calderon/showybox-package) for adding frames to different areas of a manual (like examples). 
  * Redesign of some elements: 
    * Argument display in command descriptions, 
    * Alert boxes. 
  * Added ` #version(since:(), until:()) ` command to add version markers to commands. 
  * Styles moved to a separate ` theme.typ ` file to allow easy customization of colors and styles. 
  * Added ` #func() ` , ` #lambda() ` and ` #symbol() ` commands, to handle special cases for values. 
  * Fixes and code improvements. 

###  Version 0.0.2

  * Some major updates to the core commands and styles. 

###  Version 0.0.1

  * Initial release. 

[ Create project in app ](/app?template=mantys&version=0.1.4)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/mantys:0.1.4

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Jonas Neugebauer 
License:

     MIT 
Current version:

     0.1.4 
Last updated:

     May 23, 2024 
First released:

     March 21, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     19.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/mantys-0.1.4.tar.gz)
Repository:

     [ GitHub ](https://github.com/jneug/typst-mantys)
Categor  ies  :

    

  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  template  is a project of  Jonas Neugebauer  .  Report issues on  [
their repository ](https://github.com/jneug/typst-mantys) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.4  |  May 23, 2024   
[ 0.1.3 ](https://typst.app/universe/package/mantys/0.1.3/) |  April 29, 2024   
[ 0.1.1 ](https://typst.app/universe/package/mantys/0.1.1/) |  March 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

