#  cetz

0.3.1

Drawing with Typst made easy, providing an API inspired by TikZ and
Processing. Includes modules for plotting, charts and tree layout.

Featured  Package

CeTZ (CeTZ, ein Typst Zeichenpaket) is a library for drawing with [ Typst
](https://typst.app/) with an API inspired by TikZ and [ Processing
](https://processing.org/) .

##  Examples

[ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/karls-picture.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/karls-picture.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/tree.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/tree.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/waves.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz/0.3.1/gallery/waves.typ)  
---|---|---  
Karl's Picture  |  Tree Layout  |  Waves   
  
_Click on the example image to jump to the code._

##  Usage

For information, see the [ online manual ](https://cetz-
package.github.io/docs) .

To use this package, simply add the following code to your document:

    
    
    #import "@preview/cetz:0.3.1"
    
    #cetz.canvas({
      import cetz.draw: *
      // Your drawing code goes here
    })
    

##  CeTZ Libraries

  * [ cetz-plot - Plotting and Charts Library ](https://github.com/cetz-package/cetz-plot)
  * [ cetz-venn - Simple two- or three-set Venn diagrams ](https://github.com/cetz-package/cetz-venn)

##  Installing

To install the CeTZ package under [ your local typst package dir
](https://github.com/typst/packages?tab=readme-ov-file#local-packages) you can
use the ` install ` script from the repository.

    
    
    just install
    

The installed version can be imported by prefixing the package name with `
@local ` .

    
    
    #import "@local/cetz:0.3.1"
    
    #cetz.canvas({
      import cetz.draw: *
      // Your drawing code goes here
    })
    

###  Just

This project uses [ just ](https://github.com/casey/just) , a handy command
runner.

You can run all commands without having ` just ` installed, just have a look
into the ` justfile ` . To install ` just ` on your system, use your systems
package manager. On Windows, [ Cargo ](https://doc.rust-lang.org/cargo/) ( `
cargo install just ` ), [ Chocolatey ](https://chocolatey.org/) ( ` choco
install just ` ) and [ some other sources
](https://just.systems/man/en/chapter_4.html) can be used. You need to run it
from a ` sh ` compatible shell on Windows (e.g git-bash).

##  Testing

This package comes with some unit tests under the ` tests ` directory. To run
all tests you can run the ` just test ` target. You need to have [ ` typst-
test ` ](https://github.com/tingerrr/typst-test/) in your ` PATH ` : ` cargo
install typst-test --git https://github.com/tingerrr/typst-test ` .

##  Projects using CeTZ

  * [ cirCeTZ ](https://github.com/fenjalien/cirCeTZ) A port of [ circuitikz ](https://github.com/circuitikz/circuitikz) to Typst. 
  * [ conchord ](https://github.com/sitandr/conchord) Package for writing lyrics with chords that generates fretboard diagrams using CeTZ. 
  * [ finite ](https://github.com/jneug/typst-finite) Finite is a Typst package for rendering finite automata. 
  * [ fletcher ](https://github.com/Jollywatt/typst-fletcher) Package for drawing commutative diagrams and figures with arrows. 
  * [ riesketcher ](https://github.com/ThatOneCalculator/riesketcher) Package for drawing Riemann sums. 

###  How to add

Copy this into your project and use the import as  ` cetz `

    
    
    #import "@preview/cetz:0.3.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ Johannes Wolf ](https://github.com/johannes-wolf) & [ fenjalien ](https://github.com/fenjalien)
License:

     LGPL-3.0-or-later 
Current version:

     0.3.1 
Last updated:

     October 21, 2024 
First released:

     July 8, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     74.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cetz-0.3.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/cetz-package/cetz)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Johannes Wolf and fenjalien  .  Report issues
on  [ their repository ](https://github.com/cetz-package/cetz) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.1  |  October 21, 2024   
[ 0.3.0 ](https://typst.app/universe/package/cetz/0.3.0/) |  October 15, 2024   
[ 0.2.2 ](https://typst.app/universe/package/cetz/0.2.2/) |  March 18, 2024   
[ 0.2.1 ](https://typst.app/universe/package/cetz/0.2.1/) |  February 23, 2024   
[ 0.2.0 ](https://typst.app/universe/package/cetz/0.2.0/) |  January 16, 2024   
[ 0.1.2 ](https://typst.app/universe/package/cetz/0.1.2/) |  October 1, 2023   
[ 0.1.1 ](https://typst.app/universe/package/cetz/0.1.1/) |  September 11, 2023   
[ 0.1.0 ](https://typst.app/universe/package/cetz/0.1.0/) |  August 19, 2023   
[ 0.0.2 ](https://typst.app/universe/package/cetz/0.0.2/) |  July 31, 2023   
[ 0.0.1 ](https://typst.app/universe/package/cetz/0.0.1/) |  July 8, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

