#  use-tabler-icons

0.4.0

Tabler Icons for Typst using webfont.

> **Note**
>
> This project is greatly inspired by and mainly edited based on [ typst-
> fontawesome ](https://github.com/duskmoon314/typst-fontawesome) .

##  ![use-tabler-
icons](https://github.com/typst/packages/raw/main/packages/preview/use-tabler-
icons/0.4.0/assets/splash.svg)

A Typst library for [ Tabler Icons ](https://github.com/tabler/tabler-icons) ,
a set of over 5700 free MIT-licensed high-quality SVG icons.

##  Usage

###  Install Font

Download [ latest release of tabler-icons ](https://github.com/tabler/tabler-
icons/releases) and install ` webfont/fonts/tabler-icons.ttf ` . Or, if you
are using Typst web app, simply upload the font file to your project.

###  Import the Library

####  Using the Typst Packages

You can install the library using the typst packages:

    
    
    #import "@preview/use-tabler-icons:0.4.0": *
    

####  Manually Install

Just copy all files under [ ` src ` ](https://github.com/zyf722/typst-tabler-
icons/tree/main/src) to your project and rename them to avoid naming
conflicts.

Then, import ` lib.typ ` to use the library:

    
    
    #import "lib.typ": *
    

###  Use the Icons

You can use the ` tabler-icon ` function to create an icon with its name:

    
    
    #tabler-icon("calendar")
    

Or you can directly use the ` ti- ` prefix :

    
    
    #ti-calendar()
    

As these icons are actually text with custom font, you can pass any text
attributes to the function:

    
    
    #tabler-icon("calendar", fill: blue)
    

Refer to [ ` gallery.pdf ` ](https://github.com/zyf722/typst-tabler-
icons/tree/main/gallery/gallery.pdf) and [ Tabler Icons website
](https://tabler.io/icons) for all available icons.

##  Contributing

[ Pull Requests ](https://github.com/zyf722/typst-tabler-icons/pulls) are
welcome!

It is strongly recommended to follow the [ Conventional Commits
](https://www.conventionalcommits.org/en/v1.0.0/) specification when writing
commit messages and creating pull requests.

###  Github Actions Workflow

This package uses a daily run [ Github Actions workflow
](https://github.com/zyf722/typst-tabler-
icons/tree/main/.github/workflows/build.yml) to keep the library up-to-date
with the latest version of Tabler Icons, which internally runs [ `
scripts/generate.mjs ` ](https://github.com/zyf722/typst-tabler-
icons/tree/main/scripts/generate.mjs) to generate Typst source code of the
library and gallery.

##  License

[ MIT ](https://github.com/zyf722/typst-tabler-icons/tree/main/LICENSE)

###  How to add

Copy this into your project and use the import as  ` use-tabler-icons `

    
    
    #import "@preview/use-tabler-icons:0.4.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ duskmoon (Campbell He) ](mailto:kp.campbell.he@duskmoon314.com) & [ MaxMixAlex ](mailto:MaxMixAlex@protonmail.com)
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     November 13, 2024 
First released:

     October 21, 2024 
Archive size:

     79.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/use-tabler-icons-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/zyf722/typst-tabler-icons)
Categor  y  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)

###  Where to report issues?

This  package  is a project of  duskmoon (Campbell He) and MaxMixAlex  .
Report issues on  [ their repository ](https://github.com/zyf722/typst-tabler-
icons) .  You can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  November 13, 2024   
[ 0.3.0 ](https://typst.app/universe/package/use-tabler-icons/0.3.0/) |  October 30, 2024   
[ 0.2.0 ](https://typst.app/universe/package/use-tabler-icons/0.2.0/) |  October 25, 2024   
[ 0.1.0 ](https://typst.app/universe/package/use-tabler-icons/0.1.0/) |  October 21, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

