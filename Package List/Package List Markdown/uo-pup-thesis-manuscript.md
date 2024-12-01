![A preview of the uo-pup-thesis-manuscript Typst
template.](https://packages.typst.org/preview/thumbnails/uo-pup-thesis-
manuscript-0.1.0-small.webp)

#  uo-pup-thesis-manuscript

0.1.0

Unofficial Typst template for PUP (Polytechnic University of the Philippines)
undergraduate thesis manuscript

[ Create project in app ](/app?template=uo-pup-thesis-
manuscript&version=0.1.0)

Unofficial [ typst ](https://typst.app/) template for undergraduate thesis
manuscript for PUP (Polytechnic University of the Philippines). This template
adheres to the Universityâs Thesis and Dissertation Manual as of 2017 (ISBN:
978-971â95208-8-7 (Online)). An example manuscript is also provided (see `
./thesis.pdf ` ).

##  Setup

Using [ Typst CLI ](https://github.com/typst/typst?tab=readme-ov-
file#installation) :

    
    
    typst init @preview/uo-pup-thesis-manuscript my-thesis
    cd my-thesis
    typst compile thesis.typ  # to compile to PDF
    

or run

    
    
    typst watch thesis.typ  # to automatically compiles PDF on save
    

##  Usage

The template already provided an example structure and some guides. But to
start from nothing, make an entrypoint file with a basic structure like this:

    
    
    // thesis.typ
    #import "@preview/uo-pup-thesis-manuscript:0.1.0": *
    
    
    #show: template.with(
      [<your thesis title here>],
      ("Author 1", "Author 2", ..., "Author N"),
      "name of your college here",
      "name of your deg. program here",
      "Month YYYY"
    )
    
    
    // Main content starts here
    
    // This provides a customized heading for
    // chapters that follows the manual
    #chapter(1, "Chapter 1 Title") 
    
    // Since #chapter() provides a heading level 1,
    // start each headings under chapters with level 2
    // to avoid messing up the generated Table of Contents
    == Introduction
    
    ...
    
    #chapter(2, "Chapter 2 Title")
    
    == Topic A
    
    ...
    
    // End of main content
    
    
    // Bibliography formatting setup
    #set par(first-line-indent: 0pt, hanging-indent: 0.5in)
    #set page(header: context [#h(1fr) #counter(page).get().first()])
    #align(center)[ #heading("REFERENCES") ]
    #set par(spacing: 1.5em)
    
    // Get the apa.csl file from `template/` folder
    #bibliography(title: none, style: "./apa.csl", "path/to/your/bibtex/file.bib")
    
    
    // Appendices
    #show: appendices-section
    
    #appendix(1, "Appendix Title")
    
    ...
    
    #pagebreak()
    
    #appendix(2, "Appendix Title")
    
    ...
    

There are also provided utilities for some parts that have a specific way of
formatting.

For example, in ` Definition of Terms ` and ` Significance of the Study `
sections, use ` #description ` function:

    
    
    == Significance of the Study
    #description(
      (
        (term: [Topic A], desc: [#lorem(30)]),
        (term: [Topic B], desc: [#lorem(30)]),
        (term: [Topic C], desc: [#lorem(30)]),
      )
    )
    
    ...
    
    == Definition of Terms
    #description(
      (
        (term: [Topic A], desc: [#lorem(30)]),
        (term: [Topic B], desc: [#lorem(30)]),
      )
    )
    

* * *

If thereâs any mistakes, wrong formatting (e.g., not actually following the
manual), etc., file an issue or a pull request.

* * *

##  TODO

  * [ ] Chapter 4 
  * [ ] Chapter 5 
  * [ ] Abstract 
  * [ ] Acknowledgement 
  * [ ] Copyright 
  * If possible: 
    * Approval Sheet 
    * Certificate of Originality 

[ Create project in app ](/app?template=uo-pup-thesis-
manuscript&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/uo-pup-thesis-manuscript:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Datsudo ](https://github.com/datsudo)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 4, 2024 
First released:

     November 4, 2024 
Archive size:

     21.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/uo-pup-thesis-manuscript-0.1.0.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/datsudo/uo-pup-thesis-manuscript)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Datsudo  .  Report issues on  [ their
repository ](https://gitlab.com/datsudo/uo-pup-thesis-manuscript) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 4, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

