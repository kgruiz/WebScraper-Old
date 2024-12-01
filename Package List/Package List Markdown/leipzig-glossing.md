#  leipzig-glossing

0.4.0

Linguistic interlinear glosses according to the Leipzig Glossing rules

` leipzig-glossing ` is a [ Typst ](https://github.com/typst/typst) library
for creating interlinear morpheme-by-morpheme glosses according to the [
Leipzig glossing rules ](https://www.eva.mpg.de/lingua/pdf/Glossing-Rules.pdf)
.

Run ` typst compile documentation.typ ` in the root of the repository to
generate a pdf file with examples and documentation. This command is also
codified in the accompanying [ justfile ](https://github.com/casey/just) as `
just build-doc ` .

The definitions intended for use by end users are the ` gloss ` and `
numbered-gloss ` functions, and the ` abbreviations ` submodule.

##  Repositories

The canonical repository for this project is on the [ Gitea instance
](https://code.everydayimshuflin.com/greg/typst-lepizig-glossing) .

There is also a [ Github mirror ](https://github.com/neunenak/typst-leipzig-
glossing/) , and a [ Radicle ](https://radicle.xyz/) mirror available at
rad://z2j7vQLS3EtQbPkrzi7Tn2XR7YWLw  .

Bug reports and code contributions are welcome from all users.

##  License

This library uses the MIT license; see ` LICENSE.txt ` .

##  Contributors

Thanks to [ Bethany E. Toma ](https://github.com/betoma) for a number of
suggestions and improvements.

Thanks to [ Maja Abramski-Kronenberg ](https://github.com/rwmpelstilzchen) for
the labeling functionality.

###  How to add

Copy this into your project and use the import as  ` leipzig-glossing `

    
    
    #import "@preview/leipzig-glossing:0.4.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ Greg Shuflin ](mailto:greg@everydayimshuflin.com) & Other open-source contributors 
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     November 12, 2024 
First released:

     July 6, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     5.26 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/leipzig-glossing-0.4.0.tar.gz)
Repository:

     [ code.everydayimshuflin.com ](https://code.everydayimshuflin.com/greg/typst-lepizig-glossing)
Discipline  :

    

  * [ Linguistics ](https://typst.app/universe/search/?discipline=linguistics)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  package  is a project of  Greg Shuflin and Other open-source
contributors  .  Report issues on  [ their repository
](https://code.everydayimshuflin.com/greg/typst-lepizig-glossing) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  November 12, 2024   
[ 0.3.0 ](https://typst.app/universe/package/leipzig-glossing/0.3.0/) |  August 21, 2024   
[ 0.2.0 ](https://typst.app/universe/package/leipzig-glossing/0.2.0/) |  October 4, 2023   
[ 0.1.0 ](https://typst.app/universe/package/leipzig-glossing/0.1.0/) |  July 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

