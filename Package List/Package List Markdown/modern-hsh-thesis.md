![A preview of the modern-hsh-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/modern-hsh-
thesis-1.0.0-small.webp)

#  modern-hsh-thesis

1.0.0

Template for writing a bachelors or masters thesis at the Hochschule Hannover,
Faculty 4.

[ Create project in app ](/app?template=modern-hsh-thesis&version=1.0.0)

Version 1.0.0

A template for writing a bachelors or masters thesis at the Hochschule
Hannover, Faculty 4.

##  Getting Started

###  WebApp

Choose the template in the typst web app and follow the instructions there.

###  Terminal

    
    
    typst init @preview/modern-hsh-thesis:1.0.0
    

###  Import

    
    
    #import "@preview/modern-hsh-thesis:1.0.0": *
    
    #show: project.with(
      title: "Beispiel-Titel",
      subtitle: "Bachelorarbeit im Studiengang Mediendesigninformatik",
      author: "Vorname Nachname",
      author_email: "vorname@nachname.tld",
      matrikelnummer: 1234567,
      prof: [
        Prof. Dr. Vorname Nachname\
        Abteilung Informatik, FakultÃ¤t IV\
        Hochschule Hannover\    
        #link("mailto:vorname.nachname@hs-hannover.de")
        
      ],
      second_prof: [
        Prof. Dr. Vorname Nachname\
        Abteilung Informatik, FakultÃ¤t IV\
        Hochschule Hannover\    
        #link("mailto:vorname.nachname@hs-hannover.de")
      ],
      date: "01. August 2024",
      glossaryColumns: 1,
      bibliography: bibliography(("sources.bib", "sources.yaml"), style: "institute-of-electrical-and-electronics-engineers", title: "Literaturverzeichnis")
    )
    

###  Additional functions

` customFunctions.typ ` contains additional functions that can be used in the
template.

` #smallLine ` : A small line that can be used to separate sections.

` #task ` : A card that can be used to create a list of tracks (see example in
1-einleitung.typ).

` #track ` or ` ##narrowTrack ` : A track that can be displayed inside a task
(see example in 1-einleitung.typ).

` #useCase ` : Display a Use Case (see example in 1-einleitung.typ).

` #attributedQuote ` : Display a quote with an attribution.

` #diagramFigure ` , ` #codeFigure ` , ` #imageFigure ` , ` #treeFigure ` :
Wrap an image/code/diagram/tree-list in a figure with a caption.

` #imageFigureNoPad ` : Display a figure without padding.

` #getCurrentHeadingHydra ` , ` #getCurrentHeading ` : Get the heading of the
current page.

###  Development Environment

  1. Install Typst [ https://github.com/typst-community/typst-install ](https://github.com/typst-community/typst-install)
  2. Clone the repository 
  3. CD into the repository 
  4. Run ` git pull && just install && just install-preview ` to install/update the template 
  5. Run ` typst init @local/modern-hsh-thesis:1.0.0 && typst compile modern-hsh-thesis/main.typ ` to compile the template 

##  Additional Documentation

Take a look at this complete Bachelorâs thesis example using the ` modern-
hsh-thesis ` template: [ Bachelorâs Thesis Example
](https://github.com/MrToWy/Bachelorarbeit)

[ Create project in app ](/app?template=modern-hsh-thesis&version=1.0.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/modern-hsh-thesis:1.0.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Tobias Wylega ](https://github.com/MrToWy)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     September 8, 2024 
First released:

     September 8, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     31.6 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/modern-hsh-thesis-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/MrToWy/hsh-thesis)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Tobias Wylega  .  Report issues on  [ their
repository ](https://github.com/MrToWy/hsh-thesis) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  September 8, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

