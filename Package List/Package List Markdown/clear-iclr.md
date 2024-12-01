![A preview of the clear-iclr Typst
template.](https://packages.typst.org/preview/thumbnails/clear-
iclr-0.4.0-small.webp)

#  clear-iclr

0.4.0

Paper template for submission to International Conference on Learning
Representations (ICLR)

Featured  Template

[ Create project in app ](/app?template=clear-iclr&version=0.4.0)

##  Usage

You can use this template in the Typst web app by clicking _Start from
template_ on the dashboard and searching for ` clear-iclr ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/clear-iclr
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` iclr ` function with the following named
arguments.

  * ` title ` : The paperâs title as content. 

  * ` authors ` : An array of author dictionaries. Each of the author dictionaries must have a name key and can have the keys department, organization, location, and email. 
    
        #let authors = (
      ...,
      (
        names: ([Coauthor1], [Coauthor2]),
        affilation: [Affiliation],
        address: [Address],
        email: "correspondent@example.org",
      ),
      ...
    )
    

  * ` keywords ` : Publication keywords (used in PDF metadata). 

  * ` date ` : Creation date (used in PDF metadata). 

  * ` abstract ` : The content of a brief summary of the paper or none. Appears at the top under the title. 

  * ` bibliography ` : The result of a call to the bibliography function or none. The function also accepts a single, positional argument for the body of the paper. 

  * ` appendix ` : Content to append after bibliography section (can be included). 

  * ` accepted ` : If this is set to ` false ` then anonymized ready for submission document is produced; ` accepted: true ` produces camera-redy version. If the argument is set to ` none ` then preprint version is produced (can be uploaded to arXiv). 

The template will initialize your package with a sample call to the ` iclr `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule at the top of your file.

##  Issues

This template is developed at [ daskol/typst-templates
](https://github.com/daskol/typst-templates) repo. Please report all issues
there.

  * Common issue is related to Typstâs inablity to produce colored annotation. In order to mitigte the issue, we add a script which modifies annotations and make them colored. 
    
        ../colorize-annotations.py \
        example-paper.typst.pdf example-paper-colored.typst.pdf
    

See [ [ README.md ](http://readme.md/) ][3] for details.

  * The author instructions says that preferable font is MS Times New Roman but the official example paper uses serifs like Computer Modern and Nimbus font families. Monospace fonts are not specified. 

  * ICML-like bibliography style. The bibliography slightly differs from the one in the original example paper. The main difference is that we prefer to use authorâs lastname at first place to search an entry faster. 

[ Create project in app ](/app?template=clear-iclr&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/clear-iclr:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Daniel Bershatsky ](mailto:d.bershatsky2@skoltech.ru)
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     September 11, 2024 
First released:

     September 11, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     21.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/clear-iclr-0.4.0.tar.gz)
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
0.4.0  |  September 11, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

