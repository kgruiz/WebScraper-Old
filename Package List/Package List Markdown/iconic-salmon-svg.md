#  iconic-salmon-svg

1.1.0

A Typst library for Social Media references with scalable vector graphics
icons.

The ` iconic-salmon-svg ` package is designed to help you create your
curriculum vitae (CV). It allows you to easily reference your social media
profiles with the typical icon of the service plus a link to your profile.  
The package name is a combination of the acronym _SociAL Media icONs_ and the
word _iconic_ because all these icons have an iconic design (and iconic also
contains the word _icon_ ).

##  Features

  * Support for popular social media, developer and career platforms 
  * Uniform design for all entries 
  * Based on publicly available SVG symbols 
  * Easy to use 
  * Allows the customization of the look (extra args are passed to [ ` text ` ](https://typst.app/docs/reference/text/text/) ) 

##  Usage

###  Using Typstâs package manager

You can install the library using the [ typst packages
](https://github.com/typst/packages) :

    
    
    #import "@preview/iconic-salmon-svg:1.0.0": *
    

###  Install manually

Put the ` iconic-salmon-svg.typ ` file in your project directory and import
it:

    
    
    #import "iconic-salmon-svg.typ": *
    

###  Minimal Example

    
    
    // #import "@preview/iconic-salmon-svg:1.0.0": github-info, gitlab-info
    #import "iconic-salmon-svg.typ": github-info, gitlab-info
    
    This project was created by #github-info("Bi0T1N"). You can also find me on #gitlab-info("GitLab", rgb("#811052"), url: "https://gitlab.com/Bi0T1N").
    

###  Examples

See the [ ` examples.typ `
](https://github.com/typst/packages/raw/main/packages/preview/iconic-salmon-
svg/1.1.0/examples/examples.typ) file for a complete example. The [ generated
PDF files
](https://github.com/typst/packages/raw/main/packages/preview/iconic-salmon-
svg/1.1.0/examples/) are also available for preview.

##  Contribution

Feel free to open an issue or a pull request if you find any problems or have
any suggestions.

##  License

This library is licensed under the MIT license. Feel free to use it in your
project.

##  Trademark Disclaimer

Product names, logos, brands and other trademarks referred to in this project
are the property of their respective trademark holders.  
These trademark holders are not affiliated with this Typst library, nor are
the authors officially endorsed by them, nor do the authors claim ownership of
these trademarks.

###  How to add

Copy this into your project and use the import as  ` iconic-salmon-svg `

    
    
    #import "@preview/iconic-salmon-svg:1.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Nico Neumann (Bi0T1N) 
License:

     MIT 
Current version:

     1.1.0 
Last updated:

     May 23, 2024 
First released:

     April 15, 2024 
Archive size:

     22.5 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/iconic-salmon-svg-1.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Bi0T1N/typst-iconic-salmon-svg)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Nico Neumann (Bi0T1N)  .  Report issues on  [
their repository ](https://github.com/Bi0T1N/typst-iconic-salmon-svg) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.1.0  |  May 23, 2024   
[ 1.0.0 ](https://typst.app/universe/package/iconic-salmon-svg/1.0.0/) |  April 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

