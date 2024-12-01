![A preview of the chemicoms-paper Typst
template.](https://packages.typst.org/preview/thumbnails/chemicoms-
paper-0.1.0-small.webp)

#  chemicoms-paper

0.1.0

An RSC-style paper template to publish at conferences and journals

[ Create project in app ](/app?template=chemicoms-paper&version=0.1.0)

This is a Typst template for a two-column paper in a style similar to that of
the Royal Society of Chemistry.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for the ` chimicoms-paper ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/chemicoms-paper
    

##  Configuration

This template exports the ` template ` function with the following named
arguments:

  * ` title ` (optional, content) 
  * ` subtitle ` (optional, content) 
  * ` short-title ` (optional, string) 
  * ` author(s) ` (optional, (array or singular) dictionary or string) 
    * ` name ` (required, string, inferred) 
    * ` url ` (optional, string) 
    * ` phone ` (optional, string) 
    * ` fax ` (optional, string) 
    * ` orcid ` (optional, string) 
    * ` note ` (optional, string) 
    * ` email ` (optional, string) 
    * ` corresponding ` (optional, boolean, default true if email set) 
    * ` equal-contributor ` (optional, boolean) 
    * ` deceased ` (optional, boolean) 
    * ` roles ` (optional, (array or singular) string) 
    * ` affiliation(s) ` (optional, (array or singular) dictionary or strng) 
      * either: (string) or (number) 
  * ` abstract(s) ` (optional, (array or singular) dictionary or content) 
    * ` title ` (default: âAbstractâ) 
    * ` content ` (required, content, inferred) 
  * ` open-access ` (optional, boolean) 
  * ` venue ` (optional, content) 
  * ` doi ` (optional, string) 
  * ` keywords ` (optional, array of strings) 
  * ` dates ` (optional, (array or singular) dictionary or date) 
    * ` type ` (optional, content) 
    * ` date ` (required, date or string, inferred) 

The functions also accepts a single, positional argument for the body of the
paper.

##  Media

![Light](https://github.com/typst/packages/raw/main/packages/preview/chemicoms-
paper/0.1.0/thumbnails/1.png)
![Dark](https://github.com/typst/packages/raw/main/packages/preview/chemicoms-
paper/0.1.0/thumbnails/2.png)

[ Create project in app ](/app?template=chemicoms-paper&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/chemicoms-paper:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     James R. Swift 
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     June 21, 2024 
First released:

     June 21, 2024 
Archive size:

     70.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/chemicoms-paper-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JamesxX/chemicoms-paper)
Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  James R. Swift  .  Report issues on  [ their
repository ](https://github.com/JamesxX/chemicoms-paper) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  June 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

