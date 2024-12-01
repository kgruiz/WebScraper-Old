#  grayness

0.2.0

Simple image editing capabilities like converting to grayscale and cropping
via a WASM plugin.

A package providing simple image editing capabilities via a WASM plugin.

Available functionality includes converting images to grayscale, cropping and
flipping the images. Furthermore, this package supports adding transparency
and bluring (very slow) as well as handling additional raster image formats.

The package name is inspired by the blurry, gray images of Nessie, the [ Loch
Ness Monster ](https://en.wikipedia.org/wiki/Loch_Ness_Monster)

##  Usage

Due to the way typst currently interprets given paths, you have to read the
images yourself in the calling typst file. This raw imagedata can then be
passed to the grayness-package functions, like grayscale-image. These
functions also optionally accept all additional parameters of the original
typst image function like ` width ` or ` height ` :

    
    
    #import "@preview/grayness:0.2.0": grayscale-image
    
    #let data = read("Art.webp", encoding: none)
    #grayscale-image(data, width: 50%)
    

A detailed descriptions of all available functions is provided in the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/grayness/0.2.0/manual.pdf)
.

You can also use the built-in help functions provided by tidy:

    
    
    #import "@preview/grayness:0.2.0": *
    #help("flip-image-vertical")
    

The ` grayscale-image ` function also works with SVG images. To do so you must
specify the format as ` "svg" ` :

    
    
    #let data = read("example.svg", encoding: none)
    #grayscale-image(data, format: "svg")
    

##  Examples

Here are several functions applied to a WEBP image of [ Arturo Nieto Dorantes
](https://commons.wikimedia.org/wiki/File:Arturo_Nieto-Dorantes.webp) (CC-By-
SA 4.0): ![Example image
manipulations](https://github.com/typst/packages/raw/main/packages/preview/grayness/0.2.0/example.png)

###  How to add

Copy this into your project and use the import as  ` grayness `

    
    
    #import "@preview/grayness:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Nikolai Neff-Sarnow 
License:

     Apache-2.0 
Current version:

     0.2.0 
Last updated:

     October 10, 2024 
First released:

     April 13, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     682 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/grayness-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/nineff/grayness)
Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Nikolai Neff-Sarnow  .  Report issues on  [
their repository ](https://github.com/nineff/grayness) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 10, 2024   
[ 0.1.0 ](https://typst.app/universe/package/grayness/0.1.0/) |  April 13, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

