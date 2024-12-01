![A preview of the clean-math-paper Typst
template.](https://packages.typst.org/preview/thumbnails/clean-math-
paper-0.1.0-small.webp)

#  clean-math-paper

0.1.0

A simple and good looking template for mathematical papers

[ Create project in app ](/app?template=clean-math-paper&version=0.1.0)

[ ![Build Typst Document](https://github.com/JoshuaLampert/clean-math-
paper/actions/workflows/build.yml/badge.svg)
](https://github.com/JoshuaLampert/clean-math-
paper/actions/workflows/build.yml) [
![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/JoshuaLampert/clean-math-paper) [ ![License:
MIT](https://img.shields.io/badge/License-MIT-success.svg)
](https://opensource.org/licenses/MIT)

[ Typst ](https://typst.app/home/) paper template for mathematical papers
built for simple, efficient use and a clean look. Of course, it can also be
used for other subjects, but the following math-specific features are already
contained in the template:

  * theorems, lemmas, corollaries, proofs etc. prepared using [ great-theorems ](https://typst.app/universe/package/great-theorems)
  * equation settings 

##  Set-Up

The template is already filled with dummy data, to give users an impression
how it looks like. The paper is obtained by compiling ` main.typ ` .

  * after [ installing Typst ](https://github.com/typst/typst?tab=readme-ov-file#installation) you can conveniently use the following to create a new folder containing this project. 

    
    
    typst init @preview/clean-math-paper:0.1.0
    

  * edit the data in ` main.typ ` â ` #show template.with([your data]) `

###  Parameters of the Template

  * ` title ` : Title of the paper. 
  * ` authors ` : List of names of the authors of the paper. Each entry of the list is a dictionary with the following keys: 
    * ` name ` : Name of the author. 
    * ` affiliation-id ` : The ID of the affiliation in ` affiliations ` , see below. 
    * optionally ` orcid ` : The [ ORCID ](https://orcid.org/) of the author. If provided, the authorâs name will be linked to their ORCID profile. 
  * ` affiliations ` : List of affiliations of the authors. Each entry of the list is a dictionary with the following keys: 
    * ` id ` : ID of the affiliation, which is used to link the authors to the affiliation, see above. 
    * ` name ` : Name of the affiliation. 
  * ` date ` : Date of the paper. 
  * ` heading-color ` : Color of the headings including the title. 
  * ` link-color ` : Color of the links. 
  * ` abstract ` : Abstract of the paper. 
  * ` keywords ` : List of keywords of the paper. If not provided, nothing will be shown. 
  * ` AMS ` : List of AMS subject classifications of the paper. If not provided, nothing will be shown. 

##  Acknowledgements

Some parts of this template are based on the [ arkheion
](https://github.com/mgoulao/arkheion) template.

##  Feedback & Improvements

If you encounter problems, please open issues. In case you found useful
extensions or improved anything We are also very happy to accept pull
requests.

[ Create project in app ](/app?template=clean-math-paper&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/clean-math-paper:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Joshua Lampert ](https://github.com/JoshuaLampert)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 21, 2024 
First released:

     November 21, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     5.95 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/clean-math-paper-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JoshuaLampert/clean-math-paper)
Discipline  s  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Joshua Lampert  .  Report issues on  [ their
repository ](https://github.com/JoshuaLampert/clean-math-paper) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

