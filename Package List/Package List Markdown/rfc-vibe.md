#  rfc-vibe

0.1.0

Bring RFC language into everyday docs

Bring that RFC lingo to your everyday documents.

A [ Typst ](https://typst.app/) package that makes it easy to use the exact
keywords, boilerplate, and definitions provided by BCP 14, RFC2119, and
RFC8174. See the end of this README for an example of the output.

In the future, this package may include other RFC-related patterns which are
applicable to a wide variety of everyday documents.

##  Usage

Import the package in your Typst document:

    
    
    #import "@preview/rfc-vibe:0.1.0": *
    

###  Keywords

Use the keywords according to these examples:

    
    
    #must              // renders as: MUST
    #must-not          // renders as: MUST NOT
    #required          // renders as: REQUIRED
    #shall             // renders as: SHALL
    #shall-not         // renders as: SHALL NOT
    #should            // renders as: SHOULD
    #should-not        // renders as: SHOULD NOT
    #recommended       // renders as: RECOMMENDED
    #not-recommended   // renders as: NOT RECOMMENDED
    #may               // renders as: MAY
    #optional          // renders as: OPTIONAL
    

For the rare situation when you want the keywords included in quotation marks,
use the ` -quoted ` versions:

    
    
    #must-quoted              // renders as: "MUST"
    #must-not-quoted          // renders as: "MUST NOT"
    #required-quoted          // renders as: "REQUIRED"
    #shall-quoted             // renders as: "SHALL"
    #shall-not-quoted         // renders as: "SHALL NOT"
    #should-quoted            // renders as: "SHOULD"
    #should-not-quoted        // renders as: "SHOULD NOT"
    #recommended-quoted       // renders as: "RECOMMENDED"
    #not-recommended-quoted   // renders as: "NOT RECOMMENDED"
    #may-quoted               // renders as: "MAY"
    #optional-quoted          // renders as: "OPTIONAL"
    

###  Boilerplate

According to RFC8174, _authors who follow these guidelines should incorporate
a specific phrase near the beginning of their document_ . Include this
boilerplate text with:

    
    
    #rfc-keyword-boilerplate
    

This will render as:

    
    
    The key words "MUST", "MUST NOT", "REQUIRED", "SHALL", "SHALL NOT", "SHOULD",
    "SHOULD NOT", "RECOMMENDED", "NOT RECOMMENDED", "MAY", and "OPTIONAL" in this
    document are to be interpreted as described in BCP 14 [RFC2119] [RFC8174] when,
    and only when, they appear in all capitals, as shown here.
    

###  Definitions

Although not required (and maybe discouraged), you can include definitions of
individual keywords in your document:

    
    
    #rfc-keyword-must-definition
    #rfc-keyword-must-not-definition
    #rfc-keyword-should-definition
    #rfc-keyword-should-not-definition
    #rfc-keyword-may-definition
    

Or include all keyword definitions at once with:

    
    
    #rfc-keyword-definitions
    

##  Example Output

![Example
output](https://github.com/typst/packages/raw/main/packages/preview/rfc-
vibe/0.1.0/thumbnail.png)

##  License

This project is licensed under the MIT License. See the [ LICENSE
](https://github.com/typst/packages/raw/main/packages/preview/rfc-
vibe/0.1.0/LICENSE) file for details.

###  How to add

Copy this into your project and use the import as  ` rfc-vibe `

    
    
    #import "@preview/rfc-vibe:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Stephen Waits ](mailto:steve@waits.net)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 28, 2024 
First released:

     November 28, 2024 
Archive size:

     3.35 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/rfc-vibe-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/swaits/typst-collection)
Categor  y  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Stephen Waits  .  Report issues on  [ their
repository ](https://github.com/swaits/typst-collection) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 28, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

