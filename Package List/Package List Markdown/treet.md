#  treet

0.1.1

Create tree lists easily

[ ![GitHub manifest version
\(path\)](https://img.shields.io/github/v/tag/8LWXpg/typst-treet)
](https://github.com/8LWXpg/typst-treet/tags) [ ![GitHub Repo
stars](https://img.shields.io/github/stars/8LWXpg/typst-treet?style=flat)
](https://github.com/8LWXpg/typst-treet) [
![GitHub](https://img.shields.io/github/license/8LWXpg/typst-treet)
](https://github.com/8LWXpg/typst-treet/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/treet)

Create tree list easily in Typst

contribution is welcomed!

##  Usage

    
    
    #import "@preview/treet:0.1.1": *
    
    #tree-list(
      marker:       content,
      last-marker:  content,
      indent:       content,
      empty-indent: content,
      marker-font:  string,
      content,
    )
    

###  Parameters

  * ` marker ` \- the marker of the tree list, default is ` [ââ ] `
  * ` last-marker ` \- the marker of the last item of the tree list, default is ` [ââ ] `
  * ` indent ` \- the indent after ` marker ` , default is ` [â#h(1em)] `
  * ` empty-indent ` \- the indent after ` last-marker ` , default is ` [#h(1.5em)] ` (same width as indent) 
  * ` marker-font ` \- the font of the marker, default is ` "Cascadia Code" `
  * ` content ` \- the content of the tree list, includes at least a list 

##  Demo

see [ demo.typ ](https://github.com/8LWXpg/typst-
treet/blob/master/test/demo.typ) [ demo.pdf ](https://github.com/8LWXpg/typst-
treet/blob/master/test/demo.pdf)

###  Default style

    
    
    #tree-list[
      - 1
        - 1.1
          - 1.1.1
        - 1.2
          - 1.2.1
          - 1.2.2
            - 1.2.2.1
      - 2
      - 3
        - 3.1
          - 3.1.1
        - 3.2
    ]
    

![1.png](https://raw.githubusercontent.com/8LWXpg/typst-
treet/master/img/1.png)

###  Custom style

    
    
    #text(red, tree-list(
      marker: text(blue)[âââ ],
      last-marker: text(aqua)[âââ ],
      indent: text(teal)[â#h(1.5em)],
      empty-indent: h(2em),
    )[
      - 1
        - 1.1
          - 1.1.1
        - 1.2
          - 1.2.1
          - 1.2.2
            - 1.2.2.1
      - 2
      - 3
        - 3.1
          - 3.1.1
        - 3.2
    ])
    

![2.png](https://raw.githubusercontent.com/8LWXpg/typst-
treet/master/img/2.png)

###  Using show rule

    
    
    #show list: tree-list
    #set text(font: "DejaVu Sans Mono")
    
    root_folder\
    - sub-folder
      - 1-1
        - 1.1.1 -
      - 1.2
        - 1.2.1
        - 1.2.2
    - 2
    

![3.png](https://raw.githubusercontent.com/8LWXpg/typst-
treet/master/img/3.png)

###  How to add

Copy this into your project and use the import as  ` treet `

    
    
    #import "@preview/treet:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     8LWXpg 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     April 15, 2024 
First released:

     January 8, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     2.41 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/treet-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/8LWXpg/typst-treet)
Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  8LWXpg  .  Report issues on  [ their
repository ](https://github.com/8LWXpg/typst-treet) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  April 15, 2024   
[ 0.1.0 ](https://typst.app/universe/package/treet/0.1.0/) |  January 8, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

