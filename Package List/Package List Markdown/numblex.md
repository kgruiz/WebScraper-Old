#  numblex

0.2.0

Numbering helper.

How to number the heading like this?

  * Appendix A. XXXX 
    * A.1. YYY 
    * A.2. ZZZ 

Or this?

  * ä¸ãè¯é¢ 
    * 1\. è®ºç¹ 
      * (1) è¯æ® 

You might use a function:

    
    
    #set heading(numbering: (..nums) => {
      if nums.pos().len() == 1 {
        return "Appendix " + numbering("A.", ..nums)
      }
      return numbering("A.1.", ..nums)
    }
    

Or set up a couple of ` set ` rules:

    
    
    #set heading(numbering: "A.1.")
    #show heading.where(level: 1): set heading(numbering: (n) => "Appendix " + numbering("A.", n))
    // No, you can't use "Appendix A." since Typst would treat the first "A" as a numbering
    

Or simply use Numblex:

    
    
    #import "@preview/numblex:0.2.0": numblex
    
    #set heading(numbering: numblex("{Appendix [A].:d==1;[A].}{[1].}"))
    

##  Usage

    
    
    #import "@preview/numblex:0.2.0": numblex
    
    #set heading(numbering: numblex("{Section [A].:d==1;[A].}{[1].}{[1])}"))
    
    

You can read the [ Manual
](https://github.com/ParaN3xus/numblex/blob/main/manual.pdf) for more
information.

###  How to add

Copy this into your project and use the import as  ` numblex `

    
    
    #import "@preview/numblex:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ ParaN3xus ](https://github.com/ParaN3xus) & [ sjfhsjfh ](https://github.com/sjfhsjfh)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     June 24, 2024 
First released:

     May 3, 2024 
Archive size:

     217 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/numblex-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ParaN3xus/numblex)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  ParaN3xus and sjfhsjfh  .  Report issues on  [
their repository ](https://github.com/ParaN3xus/numblex) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  June 24, 2024   
[ 0.1.1 ](https://typst.app/universe/package/numblex/0.1.1/) |  May 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/numblex/0.1.0/) |  May 3, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

