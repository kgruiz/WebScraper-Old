![A preview of the modern-unito-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/modern-unito-
thesis-0.1.0-small.webp)

#  modern-unito-thesis

0.1.0

A thesis template of the University of Turin

[ Create project in app ](/app?template=modern-unito-thesis&version=0.1.0)

This is a thesis template for the University of Turin (UniTO) based on [ my
thesis ](https://github.com/eduardz1/Bachelor-Thesis) , since there are no
strict templates (notable mention to [ Eugenioâs LaTeX template though
](https://github.com/esenes/Unito-thesis-template) ) take my choices with a
grain of salt, different supervisors may ask you to customize the template
differently. My choices are loosely based on this document: [ Indicazioni per
il Format della Tesi
](https://elearning.unito.it/sme/pluginfile.php/29485/mod_folder/content/0/format_TESI_2011-2012.pdf)
.

If you find errors or ways to improve the template please open an issue or
contribute directly with a PR.

##  Usage

In the Typst web app simply click âStart from templateâ on the dashboard
and search for ` modern-unito-thesis ` .

From the CLI you can initialize the project with the command

    
    
    typst init @preview/modern-unito-thesis
    

A new directory with all the files needed to get started will be created.

##  Configuration

This template exports the ` template ` function with the following named
arguments:

  * ` title ` : the title of the thesis 
  * ` academic-year ` : the academic year (e.g. 2023/2024) 
  * ` subtitle ` : e.g. âBachelorâs Thesisâ 
  * ` paper-size ` (default ` a4 ` ): the paper format 
  * ` candidate ` : your name, surname and matricola (student id) 
  * ` supervisor ` (relatore): your supervisorâs name and surname 
  * ` co-supervisor ` (correlatore): an array of your co-supervisorsâ names and surnames 
  * ` affiliation ` : a dictionary that specifies ` university ` , ` school ` and ` degree ` keywords 
  * ` lang ` : configurable between ` en ` for English and ` it ` for Italian 
  * ` bibliography-path ` : the path to your bibliography file (e.g. ` works.bib ` ) 
  * ` logo ` (already set to UniTOâs logo by default): the path to your universityâs logo 
  * ` abstract ` : your thesisâ abstract, can be set to ` none ` if not needed 
  * ` acknowledgments ` : your thesisâ acknowledgments, can be set to ` none ` if not needed 
  * ` keywords ` : a list of keywords for the thesis, can be set to ` none ` if not needed 

The template will initialize an example project with sensible defaults.

The template divides the level 1 headings in chapters under the ` chapters `
directory, I suggest using this structure to keep the project organized.

If you want to change an existing project to use this template, you can add a
show rule like this at the top of your file:

    
    
    #import "@preview/modern-unito-thesis:0.1.0": template
    
    #show: template.with(
      title: "My Beautiful Thesis",
      academic-year: [2023/2024],
      subtitle: "Bachelor's Thesis",
      logo: image("path/to/your/logo.png"),
      candidate: (
        name: "Eduard Antonovic Occhipinti",
        matricola: 947847
      ),
      supervisor: (
        "Prof. Luigi Paperino"
      ),
      co-supervisor: (
        "Dott. Pluto Mario",
        "Dott. Minni Topolino"
      ),
      affiliation: (
        university: "UniversitÃ  degli Studi di Torino",
        school: "Scuola di Scienze della Natura",
        degree: "Corso di Laurea Triennale in Informatica",
      ),
      bibliography: bibliography("works.yml"),
      abstract: [Your abstract goes here],
      acknowledgments: [Your acknowledgments go here],
      keywords: [keyword1, keyword2, keyword3]
    )
    
    // Your content goes here
    

##  Compile

To compile the project from the CLI you just need to run

    
    
    typst compile main.typ
    

or if you want to watch for changes (recommended)

    
    
    typst watch main.typ
    

##  Bibliography

I integrated the bibliography as a [ Hayagriva
](https://github.com/typst/hayagriva) ` yaml ` file under [ works.yml
](https://github.com/typst/packages/raw/main/packages/preview/modern-unito-
thesis/0.1.0/template/works.yml) , nonetheless using the more common ` bib `
format for your bibliography management is as simple as passing a BibTex file
to the template ` bibliography ` parameter. Given that our university is not
strict in this regard I suggest using Hayagriva though :).

[ Create project in app ](/app?template=modern-unito-thesis&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-unito-thesis:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Eduard Antonovic Occhipinti 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     March 20, 2024 
First released:

     March 20, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     19.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-unito-thesis-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/eduardz1/unito-typst-template)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Eduard Antonovic Occhipinti  .  Report issues
on  [ their repository ](https://github.com/eduardz1/unito-typst-template) .
You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 20, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

