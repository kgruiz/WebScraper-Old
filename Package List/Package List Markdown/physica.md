#  physica

0.9.3

Math constructs for science and engineering: derivative, differential, vector
field, matrix, tensor, Dirac braket, hbar, transpose, conjugate, many
operators, and more.

Featured  Package

:green_book: The [ manual ](https://github.com/Leedehai/typst-
physics/blob/v0.9.3/physica-manual.pdf) .

![logo](https://github.com/Leedehai/typst-
physics/assets/18319900/ed86198a-8ddb-4473-aed3-8111d5ecde60)

[ ![CI](https://github.com/Leedehai/typst-
physics/actions/workflows/ci.yml/badge.svg)
](https://github.com/Leedehai/typst-physics/actions/workflows/ci.yml) [
![Latest release](https://img.shields.io/github/v/release/Leedehai/typst-
physics.svg?color=gold) ](https://github.com/Leedehai/typst-
physics/releases/latest "The latest release")

Available in the collection of [ Typst packages
](https://typst.app/docs/packages/) : ` #import "@preview/physica:0.9.3": * `

> physica _noun_ .
>
>   * Latin, study of nature
>

This [ Typst ](https://typst.app/) package provides handy typesetting
utilities for natural sciences, including:

  * Braces, 
  * Vectors and vector fields, 
  * Matrices, including Jacobian and Hessian, 
  * Smartly render ` ..^T ` as transpose and ` ..^+ ` as dagger (conjugate transpose), 
  * Dirac braket notations, 
  * Common math functions, 
  * Differentials and derivatives, including partial derivatives of mixed orders with automatic order summation, 
  * Familiar âh-barâ, tensor abstract index notations, isotopes, Taylor series term, 
  * Signal sequences i.e. digital timing diagrams. 

##  A quick look

See the [ manual ](https://github.com/Leedehai/typst-
physics/blob/v0.9.3/physica-manual.pdf) for more details and examples.

![demo-quick](https://github.com/Leedehai/typst-
physics/assets/18319900/4a9f40df-f753-4324-8114-c682d270e9c7)

A larger [ demo.typ ](https://github.com/Leedehai/typst-
physics/blob/master/demo.typ) :

![demo-larger](https://github.com/Leedehai/typst-
physics/assets/18319900/75b94ef8-cc98-434f-be5f-bfac1ef6aef9)

##  Using physica in your Typst document

###  With ` typst ` package management (recommended)

See [ https://github.com/typst/packages ](https://github.com/typst/packages) .
If you are using the Typstâs web app, packages listed there are readily
available; if you are using the Typst compiler locally, it downloads packages
on-demand and caches them on-disk, see [ here
](https://github.com/typst/packages#downloads) for details.

![effect](https://github.com/Leedehai/typst-
physics/assets/18319900/f2a3a2bd-3ef7-4383-ab92-9a71affb4e12)

    
    
    // Style 1
    #import "@preview/physica:0.9.3": *
    
    $ curl (grad f), tensor(T, -mu, +nu), pdv(f,x,y,[1,2]) $
    
    
    
    // Style 2
    #import "@preview/physica:0.9.3": curl, grad, tensor, pdv
    
    $ curl (grad f), tensor(T, -mu, +nu), pdv(f,x,y,[1,2]) $
    
    
    
    // Style 3
    #import "@preview/physica:0.9.3"
    
    $ physica.curl (physica.grad f), physica.tensor(T, -mu, +nu), physica.pdv(f,x,y,[1,2]) $
    

###  Without ` typst ` package management

Similar to examples above, but import with the undecorated file path like `
"physica.typ" ` .

##  Typst version

The version requirement for the compiler is in [ typst.toml
](https://github.com/typst/packages/raw/main/packages/preview/physica/0.9.3/typst.toml)
âs ` compiler ` field. If you are using an unsupported Typst version, the
compiler will throw an error. You may want to update your compiler with `
typst update ` , or choose an earlier version of the ` physica ` package.

Developed with compiler version:

    
    
    $ typst --version
    typst 0.10.0 (70ca0d25)
    

##  Manual

See the [ manual ](https://github.com/Leedehai/typst-
physics/blob/v0.9.3/physica-manual.pdf) for a more comprehensive coverage, a
PDF file generated directly with the [ Typst ](https://typst.app/) binary.

To regenerate the manual, use command

    
    
    typst watch physica-manual.typ
    

##  Contribution

  * Bug fixes are welcome! 

  * New features: welcome as well. If it is small, feel free to create a pull request. If it is large, the best first step is creating an issue and let us explore the design together. Some features might warrant a package on its own. 

  * Testing: currently testing is done by closely inspecting the generated [ manual ](https://github.com/Leedehai/typst-physics/blob/v0.9.3/physica-manual.pdf) . This does not scale well. I plan to add programmatic testing by comparing rendered pictures with golden images. 

##  Change log

[ changelog.md ](https://github.com/Leedehai/typst-
physics/blob/v0.9.3/changelog.md) .

##  License

  * Code: the [ MIT License ](https://github.com/typst/packages/raw/main/packages/preview/physica/0.9.3/LICENSE.txt) . 
  * Docs: the [ Creative Commons BY-ND 4.0 license ](https://creativecommons.org/licenses/by-nd/4.0/) . 

###  How to add

Copy this into your project and use the import as  ` physica `

    
    
    #import "@preview/physica:0.9.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Leedehai 
License:

     MIT 
Current version:

     0.9.3 
Last updated:

     April 2, 2024 
First released:

     September 8, 2023 
Minimum Typst version:

     0.10.0 
Archive size:

     11.1 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/physica-0.9.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/Leedehai/typst-physics)
Discipline  s  :

    

  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)
  * [ Economics ](https://typst.app/universe/search/?discipline=economics)
  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Geology ](https://typst.app/universe/search/?discipline=geology)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Leedehai  .  Report issues on  [ their
repository ](https://github.com/Leedehai/typst-physics) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.9.3  |  April 2, 2024   
[ 0.9.2 ](https://typst.app/universe/package/physica/0.9.2/) |  January 15, 2024   
[ 0.9.1 ](https://typst.app/universe/package/physica/0.9.1/) |  December 23, 2023   
[ 0.9.0 ](https://typst.app/universe/package/physica/0.9.0/) |  December 7, 2023   
[ 0.8.1 ](https://typst.app/universe/package/physica/0.8.1/) |  November 1, 2023   
[ 0.8.0 ](https://typst.app/universe/package/physica/0.8.0/) |  September 13, 2023   
[ 0.7.5 ](https://typst.app/universe/package/physica/0.7.5/) |  September 8, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

