![A preview of the parcio-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/parcio-
thesis-0.1.0-small.webp)

#  parcio-thesis

0.1.0

A simple thesis template based on the ParCIO working group at OvGU Magdeburg.

[ Create project in app ](/app?template=parcio-thesis&version=0.1.0)

![](https://github.com/typst/packages/raw/main/packages/preview/parcio-
thesis/0.1.0/thumbnails/1.png)
![](https://github.com/typst/packages/raw/main/packages/preview/parcio-
thesis/0.1.0/thumbnails/2.png)
![](https://github.com/typst/packages/raw/main/packages/preview/parcio-
thesis/0.1.0/thumbnails/3.png)

A simple thesis template based on the ParCIO working group at Otto-von-
Guericke University Magdeburg.

##  Getting Started

To use this template, simply import it as shown below (more options under `
Usage ` ):

    
    
    #import "@preview/parcio-thesis:0.1.0": *
    
    #show: parcio.with(
      title: "My great thesis",
      author: (
        name: "Author",
        mail: "author@ovgu.de"
      ),
      abstract: [My abstract begins here.],
    )
    

###  Local Installation

Following these steps will make the template available locally under the `
@local ` namespace. Requires [ âJust - A Command Runnerâ
](https://github.com/casey/just) .

    
    
    git clone git@github.com:xkevio/parcio-typst.git 
    cd parcio-typst/parcio-thesis/
    just install
    

##  Usage

See here for **all** possible arguments (and their default values) and utility
functions:

    
    
    #import "@preview/parcio-thesis:0.1.0": *
    
    #show: parcio.with(
      title: "Title",
      author: (name: "Author", mail: "author@ovgu.de"),
      abstract: [],
      thesis-type: "Bachelor/Master",
      reviewers: (),
      date: datetime.today(),
      lang: "en",
      header-logo: none,
      translations: none,
    )
    
    // Use these to *enable* or *change* page numbering for your frontmatter and mainmatter respectively.
    // (By default, this template hides the page numbering!)
    #show: roman-numbering.with(reset: <true|false>)
    #show: arabic-numbering.with(alternate: <true|false>, reset: <true|false>)
    

###  Utility Functions

These could be useful while writing your thesis!

    
    
    // A TODO marker. (inline: false -> margin note, inline: true -> box).
    #let todo(inline: false, body)
    
    // Like \section* in LaTeX. (unnumbered level 2 heading, not in ToC).
    #let section = heading.with(level: 2, outlined: false, numbering: none)
    
    // A neat inline-section in smallcaps and sans font.
    #let inline-section(title) = smallcaps[*#text(font: "Libertinus Sans", title)*] 
    
    // Fully empty page, no page numbering.
    #let empty-page = page([], footer: [])
    
    // Subfigures (see chapters/introduction for syntax).
    #let subfigure(..)
    
    // A ParCIO-like table with a design taken from the LaTeX template.
    #let parcio-table(max-rows, ..args)
    
    // Nicer handling of (multiple) appendices. Specify `reset: true` with your first appendix to reset the heading counter!
    #let appendix(reset: false, label: none, body)
    

###  Translations

If you wish, you can provide custom translations for things like
âSectionâ, âContentsâ, etc. by providing a custom ` translations.toml
` (this template already comes with translations for English and German) with
the following schema:

    
    
    # Top-level dict name should follow ISO 639 language codes!
    default-lang = "en"
    
    [de]
    contents = "Inhaltsverzeichnis"
    chapter = "Kapitel"
    section = "Sektion"
    thesis = { value = "Arbeit", compound = true }
    
    [de.title-page]
    first-reviewer = "Erstgutachter"
    second-reviewer = "Zweitgutachter"
    supervisor = "Betreuer"
    
    [de.bibliography]
    bibliography = "Quellenverzeichnis"
    cited-on-page = "Zitiert auf Seite"
    cited-on-pages = "Zitiert auf Seiten"
    join = "und"
    
    [de.date]
    date-format = "[day]. [month repr:long] [year]"
    months = ["Januar", "Februar", "MÃ¤rz", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember"]
    

##  Fonts and OvGU Corporate Design

This template requires these three fonts to be installed on your system[^1]:

  * Libertinus Serif ( [ https://github.com/alerque/libertinus ](https://github.com/alerque/libertinus) ) 
  * Libertinus Sans ( [ https://github.com/alerque/libertinus ](https://github.com/alerque/libertinus) ) 
  * Inconsolata ( [ https://github.com/googlefonts/Inconsolata ](https://github.com/googlefonts/Inconsolata) ) 

We bundle the default âFaculty of Computer Scienceâ head banner and use it
as the ` header-logo ` . You can find yours at: [
https://www.cd.ovgu.de/FakultÃ¤ten.html
](https://www.cd.ovgu.de/Fakult%C3%A4ten.html) .

[^1]: Typst should already provide the Libertinus font family by default as it
is their standard font.

[ Create project in app ](/app?template=parcio-thesis&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/parcio-thesis:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Kevin Kulot ](https://github.com/xkevio)
License:

     0BSD 
Current version:

     0.1.0 
Last updated:

     November 19, 2024 
First released:

     November 19, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     20.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/parcio-thesis-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/xkevio/parcio-typst/)
Categor  ies  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Kevin Kulot  .  Report issues on  [ their
repository ](https://github.com/xkevio/parcio-typst/) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 19, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

