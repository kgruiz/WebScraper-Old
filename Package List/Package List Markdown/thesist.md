![A preview of the thesist Typst
template.](https://packages.typst.org/preview/thumbnails/thesist-0.2.0-small.webp)

#  thesist

0.2.0

A Master's thesis template for Instituto Superior TÃ©cnico (IST)

[ Create project in app ](/app?template=thesist&version=0.2.0)

ThesIST (pronounced âdesistâ) is an unofficial Masterâs thesis template
for Instituto Superior TÃ©cnico written in Typst.

This template fully meets the official formatting requirements as outlined [
here ](https://tecnico.ulisboa.pt/files/2021/09/guia-disserta-o-mestrado.pdf)
, and also attempts to follow most unwritten conventions. Regardless, you can
be on the lookout for things you may want to see added.

PIC2 reports are also supported. However, some conventions for these may vary
with the supervisors, so please check with them if anything needs to be
changed.

##  Changelogs

The changelogs of new versions are available on [ the Releases page
](https://github.com/tfachada/thesist/releases) . Make sure to check the
latest one(s) whenever you update the imported ` thesist ` version.

##  Usage

If you are in the Typst web app, simply click on âStart from templateâ and
pick this template.

If you want to develop locally:

  1. Make sure you have the **TeX Gyre Heros** font family installed. 
  2. Install the package with ` typst init @preview/thesist ` . 

##  Overview

**Please read the âQuick guideâ chapter included in this template to get
set up. You can keep it as a reference if you want.**

This templateâs source files, hidden from the user view, are the following:

  * ` layout.typ ` : The main configuration file, which initializes the thesis and contains its general formatting rules. 

  * ` figure-numbering.typ ` : This file contains a function to set a chapter-relative numbering for the various types of figures. The function is called once or twice depending on whether the user decides to include appendices. 

  * ` utils.typ ` : General functions that you may want to import and use for QoL improvements. 

###  A sidenote about subfigures

Since subfigures are not yet native to Typst, the current implementation,
present in ` utils.typ ` , needs the user to manually input whether each
called subfigure figure (aka subfigure grid) is in an appendix or not. This is
because the numbering is different in appendices, and because the
functionality of ` figure-numbering.typ ` canât be applied to subfigure
grids, since they are imported with their default numbering once in every
chapter. ` context ` expressions also donât work across imports, so location
within the document couldnât be used as a parameter (unless the user called
` context ` themselves, which would be unintuitive). **Regardless, the
workaround that was found, which is explained in the quick guide, doesnât
need much thinking from the user, so you can see this as a more technical note
that shouldnât matter when youâre writing the thesis.**

##  Final remarks

This template is not necessarily (or hopefully) a finished product. Feel free
to open issues or pull requests!

Also thanks to the Typst community members for the help in some of the
functionalities, and for the extensions used here.

[ Create project in app ](/app?template=thesist&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/thesist:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ TomÃ¡s Fachada ](https://github.com/tfachada)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     October 21, 2024 
First released:

     August 28, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     373 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/thesist-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/tfachada/thesist)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  TomÃ¡s Fachada  .  Report issues on  [ their
repository ](https://github.com/tfachada/thesist) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/thesist/0.1.0/) |  August 28, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

