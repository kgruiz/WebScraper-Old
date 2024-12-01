#  showybox

2.0.3

Colorful and customizable boxes for Typst

Featured  Package

**Showybox** is a Typst package for creating colorful and customizable boxes.

##  Usage

To use this library through the Typst package manager (for Typst 0.6.0 or
greater), write ` #import "@preview/showybox:2.0.2": showybox ` at the
beginning of your Typst file.

Once imported, you can create an empty showybox by using the function `
showybox() ` and giving a default body content inside the parenthesis or
outside them using squared brackets ` [] ` .

By default a ` showybox ` with these properties will be created:

  * No title 
  * No shadow 
  * Not breakable 
  * Black borders 
  * White background 
  * ` 5pt ` of border radius 
  * ` 1pt ` of border thickness 

    
    
    #import "@preview/showybox:2.0.3": showybox
    
    #showybox(
      [Hello world!]
    )
    

###  ![Hello world!
example](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/hello-
world.png)

Looks quite simple, but the âmagicâ starts when adding a title, color and
shadows. The following code creates two âuniqueâ boxes with defined colors
and custom borders:

    
    
    // First showybox
    #showybox(
      frame: (
        border-color: red.darken(50%),
        title-color: red.lighten(60%),
        body-color: red.lighten(80%)
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center
      ),
      shadow: (
        offset: 3pt,
      ),
      title: "Red-ish showybox with separated sections!",
      lorem(20),
      lorem(12)
    )
    
    // Second showybox
    #showybox(
      frame: (
        dash: "dashed",
        border-color: red.darken(40%)
      ),
      body-style: (
        align: center
      ),
      sep: (
        dash: "dashed"
      ),
      shadow: (
    	  offset: (x: 2pt, y: 3pt),
        color: yellow.lighten(70%)
      ),
      [This is an important message!],
      [Be careful outside. There are dangerous bananas!]
    )
    

###  ![Further
examples](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/two-
easy-examples.png)

##  Reference

The ` showybox() ` function can receive the following parameters:

  * ` title ` : A string used as the title of the showybox 
  * ` footer ` : A string used as the footer of the showybox 
  * ` frame ` : A dictionary containing the frameâs properties 
  * ` title-style ` : A dictionary containing the titleâs styles 
  * ` body-style ` : A dictionary containing the bodyâs styles 
  * ` footer-style ` : A dictionary containing the footerâs styles 
  * ` sep ` : A dictionary containing the separatorâs properties 
  * ` shadow ` : A dictionary containing the shadowâs properties 
  * ` width ` : A relative length indicating the showyboxâs width 
  * ` align ` : An unidimensional alignement for the showybox in the page 
  * ` breakable ` : A boolean indicating whether a showybox can break if it reached an end of page 
  * ` spacing ` : Space above and below the showybox 
  * ` above ` : Space above the showybox 
  * ` below ` : Space below the showybox 
  * ` body ` : The content of the showybox 

###  Frame properties

  * ` title-color ` : Color used as background color where the title goes (default is ` black ` ) 
  * ` body-color ` : Color used as background color where the body goes (default is ` white ` ) 
  * ` footer-color ` : Color used as background color where the footer goes (default is ` luma(85) ` ) 
  * ` border-color ` : Color used for the showyboxâs border (default is ` black ` ) 
  * ` inset ` : Inset used for title, body and footer elements (default is ` (x: 1em, y: 0.65em) ` ) if none of the followings are given: 
    * ` title-inset ` : Inset used for the title 
    * ` body-inset ` : Inset used for the body 
    * ` footer-inset ` : Inset used for the body 
  * ` radius ` : Showyboxâs radius (default is ` 5pt ` ) 
  * ` thickness ` : Border thickness of the showybox (default is ` 1pt ` ) 
  * ` dash ` : Showyboxâs border style (default is ` solid ` ) 

###  Title styles

  * ` color ` : Text color (default is ` white ` ) 
  * ` weight ` : Text weight (default is ` bold ` ) 
  * ` align ` : Text align (default is ` left ` ) 
  * ` sep-thickness ` : Thickness of the separator between title and body (default is ` 1pt ` ) 
  * ` boxed-style ` : If itâs a dictionary of properties, indicates that the title must appear like a âfloating boxâ above the showybox. If itâs ` none ` , the title appears normally (default is ` none ` ) 

