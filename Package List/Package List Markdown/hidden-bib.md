#  hidden-bib

0.1.1

Create hidden bibliographies or bibliographies with unmentioned (hidden)
citations.

[ GitHub Repository including Examples ](https://github.com/pklaschka/typst-
hidden-bib)

A Typst package to create hidden bibliographies or bibliographies with
unmentioned (hidden) citations.

##  Use Cases

###  Hidden Bibliographies

In some documents, such as a letter, you may want to cite a reference without
printing a bibliography.

This can easily be achieved by wrapping your ` bibliography(...) ` with the `
hidden-bibliography ` function after importing the ` hidden-bib ` package.

The code then looks like this:

    
    
    #import "@preview/hidden-bib:0.1.0": hidden-bibliography
    
    #lorem(20) @example1
    #lorem(40) @example2[p. 2]
    
    #hidden-bibliography(
      bibliography("/refs.yml")
    )
    

_Note that this automatically sets the` style ` option to ` "chicago-notes" `
unless you specify a different style. _

###  Hidden Citations

In some documents, it may be necessary to include items in your bibliography
which werenât explicitly cited at any specific point in your document.

The code then looks like this:

    
    
    #import "@preview/hidden-bib:0.1.0": hidden-cite
    
    #hidden-cite("example1")
    

###  Multiple Hidden Citations

If you want to include a large number of items in your bibliography without
having to use ` hidden-cite ` (to still get autocompletion in the web editor),
you can use the ` hidden-citations ` environment.

The code then looks like this:

    
    
    #import "@preview/hidden-bib:0.1.0": hidden-citations
    
    #hidden-citations[
      @example1
      @example2
    ]
    

##  FAQ

###  Why would I want to have hidden citations and a hidden bibliography?

You donât. While this package solves both (related) problems, you should
only use one of them at a time. Otherwise, youâll simply see nothing at all.

###  Why would I want to have hidden citations?

Thatâs for you to decide. It essentially enables you to include âuncited
referencesâ, similar to LaTeXâs ` \nocite{} ` command.

##  License

This package is licensed under the MIT license. See the [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/hidden-
bib/0.1.1/LICENSE) file for details.

###  How to add

Copy this into your project and use the import as  ` hidden-bib `

    
    
    #import "@preview/hidden-bib:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Zuri Klaschka 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     October 10, 2023 
First released:

     October 2, 2023 
Archive size:

     2.12 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/hidden-bib-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/pklaschka/typst-hidden-bib)

###  Where to report issues?

This  package  is a project of  Zuri Klaschka  .  Report issues on  [ their
repository ](https://github.com/pklaschka/typst-hidden-bib) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 10, 2023   
[ 0.1.0 ](https://typst.app/universe/package/hidden-bib/0.1.0/) |  October 2, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

