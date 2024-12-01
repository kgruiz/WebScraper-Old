![A preview of the clean-math-presentation Typst
template.](https://packages.typst.org/preview/thumbnails/clean-math-
presentation-0.1.0-small.webp)

#  clean-math-presentation

0.1.0

A simple and good looking template for mathematical presentations

[ Create project in app ](/app?template=clean-math-presentation&version=0.1.0)

[ ![Build Typst Document](https://github.com/JoshuaLampert/clean-math-
presentation/actions/workflows/build.yml/badge.svg)
](https://github.com/JoshuaLampert/clean-math-
presentation/actions/workflows/build.yml) [
![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/JoshuaLampert/clean-math-presentation) [ ![License:
MIT](https://img.shields.io/badge/License-MIT-success.svg)
](https://opensource.org/licenses/MIT)

[ Typst ](https://typst.app/home/) template for presentations built for
simple, efficient use and a clean look using [ touying ](https://touying-
typ.github.io/) . The template provides a custom title page, a footer, a
header, and built-in support for theorem blocks and proofs.

##  Usage

The template is already filled with dummy data, to give users an impression
how it looks like. The paper is obtained by compiling ` main.typ ` .

  * after [ installing Typst ](https://github.com/typst/typst?tab=readme-ov-file#installation) you can conveniently use the following to create a new folder containing this project. 

    
    
    typst init @preview/clean-math-presentation:0.1.0
    

  * edit the data in ` main.typ ` â ` #show template.with([your data]) `

###  Parameters of the Template

  * ` title ` : Title of the presentation. 
  * ` subtitle ` : Subtitle of the presentation, optional. 
  * ` short-title ` : Short version of the presentation to be shown in the footer, optional. If not short title is provided, the ` title ` will be shown in the footer. 
  * ` date ` : Date of the presentation. 
  * ` authors ` : List of names of the authors of the paper. Each entry of the list is a dictionary with the following keys: 
    * ` name ` : Name of the author. 
    * ` affiliation-id ` : The ID of the affiliation in ` affiliations ` , see below. 
  * ` affiliations ` : List of affiliations of the authors. Each entry of the list is a dictionary with the following keys: 
    * ` id ` : ID of the affiliation, which is used to link the authors to the affiliation, see above. 
    * ` name ` : Name of the affiliation. 
  * ` author ` : The name of the presenting author, which will be displayed in the footer of each slide. If the ` author ` matches one of the ` authors ` , this name will be underlined in the title slide. 

Other arguments like ` align ` , ` progess-bar ` and more are available and
similar to other templates in touying, especially the [ stargazer theme
](https://touying-typ.github.io/docs/themes/stargazer) . The colorscheme can
be adjusted by passing ` config-colors ` to the ` template ` , e.g.

    
    
    config-colors(
      primary: rgb("#6068d6"),
      secondary: rgb("#2f1971"),
    )
    

The title page can be created with ` #title-slide ` . It accepts optionally a
` background ` , which can be an image or ` none ` (default) and up to two
logos ` logo1 ` and ` logo2 ` ( ` none ` by default).

The theme provides different types of slides like ` #outline-slide ` , `
#focus-slide ` , ` #ending-slide ` , and the usual ` #slide ` .
Additionally,it already provides support for theorems and alike by the
functions ` #theorem ` , ` #lemma ` , ` #corollary ` , ` #definition ` , `
#example ` , and ` #proof ` .

##  Acknowledgements

Some parts of this template are based on the [ stargazer
](https://github.com/touying-typ/touying/blob/main/themes/stargazer.typ) theme
from touying.

##  Feedback & Improvements

If you encounter problems, please open issues. In case you found useful
extensions or improved anything We are also very happy to accept pull
requests.

[ Create project in app ](/app?template=clean-math-presentation&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/clean-math-presentation:0.1.0

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

     10.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/clean-math-presentation-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JoshuaLampert/clean-math-presentation)
Discipline  s  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Joshua Lampert  .  Report issues on  [ their
repository ](https://github.com/JoshuaLampert/clean-math-presentation) .  You
can also try to ask for help with this  template  on the  [ Forum
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

