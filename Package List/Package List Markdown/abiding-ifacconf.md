![A preview of the abiding-ifacconf Typst
template.](https://packages.typst.org/preview/thumbnails/abiding-
ifacconf-0.1.0-small.webp)

#  abiding-ifacconf

0.1.0

An IFAC-style paper template to publish at conferences for International
Federation of Automatic Control

[ Create project in app ](/app?template=abiding-ifacconf&version=0.1.0)

##  (unofficial) IFAC Conference Template for Typst

IFAC stands for [ International Federation of Automatic Control
](https://ifac-control.org/) . This repository is meant to be a port of the
existing author tools for conference papers (e.g., for LaTeX, see [
ifacconf_latex.zip ](https://www.ifac-control.org/conferences/author-
guide/copy_of_ifacconf_latex.zip/view) ) for Typst.

##  Usage

Running the following command will create a new directory with all the files
that are needed:

    
    
    typst init @preview/abiding-ifacconf
    

##  Configuration

This template exports the ` ifacconf ` function with the following named
arguments:

  * ` authors ` : (default: ()) array of authors. For each author you can specify a name, email (optional), and affiliation. The affiliation must be an integer corresponding to an entry in the 1-indexed affiliations list (or 0 for no affiliation). 
  * ` affiliations ` : (default: ()) array of affiliations. For each affiliation you can specify a department, organization, and address. Everything is optional (i.e., an affiliation can be an empty array). 
  * ` abstract ` : (default: none) the paperâs abstract. Can be omitted if you donât have one. 
  * ` keywords ` : (default: ()) array of keywords to display after the abstract 
  * ` sponsor ` : (default: none) acknowledgment of sponsor or financial support (appears as a footnote on the first page) 

##  Minimal Working Example

    
    
    #import "@preview:abiding-ifacconf:0.1.0": *
    #show: ifacconf-rules
    #show: ifacconf.with(
      title: "Minimal Working Example",
      authors: (
        (
          name: "First A. Author",
          email: "author@boulder.nist.gov",
          affiliation: 1,
        ),
      ),
      affiliations: (
        (
          department: "Engineering",
          organization: "National Institute of Standards and Technology",
          address: "Boulder, CO 80305 USA",
        ),
      ),
      abstract: [
        Abstract should be 50-100 words.
      ],
      keywords: ("keyword1", "keyword2"),
      sponsor: [
        Sponsor information.
      ],
    )
    
    = Introduction
    
    A minimum working example (with bibliography) @Abl56.
    
    #lorem(80)
    
    #lorem(80)
    
    #bibliography("refs.bib")
    

##  Full(er) Example

See [ ` main.typ ` ](https://github.com/avonmoll/ifacconf-
typst/blob/main/template/main.typ) .

##  Dependencies

  * typst 0.11.0 
  * ctheorems 1.1.0 (a Typst package for handling theorem-like environments) 

##  Notes, features, etc.

  * the call to ` #show: ifacconf-rules ` is necessary for some show rules defined in ` template.typ ` to get activated 
  * ` ifac-conference.csl ` is a lightly modified version of ` apa.csl ` and is included in order to change the citation format from, e.g., ` (Able 1956) ` to ` Able (1956) ` in order to match ` ifacconf_latex `
  * Tables have formatting rules that get activated inside calls to ` figure ` with ` kind: "table" ` ; a convenience function ` tablefig ` is provided which sets this automatically 
  * all theorem-like environments that were available in ` ifacconf_latex ` are defined in ` template.typ ` ; simply call, for example, ` #theorem[Content...] ... #proof[Proof...] `
  * the LaTeX version does not include a QED symbol at the end of proofs, however one is included here (this is easy to change) 
  * Typst did not seem to like BibTeX citation keys containing colons (which was how they came from ` ifacconf_latex ` ) 
  * alignment for linebreaks in long equations is somewhat manual (e.g., for equation (2) in ` ifacconf.typ ` ) but probably there is a better way to handle this now or in the future 
  * the files ` refs.bib ` (essentially) and ` bifurcation.jpg ` come from ` ifacconf_latex `
  * the file ` ifacconf.typ ` is modeled directly after ` ifacconf.tex ` by Juan a. de la Puente 
  * the ` citep ` function renders citations like ` (Keohane, 1958) ` instead of the default style of ` Keohane (1958) `

##  License

This template is licensed according to the MIT No Attribution license (see `
LICENSE.MD ` ).

The files in the ` CSL ` folder are licensed according to ` CSL/LICENSE.md `
(CC BY/SA 4.0) because it is a lightly modified version of ` apa.csl ` by
Brenton M. Wiernik which is also licensed by a CC BY/SA license.

[ Create project in app ](/app?template=abiding-ifacconf&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/abiding-ifacconf:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Alexander Von Moll ](https://avonmoll.github.io)
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     March 21, 2024 
First released:

     March 21, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     27.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/abiding-ifacconf-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/avonmoll/ifacconf-typst)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Alexander Von Moll  .  Report issues on  [
their repository ](https://github.com/avonmoll/ifacconf-typst) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

