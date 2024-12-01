![A preview of the vienna-tech Typst
template.](https://packages.typst.org/preview/thumbnails/vienna-
tech-0.1.2-small.webp)

#  vienna-tech

0.1.2

An unofficial template for writing thesis at the TU Wien civil- and
environmental engineering faculty.

[ Create project in app ](/app?template=vienna-tech&version=0.1.2)

Version 0.1.2

This is a template, modeled after the LaTeX template provided by the Vienna
University of Technology for Engineering Students. It is intended to be used
as a starting point for writing Bachelorâs or Masterâs theses, but can be
adapted for other purposes as well. It shall be noted that this template is
not an official template provided by the Vienna University of Technology, but
rather a personal effort to provide a similar template in a new typesetting
system. If you want to checkout the original templates visit the website of [
TU Wien ](https://www.tuwien.at/cee/edvlabor/lehre/vorlagen)

##  Getting Started

These instructions will help you set up the template on the typst web app.

    
    
    #import "@preview/vienna-tech:0.1.2": *
    
    // Useing the configuration
    #show: tuw-thesis.with(
      title: [Titel of the Thesis],
      thesis-type: [Bachelorthesis],
      lang: "de",
      authors: (
        (
          name: "Firstname Lastname", 
          email: "email@email.com",
          matrnr: "12345678",
          date: datetime.today().display("[day] [month repr:long] [year]"),
        ),
      ),
      abstract: [The Abstract of the Thesis],
      bibliography: bibliography("bibliography.bib"), 
      appendix: [The Appendix of the Thesis], 
        )
    

##  Options

All the available options that are available for the template are listed
below.

Parameter  |  Type  |  Description   
---|---|---  
` title ` |  ` content ` |  Title of the thesis.   
` thesis-type ` |  ` content ` |  Type of thesis (e.g., Bachelorâs thesis, Masterâs thesis).   
` authors ` |  ` content ` ; ` string ` ; ` array ` |  Name of the author(s) as text or array.   
` abstract ` |  ` content ` |  Abstract of the thesis.   
` papersize ` |  ` string ` |  Paper size (e.g., A4, Letter).   
` bibliography ` |  ` bibliography ` |  Bibliography section.   
` lang ` |  ` string ` |  Language of the thesis (e.g., âenâ for English, âdeâ for German).   
` appendix ` |  ` content ` |  Appendix of the thesis.   
` toc ` |  ` bool ` |  Show table of contents ( ` true ` or ` false ` ).   
` font-size ` |  ` length ` |  Font size for the main text.   
` main-font ` |  ` string ` ; ` array ` |  Main font as a name or an array of font names.   
` title-font ` |  ` string ` ; ` array ` |  Font for the title as a name or an array of font names.   
` raw-font ` |  ` string ` ; ` array ` |  Font for specific text as a name or an array of font names.   
` title-page ` |  ` content ` |  Content of the title page.   
` paper-margins ` |  ` auto ` ; ` relative ` ; ` dictionary ` |  Margins of the document. Can be set as automatic, relative, or defined by a dictionary.   
` title-hyphenation ` |  ` auto ` ; ` bool ` |  Title hyphenation, either automatic ( ` auto ` ) or manual ( ` true ` or ` false ` ).   
  
##  Usage

These instructions will get you a copy of the project up and running on the
typst web app.

    
    
    typst init @preview/vienna-tech:0.1.2
    

###  Template overview

After setting up the template, you will have the following files:

  * ` main.typ ` : the file which is used to compile the document 
  * ` abstract.typ ` : a file where you can put your abstract text 
  * ` appendix.typ ` : a file where you can put your appendix text 
  * ` sections.typ ` : a file which can include all your contents 
  * ` refs.bib ` : references 

##  Contribute to the template

Feel free to contribute to the template by opening a pull request. If you have
any questions, feel free to open an issue.

[ Create project in app ](/app?template=vienna-tech&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/vienna-tech:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Niko Pikall 
License:

     Unlicense 
Current version:

     0.1.2 
Last updated:

     November 6, 2024 
First released:

     August 23, 2024 
Archive size:

     66.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/vienna-tech-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/npikall/vienna-tech.git)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Niko Pikall  .  Report issues on  [ their
repository ](https://github.com/npikall/vienna-tech.git) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  November 6, 2024   
[ 0.1.1 ](https://typst.app/universe/package/vienna-tech/0.1.1/) |  August 27, 2024   
[ 0.1.0 ](https://typst.app/universe/package/vienna-tech/0.1.0/) |  August 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

