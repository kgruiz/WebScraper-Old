#  crudo

0.1.1

Take slices from raw blocks

Crudo allows conveniently working with ` raw ` blocks in terms of individual
lines. It allows you to e.g.

  * filter lines by content 
  * filter lines by range (slicing) 
  * transform lines 
  * join multiple raw blocks 

While transforming the content, the original [ parameters
](https://typst.app/docs/reference/text/raw/#parameters) specified on the
given raw block will be preserved.

##  Getting Started

The full version of this example can be found in [ gallery/thumbnail.typ
](https://github.com/typst/packages/raw/main/packages/preview/crudo/0.1.1/gallery/thumbnail.typ)
.

    
    
    From
    
    #let preamble = ```typ
    #import "@preview/crudo:0.1.0"
    
    ```
    #preamble
    
    and
    
    #let example = ````typ
    #crudo.r2l(```c
    int main() {
      return 0;
    }
    ```)
    ````
    #example
    
    we get
    
    #let full-example = crudo.join(preamble, example)
    #full-example
    
    If you execute that, you get
    
    #eval(full-example.text, mode: "markup")
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/crudo/0.1.1/thumbnail.png)

##  Usage

See the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/crudo/0.1.1/docs/manual.pdf)
for details.

###  How to add

Copy this into your project and use the import as  ` crudo `

    
    
    #import "@preview/crudo:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Clemens Koza ](https://github.com/SillyFreak/)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     September 30, 2024 
First released:

     July 15, 2024 
Minimum Typst version:

     0.9.0 
Archive size:

     4.11 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/crudo-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/SillyFreak/typst-crudo)
Categor  ies  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Clemens Koza  .  Report issues on  [ their
repository ](https://github.com/SillyFreak/typst-crudo) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  September 30, 2024   
[ 0.1.0 ](https://typst.app/universe/package/crudo/0.1.0/) |  July 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

