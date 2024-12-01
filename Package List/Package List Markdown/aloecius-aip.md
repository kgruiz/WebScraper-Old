![A preview of the aloecius-aip Typst
template.](https://packages.typst.org/preview/thumbnails/aloecius-
aip-0.0.1-small.webp)

#  aloecius-aip

0.0.1

Typst template for reproducing AIP - Journal of Chemical Physics paper (draft)

[ Create project in app ](/app?template=aloecius-aip&version=0.0.1)

This is a typst template for reproducing papers of American Institute of
Physics (AIP) publishing house, mainly draft version of Journal of Chemical
Physics. This is inspired by the overleaf $\LaTeX$ template of AIP journals.

##  Usage

You can use this template with typst web app by simply clicking on âStart
from templateâ on the dashboard and searching for ` aloecius-aip ` .

For local usage, you can use the typst CLI by invoking the following command

    
    
    typst init @preview/aloecius-aip
    

typst will automatically create a new directory with all the necessary files
needed to compile the project.

##  Configuration

The preamble or the header of the document should be written in the following
way with your own necessary input variables to recreate the same formatting as
seen in the [ ` sample.pdf `
](https://github.com/typst/packages/raw/main/packages/preview/aloecius-
aip/0.0.1/sample.pdf)

    
    
    #import "@preview/aloecius-aip:0.0.1": *
    
    #show: article.with(
      title: "Typst Template for Journal of Chemical Physics (Draft)",
      authors: (
        "Author 1": author-meta(
          "GU",
          email: "user1@domain.com",
        ),
        "Author 2": author-meta(
          "GU",
          cofirst: false
        ),
        "Author 3": author-meta(
          "UG"
        )
      ),
      affiliations: (
        "UG": "University of Global Sciences",
        "GU": "Institute for Chemistry, Global University of Sciences"
      ),
      abstract: [
      Here goes the abstract. 
      ],
      bib: bibliography("./reference.bib")
    )
    

##  Important Variables

  * ` title ` : Title of the paper 
  * ` authors ` : A dictionary connecting the key as name of the author(s) and the value to be the affiliation of them including university, email, mail address, authorship and an alias, an example usage is shown below 

    
    
    Example:
    (
      "Author Name": (
        "affiliation": "affiliation-label",
        "email": "author.name@example.com", // Optional
        "address": "Mail address",  // Optional
        "name": "Alias Name", // Optional
        "cofirst": false // Optional, identify whether this author is the co-first author
        )
    )
    

  * ` affiliations ` : Dictionary of affiliations where keys are affiliations labels and values are affiliations addresses, and example usage is as follows 

    
    
    Example:
     (
        "affiliation-label": "Institution Name, University Name, Road, Post Code, Country"
     )
    

  * ` abstract ` : Abstract of the paper 
  * ` bib ` : passing the bibliography file wrapped into the typst ` bibliography() ` function, both ` Hayagriva ` and ` .bib ` format is supported. 

[ Create project in app ](/app?template=aloecius-aip&version=0.0.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/aloecius-aip:0.0.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Raunak Farhaz 
License:

     MIT 
Current version:

     0.0.1 
Last updated:

     July 3, 2024 
First released:

     July 3, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     13.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/aloecius-aip-0.0.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Raunak12775/aloecius-aip)
Discipline  s  :

    

  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Raunak Farhaz  .  Report issues on  [ their
repository ](https://github.com/Raunak12775/aloecius-aip) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.1  |  July 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