####  Boxed styles

  * ` anchor ` : Anchor of the boxed title 
    * ` y ` : Vertical anchor ( ` top ` , ` horizon ` or ` bottom ` â default is ` horizon ` ) 
    * ` x ` : Horizontal anchor ( ` left ` , ` start ` , ` center ` , ` right ` , ` end ` â default is ` left ` ) 
  * ` offset ` : How much to offset the boxed title in x and y direction as a dictionary with keys ` x ` and ` y ` (default is ` 0pt ` ) 
  * ` radius ` : Boxed title radius as a dictionary or relative length (default is ` 5pt ` ) 

###  Body styles

  * ` color ` : Text color (default is ` black ` ) 
  * ` align ` : Text align (default is ` left ` ) 

###  Footer styles

  * ` color ` : Text color (default is ` luma(85) ` ) 
  * ` weight ` : Text weight (default is ` regular ` ) 
  * ` align ` : Text align (default is ` left ` ) 
  * ` sep-thickness ` : Thickness of the separator between body and footer (default is ` 1pt ` ) 

###  Separator properties

  * ` thickness ` : Separatorâs thickness (default is ` 1pt ` ) 
  * ` dash ` : Separatorâs style (as a ` line ` dash style, default is ` "solid" ` ) 
  * ` gutter ` : Separatorâs space above and below (defalut is ` 0.65em ` ) 

###  Shadow properties

  * ` color ` : Shadow color (default is ` black ` ) 
  * ` offset ` : How much to offset the shadow in x and y direction either as a length or a dictionary with keys ` x ` and ` y ` (default is ` 4pt ` ) 

##  Gallery

###  Colors for title, body and footer example (Stokesâ theorem)

###
![Encapsulation](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/stokes-
example.png)

###  Boxed-title example (Clairautâs theorem)

###
![Encapsulation](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/clairaut-
example.png)

###  Encapsulation example

###
![Encapsulation](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/encapsulation-
example.png)

###  Breakable showybox example (Newtonâs second law)

###  ![Enabling
breakable](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/newton-
example.png)

###  Custom radius and titleâs separator thickness example (Carnotâs cycle
efficency)

###  ![Custom
radius](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/carnot-
example.png)

###  Custom border dash and inset example (Gaussâs law)

###  ![Custom
radius](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/gauss-
example.png)

###  Custom footerâs separator thickness example (Divergenceâs theorem)

###  ![Custom
radius](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/divergence-
example.png)

###  Colorful shadow example (Coulombâs law)

###  ![Custom
radius](https://github.com/typst/packages/raw/main/packages/preview/showybox/2.0.3/assets/coulomb-
example.png)

##  Changelog

###  Version 2.0.3

  * Revert fix breakable box empty before new page. Layout didnât converge 

###  Version 2.0.2

  * Remove deprecated functions in Typst 0.12.0 
  * Fix breakable box empty before new page 

###  Version 2.0.1

  * Fix bad behaviours of boxed-titles ` anchor ` inside a ` figure `
  * Fix wrong ` breakable ` behaviour of showyboxes inside a ` figure `
  * Fix Manual and READMEâs Stokes theorem example 

###  Version 2.0.0

