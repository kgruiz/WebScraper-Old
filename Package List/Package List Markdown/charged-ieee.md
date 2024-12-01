![A preview of the charged-ieee Typst
template.](https://packages.typst.org/preview/thumbnails/charged-
ieee-0.1.3-small.webp)

#  charged-ieee

0.1.3

An IEEE-style paper template to publish at conferences and journals for
Electrical Engineering, Computer Science, and Computer Engineering

Featured  Template

[ Create project in app ](/app?template=charged-ieee&version=0.1.3)

This is a Typst template for a two-column paper from the proceedings of the
Institute of Electrical and Electronics Engineers. The paper is tightly
spaced, fits a lot of content and comes preconfigured for numeric citations
from BibLaTeX or Hayagriva files.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` charged-ieee ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/charged-ieee
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` ieee ` function with the following named
arguments:

  * ` title ` : The paperâs title as content. 
  * ` authors ` : An array of author dictionaries. Each of the author dictionaries must have a ` name ` key and can have the keys ` department ` , ` organization ` , ` location ` , and ` email ` . All keys accept content. 
  * ` abstract ` : The content of a brief summary of the paper or ` none ` . Appears at the top of the first column in boldface. 
  * ` index-terms ` : Array of index terms to display after the abstract. Shall be ` content ` . 
  * ` paper-size ` : Defaults to ` us-letter ` . Specify a [ paper size string ](https://typst.app/docs/reference/layout/page/#parameters-paper) to change the page format. 
  * ` bibliography ` : The result of a call to the ` bibliography ` function or ` none ` . Specifying this will configure numeric, IEEE-style citations. 

The function also accepts a single, positional argument for the body of the
paper.

The template will initialize your package with a sample call to the ` ieee `
function in a show rule. If you want to change an existing project to use this
template, you can add a show rule like this at the top of your file:

    
    
    #import "@preview/charged-ieee:0.1.3": ieee
    
    #show: ieee.with(
      title: [A typesetting system to untangle the scientific writing process],
      abstract: [
        The process of scientific writing is often tangled up with the intricacies of typesetting, leading to frustration and wasted time for researchers. In this paper, we introduce Typst, a new typesetting system designed specifically for scientific writing. Typst untangles the typesetting process, allowing researchers to compose papers faster. In a series of experiments we demonstrate that Typst offers several advantages, including faster document creation, simplified syntax, and increased ease-of-use.
      ],
      authors: (
        (
          name: "Martin Haug",
          department: [Co-Founder],
          organization: [Typst GmbH],
          location: [Berlin, Germany],
          email: "haug@typst.app"
        ),
        (
          name: "Laurenz MÃ¤dje",
          department: [Co-Founder],
          organization: [Typst GmbH],
          location: [Berlin, Germany],
          email: "maedje@typst.app"
        ),
      ),
      index-terms: ("Scientific writing", "Typesetting", "Document creation", "Syntax"),
      bibliography: bibliography("refs.bib"),
    )
    
    // Your content goes below.
    

[ Create project in app ](/app?template=charged-ieee&version=0.1.3)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/charged-ieee:0.1.3

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Typst GmbH ](https://typst.app)
License:

     MIT-0 
Current version:

     0.1.3 
Last updated:

     October 29, 2024 
First released:

     March 6, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     6.39 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/charged-ieee-0.1.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst/templates)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Typst GmbH  .  Report issues on  [ their
repository ](https://github.com/typst/templates) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

###  Version history

Version  |  Release Date   
---|---  
0.1.3  |  October 29, 2024   
[ 0.1.2 ](https://typst.app/universe/package/charged-ieee/0.1.2/) |  August 15, 2024   
[ 0.1.1 ](https://typst.app/universe/package/charged-ieee/0.1.1/) |  August 8, 2024   
[ 0.1.0 ](https://typst.app/universe/package/charged-ieee/0.1.0/) |  March 6, 2024 

