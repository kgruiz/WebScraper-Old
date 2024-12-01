![A preview of the smooth-tmlr Typst
template.](https://packages.typst.org/preview/thumbnails/smooth-
tmlr-0.4.0-small.webp)

#  smooth-tmlr

0.4.0

Paper template for submission to Transaction on Machine Learning Research
(TMLR)

[ Create project in app ](/app?template=smooth-tmlr&version=0.4.0)

##  Usage

You can use this template in the Typst web app by clicking _Start from
template_ on the dashboard and searching for ` smooth-tmlr ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/smooth-tmlr
    

Typst will create a new directory with all the files needed to get you
started.

##  Example Papers

Here are an example paper in [ LaTeX ](https://github.com/daskol/typst-
templates) and in [ Typst ](https://github.com/daskol/typst-
templates/#colored-annotations) .

##  Configuration

This template exports the ` tmlr ` function with the following named
arguments.

  * ` title ` : The paperâs title as content. 
  * ` authors ` : An array of author dictionaries. Each of the author dictionaries must have a name key and can have the keys department, organization, location, and email. 
  * ` keywords ` : Publication keywords (used in PDF metadata). 
  * ` date ` : Creation date (used in PDF metadata). 
  * ` abstract ` : The content of a brief summary of the paper or none. Appears at the top under the title. 
  * ` bibliography ` : The result of a call to the bibliography function or none. The function also accepts a single, positional argument for the body of the paper. 
  * ` appendix ` : Content to append after bibliography section. 
  * ` accepted ` : If this is set to ` false ` then anonymized ready for submission document is produced; ` accepted: true ` produces camera-redy version. If the argument is set to ` none ` then preprint version is produced (can be uploaded to arXiv). 
  * ` review ` : Hypertext link to review on OpenReview. 
  * ` pubdate ` : Date of publication (used only month and date). 

The template will initialize your package with a sample call to the ` tmlr `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule at the top of your file.

##  Issues

This template is developed at [ daskol/typst-templates
](https://github.com/daskol/typst-templates) repo. Please report all issues
there.

  * While author instruction says the all text should be in sans serif font Computer Modern Bright, only headers and titles are in sans font Computer Modern Sans and the rest of text is causal Computer Modern Serif (or Roman). To be precice, the original template uses Latin Modern, a descendant of Computer Modern. In this tempalte we stick to CMU (Computer Modern Unicode) font family. 

  * In the original template paper, the word **Abstract** is of large font size (12pt) and bold. This affects slightly line spacing. We donât know how to adjust Typst to reproduce this feature of the reference template but this issue does not impact a lot on visual appearence and layouting. 

  * In the original template special level-3 sections like âAuthor Contributionsâ or âAcknowledgementsâ are not added to outline. We add them to outline as level-1 header but still render them as level-3 headers. 

  * ICML-like bibliography style. In this case, the bibliography slightly differs from the one in the original example paper. The main difference is that we prefer to use authorâs lastname at first place to search an entry faster. 

  * In the original template a lot of vertical space is inserted before and after graphics and table figures. It is unclear why so much space are inserted. We belive that the reason is how Typst justify content verticaly. Nevertheless, we append a page break after âDefault Notationâ section in order to show that spacing does not differ visually. 

  * Another issue is related to Typstâs inablity to produce colored annotation. In order to mitigte the issue, we add a script which modifies annotations and make them colored. 
    
        ../colorize-annotations.py \
        example-paper.typst.pdf example-paper-colored.typst.pdf
    

See [ README.md ](https://github.com/daskol/typst-templates/#colored-
annotations) for details.

[ Create project in app ](/app?template=smooth-tmlr&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/smooth-tmlr:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Daniel Bershatsky ](mailto:d.bershatsky2@skoltech.ru)
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     April 29, 2024 
First released:

     March 28, 2024 
Minimum Typst version:

     0.10.0 
Archive size:

     21.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/smooth-tmlr-0.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/daskol/typst-templates)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Daniel Bershatsky  .  Report issues on  [
their repository ](https://github.com/daskol/typst-templates) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.0  |  April 29, 2024   
[ 0.3.0 ](https://typst.app/universe/package/smooth-tmlr/0.3.0/) |  March 28, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