_Special thanks to Andrew Voynov ([ https://github.com/Andrew15-5
](https://github.com/Andrew15-5) ) for the feedback while creating the new
behaviours for boxed-titles _

  * Update ` type() ` conditionals to Typst 0.8.0 standards 
  * Add ` boxed-style ` property, with ` anchor ` , ` offset ` and ` radius ` properties. 
  * Refactor ` showy-inset() ` for being general-purpose. Now itâs called ` showy-value-in-direction() ` and has a default value for handling properties defaults 
  * Now sharp corners can be set by giving a dictionary to frame ` radius ` (e.g. ` radius: (top: 5pt, bottom: 0pt) ` ). Before this only was possible for untitled showyboxes. 
  * Refactor shadow functions to be in a separated file. 
  * Fix bug of bad behaviour while writing too long titles. 
  * Fix bug while rendering separators with custom thickness. Now the thickness is gotten properly. 
  * Fix bad shadow drawing in showyboxes with a boxed-title that has a âextremeâ ` offset ` value. 
  * Fix bad sizing while creating showyboxes with a ` width ` of less than ` 100% ` , and a shadow. 

###  Version 1.1.0

  * Added ` boxed ` option in title styles 
  * Added ` boxed-align ` in title styles 
  * Added ` sep-thickness ` for title and footer 
  * Refactored repositoryâs files layout 

###  Version 1.0.0

  * Fixed shadow displacement 
    * **Details:** Instead of displacing the showyboxâs body from the shadow, now the shadow is displaced from the body. 

_Changes below were performed by Jonas Neugebauer ([ https://github.com/jneug
](https://github.com/jneug) ) _

  * Added ` title-inset ` , ` body-inset ` , ` footer-inset ` and ` inset ` options 
    * **Details:** ` title-inset ` , ` body-inset ` and ` footer-inset ` will set the inset of the title, body and footer area respectively. ` inset ` is a fallback for those areas. 
  * Added a ` sep.gutter ` option to set the spacing around separator lines 
  * Added option ` width ` to set the width of a showybox 
  * Added option ` align ` to move a showybox with ` width ` < 100% along the x-axis 
    * **Details:** A showybox is now wrapped in another block to allow alignment. This also makes it possible to pass the spacing options ` spacing ` , ` above ` and ` below ` to ` #showybox() ` . 
  * Added ` footer ` and ` footer-style ` options 
    * **Details:** The optional footer is added at the bottom of the box. 

###  Version 0.2.1

_All changes listed here were performed by Jonas Neugebauer ([
https://github.com/jneug ](https://github.com/jneug) ) _

  * Added the ` shadow ` option 
  * Enabled auto-break ( ` breakable ` ) functionality for titled showyboxes 
  * Removed a thin line that appears in showyboxes with no borders or dashed borders 

###  Version 0.2.0

  * Improved code documentation 
  * Enabled an auto-break functionality for non-titled showyboxes 
  * Created a separator functionality to separate content inside a showybox with a horizontal line 

###  Version 0.1.1

  * Changed package name from colorbox to showybox 
  * Fixed a spacing bug in encapsulated showyboxes 
    * **Details:** When a showybox was encapsulated inside another, the spacing after that showybox was ` 0pt ` , probably due to some âfixesâ improved to manage default spacing between ` rect ` elements. The issue was solved by avoiding ` #set ` statements and adding a ` #v(-1.1em) ` to correct extra spacing between the title ` rect ` and the body ` rect ` . 

###  Version 0.1.0

  * Initial release 

###  How to add

Copy this into your project and use the import as  ` showybox `

    
    
    #import "@preview/showybox:2.0.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     Pablo GonzÃ¡lez CalderÃ³n  & Showybox Contributors 
License:

     MIT 
Current version:

     2.0.3 
Last updated:

     October 24, 2024 
First released:

     July 3, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     9.41 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/showybox-2.0.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/Pablo-Gonzalez-Calderon/showybox-package)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  Pablo GonzÃ¡lez CalderÃ³n and Showybox
Contributors  .  Report issues on  [ their repository
](https://github.com/Pablo-Gonzalez-Calderon/showybox-package) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
2.0.3  |  October 24, 2024   
[ 2.0.2 ](https://typst.app/universe/package/showybox/2.0.2/) |  October 21, 2024   
[ 2.0.1 ](https://typst.app/universe/package/showybox/2.0.1/) |  October 4, 2023   
[ 2.0.0 ](https://typst.app/universe/package/showybox/2.0.0/) |  October 1, 2023   
[ 1.1.0 ](https://typst.app/universe/package/showybox/1.1.0/) |  August 3, 2023   
[ 1.0.0 ](https://typst.app/universe/package/showybox/1.0.0/) |  July 31, 2023   
[ 0.2.1 ](https://typst.app/universe/package/showybox/0.2.1/) |  July 31, 2023   
[ 0.2.0 ](https://typst.app/universe/package/showybox/0.2.0/) |  July 10, 2023   
[ 0.1.1 ](https://typst.app/universe/package/showybox/0.1.1/) |  July 3, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

