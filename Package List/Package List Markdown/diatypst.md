![A preview of the diatypst Typst
template.](https://packages.typst.org/preview/thumbnails/diatypst-0.3.0-small.webp)

#  diatypst

0.3.0

Easy slides with Typst â sensible defaults, easy syntax, well-styled

Featured  Template

[ Create project in app ](/app?template=diatypst&version=0.3.0)

_easy slides in typst_

Features:

  * easy delimiter for slides and sections (just use headings) 
  * sensible styling 
  * dot counter in upper right corner (like LaTeX beamer) 
  * adjustable color-theme 
  * default show rules for terms, code, lists, â¦ that match color-theme 

Example Presentation

Title Slide  |  Section  |  Content  |  Outline   
---|---|---|---  
![Example-Title](https://github.com/typst/packages/raw/main/packages/preview/diatypst/0.3.0/screenshots/Example-Title.jpg) |  ![Example-Section](https://github.com/typst/packages/raw/main/packages/preview/diatypst/0.3.0/screenshots/Example-Section.jpg) |  ![Example-Slide](https://github.com/typst/packages/raw/main/packages/preview/diatypst/0.3.0/screenshots/Example-Slide.jpg) |  ![Example-Section](https://github.com/typst/packages/raw/main/packages/preview/diatypst/0.3.0/screenshots/Example-TOC.jpg)  
  
These example slides and a usage guide are available in the ` example ` Folder
on GitHub as a [ .typ file
](https://github.com/skriptum/diatypst/blob/main/example/example.typ) and a [
compiled PDF
](https://github.com/skriptum/diatypst/blob/main/example/example.pdf)

##  Usage

To start a presentation, initialize it in your typst document:

    
    
    #import "@preview/diatypst:0.2.0": *
    #show: slides.with(
      title: "Diatypst", // Required
      subtitle: "easy slides in typst",
      date: "01.07.2024",
      authors: ("John Doe"),
    )
    ...
    

Then, insert your content.

  * Level-one headings corresponds to new sections. 
  * Level-two headings corresponds to new slides. 
  * or manually create a new slide with a ` #pagebreak() `

    
    
    ...
    
    = First Section
    
    == First Slide
    
    #lorem(20)
    

_diatypst_ is also available on the [ Typst Universe
](https://typst.app/universe/package/diatypst) for easy importing into a
project on typst.app

##  Options

all available Options to initialize the template with

Keyword  |  Description  |  Default   
---|---|---  
_title_ |  Title of your Presentation, visible also in footer  |  ` none ` but required!   
_subtitle_ |  Subtitle, also visible in footer  |  ` none `  
_date_ |  a normal string presenting your date  |  ` none `  
_authors_ |  either string or array of strings  |  ` none `  
_layout_ |  one of âsmallâ, âmediumâ, âlargeâ, adjusts sizing of the elements on the slides  |  ` "medium" `  
_ratio_ |  aspect ratio of the slides, e.g 16/9  |  ` 4/3 `  
_title-color_ |  Color to base the Elements of the Presentation on  |  ` blue.darken(50%) `  
_count_ |  whether to display the dots for pages in upper right corner  |  ` true `  
_footer_ |  whether to display the footer at the bottom  |  ` true `  
_toc_ |  whether to display the table of contents  |  ` true `  
_footer-title_ |  custom text in the footer title (left)  |  same as _title_  
_footer-subtitle_ |  custom text in the footer subtitle (right)  |  same as _subtitle_  
  
##  Quarto

This template is also available as a [ Quarto ](https://quarto.org/)
extension. To use it, add it to your project with the following command:

    
    
    quarto add skriptum/diatypst/diaquarto
    

Then, create a qmd file with the following YAML frontmatter:

    
    
    title: "Untitled"
    ...
    format:
      diaquarto-typst: 
        layout: medium # small, medium, large
        ratio: 16/9 # any ratio possible 
        title-color: "013220" # Any Hex code for the title color (without #)
    

##  Inspiration

this template is inspired by [ slydst ](https://github.com/glambrechts/slydst)
, and takes part of the code from it. If you want simpler slides, look here!

The word _Diatypst_ is inspired by the ease of use of a [ **Dia** -projektor
](https://de.wikipedia.org/wiki/Diaprojektor) (German for Slide Projector) and
the [ Diatype ](https://en.wikipedia.org/wiki/Diatype_\(machine\))

[ Create project in app ](/app?template=diatypst&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/diatypst:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     skriptum (https://github.com/skriptum) 
License:

     MIT-0 
Current version:

     0.3.0 
Last updated:

     November 18, 2024 
First released:

     July 22, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.89 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/diatypst-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/skriptum/Diatypst)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  skriptum (https://github.com/skriptum)  .
Report issues on  [ their repository ](https://github.com/skriptum/Diatypst) .
You can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  November 18, 2024   
[ 0.2.0 ](https://typst.app/universe/package/diatypst/0.2.0/) |  November 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/diatypst/0.1.0/) |  July 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

