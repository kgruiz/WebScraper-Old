#  cetz-plot

0.1.0

Plotting module for CeTZ.

CeTZ-Plot is a library that adds plots and charts to [ CeTZ
](https://github.com/cetz-package/cetz) , a library for drawing with [ Typst
](https://typst.app/) .

CeTZ-Plot requires CeTZ version â¥ 0.3.1!

##  Examples

[ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/line.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/line.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/piechart.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/piechart.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/barchart.png) ](https://github.com/typst/packages/raw/main/packages/preview/cetz-plot/0.1.0/gallery/barchart.typ)  
---|---|---  
Plot  |  Pie Chart  |  Clustered Barchart   
  
_Click on the example image to jump to the code._

##  Usage

For information, see the [ manual (stable) ](https://github.com/cetz-
package/cetz-plot/blob/stable/manual.pdf?raw=true) .

To use this package, simply add the following code to your document:

    
    
    #import "@preview/cetz:0.3.1"
    #import "@preview/cetz-plot:0.1.0": plot, chart
    
    #cetz.canvas({
      // Your plot/chart code goes here
    })
    

##  Installing

To install the CeTZ-Plot package under [ your local typst package dir
](https://github.com/typst/packages?tab=readme-ov-file#local-packages) you can
use the ` install ` script from the repository.

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

###  How to add

Copy this into your project and use the import as  ` cetz-plot `

    
    
    #import "@preview/cetz-plot:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ Johannes Wolf ](https://github.com/johannes-wolf) & [ fenjalien ](https://github.com/fenjalien)
License:

     LGPL-3.0-or-later 
Current version:

     0.1.0 
Last updated:

     October 21, 2024 
First released:

     October 21, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     43.9 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cetz-plot-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/cetz-package/cetz-plot)
Categor  y  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)

###  Where to report issues?

This  package  is a project of  Johannes Wolf and fenjalien  .  Report issues
on  [ their repository ](https://github.com/cetz-package/cetz-plot) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 21, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

