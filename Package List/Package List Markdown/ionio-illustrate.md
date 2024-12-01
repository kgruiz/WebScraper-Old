#  ionio-illustrate

0.2.0

Mass spectra with annotations for typst.

[ ![GitHub](https://img.shields.io/github/license/jamesxx/ionio-illustrate)
](https://github.com/jamesxx/ionio-illustrate/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/ionio-
illustrate) [ ![GitHub tag \(with
filter\)](https://img.shields.io/github/v/tag/jamesxx/ionio-illustrate)
](https://github.com/JamesxX/ionio-illustrate/tags)

This package implements a Cetz chart-like object for displying mass
spectrometric data in Typst documents. It allows for individually styled mass
peaks, callouts, titles, and mass callipers.  

[ **Explore the docs Â»** ](https://github.com/jamesxx/ionio-
illustrate/blob/main/manual.pdf)  
  
[ Report Bug ](https://github.com/jamesxx/ionio-illustrate/issues) Â· [
Request Feature ](https://github.com/jamesxx/ionio-illustrate/issues)

##  Getting Started

To make use of the ` ionio-illustrate ` package, youâll need to add it to
your project like shown below. Make sure you are importing a version that
supports your end goal.

    
    
    #import "@preview/ionio-illustrate:0.2.0": *
    

Then, load in your mass spectrum data and pass it through to the package like
so. Data should be 2D array, and by default the mass-charge ratio is in the
first column, and the relative intensities are in the second column.

    
    
    #let data = csv("isobutelene_epoxide.csv")
    
    #let ms = mass-spectrum(massspec, args: (
      size: (12,6),
      range: (0,100),
    )) 
    
    #figure((ms.display)())
    

![](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/gallery/isobulelene_epoxide.typ.png)

There are many ways to further enhance your spectrum, please check out the
manual to find out how.

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/#readme-top) )

##  Roadmap

  * [x] Pass style options through to the plot (tracker: #1) 
  * [ ] Better placement of text depending on plot size 
  * [ ] Improve default step on axes 
  * [ ] Add support for callouts that are not immediately above their assigned peak 
    * [ ] Automatically detect when two annotations are too close, and display accordingly 
  * [ ] Move to new Typst type system (waiting on upstream) 
  * [ ] Add in function for displaying skeletal structure of chemical 
  * [ ] Optional second axis for absolute intensity 
  * [ ] Add additional display functions 
    * [ ] Figure out function signature for multiple data sets 
    * [ ] Overlayed and shifted 
    * [ ] Horizontal reflection 
      * [ ] How to update existing extras? 

See the [ open issues ](https://github.com/jamesxx/ionio-illustrate/issues)
for a full list of proposed features (and known issues).

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/#readme-top) )

##  Contributing

Contributions are what make the open source community such an amazing place to
learn, inspire, and create. Any contributions you make are **greatly
appreciated** .

If you have a suggestion that would make this better, please fork the repo and
create a pull request. You can also simply open an issue with the tag
âenhancementâ. Donât forget to give the project a star! Thanks again!

  1. Fork the Project 
  2. Create your Feature Branch ( ` git checkout -b feature/AmazingFeature ` ) 
  3. Commit your Changes ( ` git commit -m 'Add some AmazingFeature' ` ) 
  4. Push to the Branch ( ` git push origin feature/AmazingFeature ` ) 
  5. Open a Pull Request 

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/#readme-top) )

##  License

Distributed under the MIT License. See [ ` LICENSE `
](https://github.com/jamesxx/ionio-illustrate/blob/master/LICENSE) for more
information.

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/#readme-top) )

##  Gallery

![](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/gallery/linalool.typ.png)

( [ back to top
](https://github.com/typst/packages/raw/main/packages/preview/ionio-
illustrate/0.2.0/#readme-top) )

###  How to add

Copy this into your project and use the import as  ` ionio-illustrate `

    
    
    #import "@preview/ionio-illustrate:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     James (Fuzzy) Swift 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     October 22, 2023 
First released:

     October 21, 2023 
Archive size:

     5.76 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ionio-illustrate-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JamesxX/ionio-illustrate)

###  Where to report issues?

This  package  is a project of  James (Fuzzy) Swift  .  Report issues on  [
their repository ](https://github.com/JamesxX/ionio-illustrate) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 22, 2023   
[ 0.1.0 ](https://typst.app/universe/package/ionio-illustrate/0.1.0/) |  October 21, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

