![A preview of the superb-pci Typst
template.](https://packages.typst.org/preview/thumbnails/superb-
pci-0.1.0-small.webp)

#  superb-pci

0.1.0

A Peer Community In (PCI) and Peer Community Journal (PCJ) template.

[ Create project in app ](/app?template=superb-pci&version=0.1.0)

Template for [ Peer Community In ](https://peercommunityin.org/) (PCI)
submission and [ Peer Community Journal ](https://peercommunityjournal.org/)
(PCJ) post-recommendation upload.

The template is as close as possible to the LaTeX one.

##  Usage

To use this template in Typst, simply import it at the top of your document.

    
    
    #import "@preview/superb-pci:0.1.0": *
    

Alternatively, you can start using this template from the command line with

    
    
    typst init @preview/superb-pci:0.1.0 my-superb-manuscript-dir
    

or directly in the web app by clicking âStart from templateâ.

Please see the main Readme about Typst packages [
https://github.com/typst/packages ](https://github.com/typst/packages) .

##  Configuration

This template exports the ` pci ` function with the following named arguments:

  * ` title ` : the paper title 
  * ` authors ` : array of author dictionaries. Each author must have the ` name ` field, and can have the optional fields ` orcid ` , and ` affiliations ` . 
  * ` affiliations ` : array of affiliation dictionaries, each with the keys ` id ` and ` name ` . All correspondence between authors and affiliations is done manually. 
  * ` abstract ` : abstract of the paper as content 
  * ` doi ` : DOI of the paper displayed on the front page 
  * ` keywords ` : array of keywords displayed on the front page 
  * ` correspondence ` : corresponding address displayed on the front page 
  * ` numbered_sections ` : boolean, whether sections should be numbered 
  * ` pcj ` : boolean, provides a way to remove the front page and headers/footers for upload to the Peer Community Journal. ` [default: false] `

The template will initialize your folder with a sample call to the ` pci `
function in a show rule and dummy content as an example. If you want to change
an existing project to use this template, you can add a show rule like this at
the top of your file:

    
    
    #import "@preview/superb-pci:0.1.0": *
    
    #show: pci.with(
      title: [Sample for the template, with quite a very long title],
      abstract: lorem(200),
      authors: (
        (
          name: "Antoine Lavoisier",
          orcid: "0000-0000-0000-0001",
          affiliations: "#,1"
        ),
        (
          name: "Mary P. Curry",
          orcid: "0000-0000-0000-0001",
          affiliations: "#,2",
        ),
        (
          name: "Peter Curry",
          affiliations: "2",
        ),
        (
          name: "Dick Darlington",
          orcid: "0000-0000-0000-0001",
          affiliations: "1,3"
        ),
      ),
      affiliations: (
       (id: "1", name: "Rue sans aplomb, Paris, France"),
       (id: "2", name: "Center for spiced radium experiments, United Kingdom"),
       (id: "3", name: "Bruce's Bar and Grill, London (near Susan's)"),
       (id: "#", name: "Equal contributions"),
      ),
      doi: "https://doi.org/10.5802/fake.doi",
      keywords: ("Scientific writing", "Typst", "PCI", "Example"),
      correspondence: "a-lavois@lead-free-univ.edu",
      numbered_sections: false,
      pcj: false,
    )
    
    // Your content goes here
    

You might also need to use the ` table_note ` function from the template.

##  To do

Some things that are not straightforward in Typst yet that need to be added in
the futures:

  * [ ] line numbers 
  * [ ] switch equation numbers to the left 

[ Create project in app ](/app?template=superb-pci&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/superb-pci:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Alexis Simon 
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     April 15, 2024 
First released:

     April 15, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     170 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/superb-pci-0.1.0.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/alxsim/superb-pci)
Discipline  s  :

    

  * [ Biology ](https://typst.app/universe/search/?discipline=biology)
  * [ Archaeology ](https://typst.app/universe/search/?discipline=archaeology)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Alexis Simon  .  Report issues on  [ their
repository ](https://codeberg.org/alxsim/superb-pci) .  You can also try to
ask for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  April 15, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

