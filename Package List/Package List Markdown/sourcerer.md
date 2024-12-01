#  sourcerer

0.2.1

Customizable and flexible source-code blocks

Sourcerer is a Typst package for displaying stylized source code blocks, with
some extra features. Main features include:

  * Rendering source code with numbering 
  * Rendering only a range of lines from the source code, keeping the original highlighting of the code (For example, block comments are still rendered well, even if cut) 
  * Adding in-code line labels which are easily referenceable (via ` reference ` ) 
  * Considerable customization options for the display of the code block 
  * Consistent and pretty cutoff between pages 
  * Displaying the language used for a code block in a readable manner, in-code-block 

First, import the package via:

    
    
    #import "@preview/sourcerer:0.2.1": code
    

Then, display custom code blocks via the ` code ` function, like so:

    
    
    #code(
      lang: "Typst",
      ```typ
      Woah, that's pretty #smallcaps(cool)!
      That's neat too.
      ```
    )
    

This results in:

![](https://github.com/typst/packages/raw/main/packages/preview/sourcerer/0.2.1/assets/sourcerer.png)

To view all of the options of the ` code ` function, consult the [
documentation
](https://github.com/typst/packages/raw/main/packages/preview/sourcerer/0.2.1/DOCS.md)
.

###  How to add

Copy this into your project and use the import as  ` sourcerer `

    
    
    #import "@preview/sourcerer:0.2.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Yoav Grimland ](mailto:miestrode@proton.me)
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     November 10, 2023 
First released:

     November 6, 2023 
Minimum Typst version:

     0.9.0 
Archive size:

     3.98 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/sourcerer-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/miestrode/sourcerer)

###  Where to report issues?

This  package  is a project of  Yoav Grimland  .  Report issues on  [ their
repository ](https://github.com/miestrode/sourcerer) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  November 10, 2023   
[ 0.2.0 ](https://typst.app/universe/package/sourcerer/0.2.0/) |  November 7, 2023   
[ 0.1.0 ](https://typst.app/universe/package/sourcerer/0.1.0/) |  November 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

