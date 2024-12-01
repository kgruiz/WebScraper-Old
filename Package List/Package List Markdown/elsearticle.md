![A preview of the elsearticle Typst
template.](https://packages.typst.org/preview/thumbnails/elsearticle-0.4.0-small.webp)

#  elsearticle

0.4.0

Conversion of the LaTeX elsearticle.cls

Featured  Template

[ Create project in app ](/app?template=elsearticle&version=0.4.0)

[ ![Generic
badge](https://img.shields.io/badge/Version-0.4.0-cornflowerblue.svg)
](https://github.com/typst/packages/raw/main/packages/preview/elsearticle/0.4.0/)
[ ![MIT License](https://img.shields.io/badge/License-MIT-forestgreen)
](https://github.com/maucejo/elsearticle/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/doc-.pdf-mediumpurple)
](https://github.com/maucejo/elsearticle/blob/main/docs/manual.pdf)

` elsearticle ` is a Typst template that aims to mimic the Elsevier article
LaTeX class, a.k.a. ` elsearticle.cls ` , provided by Elsevier to format
manuscript properly for submission to their journals.

##  Basic usage

This section provides the minimal amount of information to get started with
the template. For more detailed information, see the [ manual
](https://github.com/maucejo/elsearticle/blob/main/docs/manual.pdf) .

To use the ` elsearticle ` template, you need to include the following line at
the beginning of your ` typ ` file:

    
    
    #import "@preview/elsearticle:0.4.0": *
    

###  Initializing the template

After importing ` elsearticle ` , you have to initialize the template by a
show rule with the ` #elsearticle() ` command. This function takes an optional
argument to specify the title of the document.

  * ` title ` : Title of the paper 
  * ` author ` : List of the authors of the paper 
  * ` abstract ` : Abstract of the paper 
  * ` journal ` : Name of the journal 
  * ` keywords ` : List of keywords of the paper 
  * ` format ` : Format of the paper. Possible values are ` preprint ` , ` review ` , ` 1p ` , ` 3p ` , ` 5p `
  * ` numcol ` : Number of columns of the paper. Possible values are 1 and 2 
  * ` line-numbering ` : Enable line numbering. Possible values are ` true ` and ` false `

##  Additional features

The ` elsearticle ` template provides additional features to help you format
your document properly.

###  Appendix

To activate the appendix environment, all you have to do is to place the
following command in your document:

    
    
    #show: appendix
    
    // Appendix content here
    

###  Subfigures

Subfigures are not built-in features of Typst, but the ` elsearticle `
template provides a way to handle them. It is based on the ` subpar ` package
that allows you to create subfigures and properly reference them.

    
    
      #subfigure(
        figure(image("image1.png"), caption: []), <figa>,
        figure(image("image2.png"), caption: []), <figb>,
        columns: (1fr, 1fr),
        caption: [(a) Left image and (b) Right image],
        label: <fig>
      )
    

###  Equations

The ` elsearticle ` template provides the ` #nonumeq() ` function to create
unnmbered equations. The latter function can be used as follows:

    
    
    #nonumeq[$
      y = f(x)
      $
    ]
    

##  Roadmap

_Article format_

  * [x] Preprint 
  * [x] Review 
  * [x] 1p 
  * [x] 3p 
  * [x] 5p 

_Environment_

  * [x] Implementation of the ` appendix ` environment 

_Figures and tables_

  * [x] Implementation of the ` subfigure ` environment 

_Equations_

  * [x] Proper referencing of equations w.r.t. the context 
  * [x] Use of the ` equate ` package to number each equation of a system as â(1a)â 

_Other features_

  * [x] Line numbering - Line numbering - Use the built-in ` par.line ` function available from Typst v0.12 

##  License

MIT licensed

Copyright Â© 2024 Mathieu AUCEJO (maucejo)

[ Create project in app ](/app?template=elsearticle&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/elsearticle:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Mathieu Aucejo 
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     November 18, 2024 
First released:

     July 22, 2024 
Archive size:

     95.5 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/elsearticle-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/maucejo/elsearticle)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Mathieu Aucejo  .  Report issues on  [ their
repository ](https://github.com/maucejo/elsearticle) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  November 18, 2024   
[ 0.3.0 ](https://typst.app/universe/package/elsearticle/0.3.0/) |  October 21, 2024   
[ 0.2.1 ](https://typst.app/universe/package/elsearticle/0.2.1/) |  September 27, 2024   
[ 0.2.0 ](https://typst.app/universe/package/elsearticle/0.2.0/) |  August 1, 2024   
[ 0.1.0 ](https://typst.app/universe/package/elsearticle/0.1.0/) |  July 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

