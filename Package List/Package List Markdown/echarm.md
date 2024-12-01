#  echarm

0.1.1

Run echarts in typst with the use of CtxJS.

A typst plugin to run echarts in typst with the use of CtxJS.

##  Examples

[ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/mixed_charts.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/mixed_charts.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/radar.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/radar.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/pie.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/pie.typ)  
---|---|---  
[ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/mixed_charts.typ) |  [ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/radar.typ) |  [ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/pie.typ)  
[ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/scatter.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/scatter.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/gauge.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/gauge.typ) |  [ ![](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/candlestick.png) ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/candlestick.typ)  
[ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/scatter.typ) |  [ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/gauge.typ) |  [ Source Code ](https://github.com/typst/packages/raw/main/packages/preview/echarm/0.1.1/examples/candlestick.typ)  
  
For more examples see:

[ https://echarts.apache.org/examples/en/index.html
](https://echarts.apache.org/examples/en/index.html)

For the complete documentation for the configuration of echarts, see:

[ https://echarts.apache.org/en/option.html
](https://echarts.apache.org/en/option.html)

##  Usage

    
    
    #import "@preview/echarm:0.1.1"
    
    // options are echart options
    #echarm.render(width: 100%, height: 100%, options: (:))
    

##  Infos

The version is not the same as the echart version, so that I can update
independently. Animations are not supported here!

You can find more information about CtxJS here:

[ https://typst.app/universe/package/ctxjs/
](https://typst.app/universe/package/ctxjs/)

##  Versions

Version  |  Echart-Version   
---|---  
0.1.0  |  5.5.1   
0.1.1  |  5.5.1  1   
  
1  new eval-later feature

###  How to add

Copy this into your project and use the import as  ` echarm `

    
    
    #import "@preview/echarm:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     lublak 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     November 29, 2024 
First released:

     September 15, 2024 
Archive size:

     888 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/echarm-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/lublak/typst-echarm-package)

###  Where to report issues?

This  package  is a project of  lublak  .  Report issues on  [ their
repository ](https://github.com/lublak/typst-echarm-package) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/echarm/0.1.0/) |  September 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

