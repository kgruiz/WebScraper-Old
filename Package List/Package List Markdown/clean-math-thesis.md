![A preview of the clean-math-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/clean-math-
thesis-0.2.0-small.webp)

#  clean-math-thesis

0.2.0

A simple and good looking template for mathematical theses

[ Create project in app ](/app?template=clean-math-thesis&version=0.2.0)

[ ![Build Typst Document](https://github.com/sebaseb98/clean-math-
thesis/actions/workflows/build.yml/badge.svg)
](https://github.com/sebaseb98/clean-math-thesis/actions/workflows/build.yml)
[ ![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/sebaseb98/clean-math-thesis) [ ![License:
MIT](https://img.shields.io/badge/License-MIT-success.svg)
](https://opensource.org/licenses/MIT)

[ Typst ](https://typst.app/home/) thesis template for mathematical theses
built for simple, efficient use and a clean look. Of course, it can also be
used for other subjects, but the following math-specific features are already
contained in the template:

  * theorems, lemmas, corollaries, proofs etc. prepared using [ great-theorems ](https://typst.app/universe/package/great-theorems)
  * equation settings (using either [ equate ](https://typst.app/universe/package/equate) for numbering of subequations or [ i-figured ](https://typst.app/universe/package/i-figured/) for equation numbering which includes the chapter number) 
  * pseudocode package [ lovelace ](https://typst.app/universe/package/lovelace) included. 

Additionally, it has headers built with [ hydra
](https://typst.app/universe/package/hydra) .

##  Set-Up

The template is already filled with dummy data, to give users an [ impression
how it looks like ](https://github.com/sebaseb98/clean-math-
thesis/blob/main/template/main.pdf) . The thesis is obtained by compiling `
main.typ ` .

  * after [ installing Typst ](https://github.com/typst/typst?tab=readme-ov-file#installation) you can conveniently use the following to create a new folder containing this project. 

    
    
    typst init @preview/clean-math-thesis:0.2.0
    

  * edit the data in ` main.typ ` â ` #show template.with([your data]) `

###  Parameters of the Template

personal/subject related information

  * ` author ` : Name of the author of the thesis. 
  * ` title ` : Title of the thesis. 
  * ` supervisor1 ` : Name of the first supervisor. 
  * ` supervisor2 ` : Name of the second supervisor. 
  * ` degree ` : Degree for which the thesis is submitted. 
  * ` program ` : Program under which the thesis is submitted. 
  * ` university ` : Name of the university. 
  * ` institute ` : Name of the institute. 
  * ` deadline ` : Submission deadline of the thesis. 

file paths for logos etc.

  * ` uni-logo ` : Image, e.g. ` image("images/logo_placeholder.svg", width: 50%) `
  * ` institute-logo ` : Image. 

formatting settings

  * ` citation-style ` : Citation style to be used in the thesis. 
  * ` body-font ` : Font to be used for the body text. 
  * ` cover-font ` : Font to be used for the cover text. 

content that needs to be placed differently then normal chapters

  * ` abstract ` : Content for the abstract section. 

equation settings

  * ` equate-settings ` : either none -> use i-figured; or tuple with the settings for the equations (see [ docs ](https://typst.app/universe/package/equate) ), e.g. (breakable: true, sub-numbering: true, number-mode: âlabelâ) The switching between these is currently not optimal: i-figured needs a prefix ( ` eq: ` ) so if we label an equation like ` <equation> ` the corresponding reference is ` @eq:equation ` and for equate we donât have this prefix, i.e. the reference would be ` @equation ` in this example. This is something to be improved in future releases. 
  * ` equation-numbering-pattern ` : specify the [ numbering ](https://typst.app/docs/reference/model/numbering/#parameters-numbering) of the equations. The second counting symbol (e.g. the ` a ` in ` "(1.a)" ` ) is either used for subequation numbering or for the numbering of equations in the chapters.  colors 
  * ` cover-color ` : Color used for the cover. 
  * ` heading-color ` : Color used for headings. 
  * ` link-color ` : Color used for links and references. 

###  Other Customizations

  * ` declaration.typ ` should be modified 
  * when adding chapters, remember to include them into the ` main.typ ` . 
  * (optional) change colors and appearance of the theorem environment in the ` customization/ ` -folder. 

###  Use of the template in existing projects

If you want to change an existing typst project structure to use this
template, just type the following lines

    
    
    #import "@preview/clean-math-thesis:0.1.0": template
    
    #show: template.with(
      // your user specific data, parameters explained above
    )
    
    #include "my_content.typ"  // and eventually more files
    

##  Disclaimer

This template was created after Sebastian finished his masterâs thesis. We
do not guarantee that it will be accepted by any university, please clarify in
advance if it fulfills all requirements. If not, this template might still be
a good starting point.

##  Acknowledgements

As inspiration on how to structure this template, we used the [ modern-unito-
thesis ](https://typst.app/universe/package/modern-unito-thesis) template. The
design is inspired by the [ fau-book ](https://github.com/FAU-AMMN/fau-book)
template.

##  Feedback & Improvements

If you encounter problems, please open issues. In case you found useful
extensions or improved anything We are also very happy to accept pull
requests.

[ Create project in app ](/app?template=clean-math-thesis&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/clean-math-thesis:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  s  :

     [ Sebastian Eberle ](https://github.com/sebaseb98) & [ Joshua Lampert ](https://github.com/JoshuaLampert)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 26, 2024 
First released:

     November 12, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     9.60 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/clean-math-thesis-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/sebaseb98/clean-math-thesis)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Sebastian Eberle and Joshua Lampert  .
Report issues on  [ their repository ](https://github.com/sebaseb98/clean-
math-thesis) .  You can also try to ask for help with this  template  on the
[ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 26, 2024   
[ 0.1.0 ](https://typst.app/universe/package/clean-math-thesis/0.1.0/) |  November 12, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

