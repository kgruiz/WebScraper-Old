![A preview of the unequivocal-ams Typst
template.](https://packages.typst.org/preview/thumbnails/unequivocal-
ams-0.1.2-small.webp)

#  unequivocal-ams

0.1.2

An AMS-style paper template to publish at conferences and journals for
mathematicians

Featured  Template

[ Create project in app ](/app?template=unequivocal-ams&version=0.1.2)

A single-column paper for the American Mathematical Society. The template
comes with functions for theorems and proofs. It also is a nice starting point
for a classy tech report or thesis.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` unequivocal-ams ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/unequivocal-ams
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` ams-article ` function with the following named
arguments:

  * ` title ` : The paperâs title as content. 
  * ` authors ` : An array of author dictionaries. Each of the author dictionaries must have a ` name ` key and can have the keys ` department ` , ` organization ` , ` location ` , and ` email ` . All keys accept content. 
  * ` abstract ` : The content of a brief summary of the paper or ` none ` . Appears at the top of the first column in boldface. 
  * ` paper-size ` : Defaults to ` us-letter ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. 
  * ` bibliography ` : The result of a call to the ` bibliography ` function or ` none ` . Specifying this will configure numeric, Springer MathPhys-style citations. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` ams-
article ` function in a show rule. If you, however, want to change an existing
project to use this template, you can add a show rule like this at the top of
your file:

    
    
    #import "@preview/unequivocal-ams:0.1.2": ams-article, theorem, proof
    
    #show: ams-article.with(
      title: [Mathematical Theorems],
      authors: (
        (
          name: "Ralph Howard",
          department: [Department of Mathematics],
          organization: [University of South Carolina],
          location: [Columbia, SC 29208],
          email: "howard@math.sc.edu",
          url: "www.math.sc.edu/~howard"
        ),
      ),
      abstract: lorem(100),
      bibliography: bibliography("refs.bib"),
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=unequivocal-ams&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/unequivocal-ams:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Typst GmbH ](https://typst.app)
License:

     MIT-0 
Current version:

     0.1.2 
Last updated:

     October 29, 2024 
First released:

     March 6, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     6.30 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/unequivocal-ams-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Discipline  :

    

  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 29, 2024   
[ 0.1.1 ](https://typst.app/universe/package/unequivocal-ams/0.1.1/) |  August 8, 2024   
[ 0.1.0 ](https://typst.app/universe/package/unequivocal-ams/0.1.0/) |  March 6, 2024 

