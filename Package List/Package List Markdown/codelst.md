#  codelst

2.0.2

A typst package to render sourcecode.

**codelst** is a [ Typst ](https://github.com/typst/typst) package for
rendering sourcecode with line numbers and some other additions.

##  Usage

Import the package from the typst preview repository:

    
    
    #import "@preview/codelst:2.0.2": sourcecode
    

After importing the package, simply wrap any fenced code block in a call to `
#sourcecode() ` :

    
    
    #import "@preview/codelst:2.0.2": sourcecode
    
    #sourcecode[```typ
    #show "ArtosFlow": name => box[
      #box(image(
        "logo.svg",
        height: 0.7em,
      ))
      #name
    ]
    
    This report is embedded in the
    ArtosFlow project. ArtosFlow is a
    project of the Artos Institute.
    ```]
    

##  Further documentation

See ` manual.pdf ` for a comprehensive manual of the package.

See ` example.typ ` for some quick usage examples.

##  Development

The documentation is created using [ Mantys ](https://github.com/jneug/typst-
mantys) , a Typst template for creating package documentation.

To compile the manual, Mantys needs to be available as a local package. Refer
to Mantysâ manual for instructions on how to do so.

##  Changelog

###  v2.0.1

This version makes ` codelst ` compatible to Typst 0.11.0. Version 2.0.1 now
requires Typst 0.11.0, since there are some breaking changes to the way
counters work.

Thanks to @kilpkonn for theses changes.

###  v2.0.0

Version 2 requires Typst 0.9.0 or newer. Rendering is now done using the new `
raw.line ` elements get consistent line numbers and syntax highlighting (even
if ` showrange ` is used). Rendering is now done in a ` #table ` .

  * Added ` theme ` and ` syntaxes ` options to overwrite passed in ` #raw ` values. 
  * Breaking: Renamed ` tab-indend ` to ` tab-size ` , to conform with the Typst option. 
  * Breaking: Removed ` continue-numbering ` option for now. (The feature failed in combination with label parsing and line highlights.) 
  * Breaking: Removed styling of line numbers via a ` show ` -rule. 

###  v1.0.0

  * Complete rewrite of code rendering. 
  * New options for ` #sourcecode() ` : 
    * ` lang ` : Overwrite code language setting. 
    * ` numbers-first ` : First line number to show. 
    * ` numbers-step ` : Only show every n-th number. 
    * ` frame ` : Set a frame (replaces ` <codelst> ` label.) 
    * Merged ` line-numbers ` and ` numbering ` options. 
  * Removed ` #numbers-style() ` function. 
    * ` numbers-style ` option now gets passed ` counter.display() ` . 
  * Removed ` <codelst> ` label. 
  * ` codelst-style ` only sets ` breakable ` for figures. 
  * New ` codelst ` function to setup a catchall show rules for ` raw ` text. 
  * ` label-regex: none ` disables labels parsing. 
  * Code improvements and refactorings. 

###  v0.0.5

  * Fixed insets for line highlights. 
  * Added ` numbers-width ` option to manually set width of line numbers column. 
    * This allows line numbers on margins by setting ` numbers-width ` to ` 0pt ` or a negative number like ` -1em ` . 

###  v0.0.4

  * Fixed issue with context unaware syntax highlighting. 

###  v0.0.3

  * Removed call to ` #read() ` from ` #sourcefile() ` . 
  * Added ` continue-numbering ` argument to ` #sourcecode() ` . 
  * Fixed problem with ` showrange ` having out of range line numbers. 

###  v0.0.2

  * Added a comprehensive manual. 
  * Fixed crash for missing ` lang ` attribute in ` raw ` element. 

###  v0.0.1

  * Initial version submitted to typst/packages. 

###  How to add

Copy this into your project and use the import as  ` codelst `

    
    
    #import "@preview/codelst:2.0.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Jonas Neugebauer 
License:

     MIT 
Current version:

     2.0.2 
Last updated:

     October 23, 2024 
First released:

     July 24, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     5.41 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/codelst-2.0.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jneug/typst-codelst)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Linguistics ](https://typst.app/universe/search/?discipline=linguistics)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Jonas Neugebauer  .  Report issues on  [ their
repository ](https://github.com/jneug/typst-codelst) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
2.0.2  |  October 23, 2024   
[ 2.0.1 ](https://typst.app/universe/package/codelst/2.0.1/) |  March 19, 2024   
[ 2.0.0 ](https://typst.app/universe/package/codelst/2.0.0/) |  November 16, 2023   
[ 1.0.0 ](https://typst.app/universe/package/codelst/1.0.0/) |  July 29, 2023   
[ 0.0.3 ](https://typst.app/universe/package/codelst/0.0.3/) |  July 24, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

