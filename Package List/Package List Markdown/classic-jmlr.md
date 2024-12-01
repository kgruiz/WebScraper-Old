![A preview of the classic-jmlr Typst
template.](https://packages.typst.org/preview/thumbnails/classic-
jmlr-0.4.0-small.webp)

#  classic-jmlr

0.4.0

Paper template for submission to Journal of Machine Learning Research (JMLR)

[ Create project in app ](/app?template=classic-jmlr&version=0.4.0)

##  Overview

This is a Typst template for Journal of Machine Learning Research (JMLR). It
is based on official [ author guide ](https://www.jmlr.org/format/authors-
guide.html) , [ formatting instructions
](https://www.jmlr.org/format/format.html) , and [ formatting error checklist
](https://www.jmlr.org/format/formatting-errors.html) as well as the official
[ example paper ](https://github.com/jmlrorg/jmlr-style-file) .

##  Usage

You can use this template in the Typst web app by clicking _Start from
template_ on the dashboard and searching for ` classic-jmlr ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/classic-jmlr
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` jmlr ` function with the following named
arguments.

  * ` title ` : The paperâs title as content. 
  * ` short-title ` : Paper short title (for page header). 
  * ` authors ` : An array of author dictionaries. Each of the author dictionaries must have a name key and can have the keys department, organization, location, and email. 
  * ` last-names ` : List of authors last names (for page header). 
  * ` keywords ` : Publication keywords (used in PDF metadata). 
  * ` date ` : Creation date (used in PDF metadata). 
  * ` abstract ` : The content of a brief summary of the paper or none. Appears at the top under the title. 
  * ` bibliography ` : The result of a call to the bibliography function or none. The function also accepts a single, positional argument for the body of the paper. 
  * ` appendix ` : Content to append after bibliography section. 
  * ` pubdata ` : Dictionary with auxiliary information about publication. It contains editor name(s), paper id, volume, and submission/review/publishing dates. 

The template will initialize your package with a sample call to the ` jmlr `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule at the top of your file.

    
    
    #import "@preview/classic-jmlr": jmlr
    #show: jmlr.with(
      title: [Sample JMLR Paper],
      authors: (authors, affls),
      abstract: blindtext,
      keywords: ("keyword one", "keyword two", "keyword three"),
      bibliography: bibliography("main.bib"),
      appendix: include "appendix.typ",
      pubdata: (
        id: "21-0000",
        editor: "My editor",
        volume: 23,
        submitted-at: datetime(year: 2021, month: 1, day: 1),
        revised-at: datetime(year: 2022, month: 5, day: 1),
        published-at: datetime(year: 2022, month: 9, day: 1),
      ),
    )
    

##  Issues

This template is developed at [ daskol/typst-templates
](https://github.com/daskol/typst-templates) repo. Please report all issues
there.

  * Original JMLR example paper is not not representative. It does not demonstrate appearance of figures, images, tables, lists, etc. 

  * Leading in author affilations in in the original template is varying. 

  * There is no bibliography CSL-style. The closest one is ` bristol-university-press ` . 

  * Another issue is related to Typstâs inablity to produce colored annotation. In order to mitigte the issue, we add a script which modifies annotations and make them colored. 
    
        ../colorize-annotations.py \
        example-paper.typst.pdf example-paper-colored.typst.pdf
    

See [ README.md ](https://github.com/daskol/typst-templates/#colored-
annotations) for details.

[ Create project in app ](/app?template=classic-jmlr&version=0.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/classic-jmlr:0.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Daniel Bershatsky ](mailto:d.bershatsky2@skoltech.ru)
License:

     MIT 
Current version:

     0.4.0 
Last updated:

     April 19, 2024 
First released:

     April 19, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     8.60 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/classic-jmlr-0.4.0.tar.gz)
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
0.4.0  |  April 19, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

