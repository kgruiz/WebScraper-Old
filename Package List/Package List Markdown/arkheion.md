![A preview of the arkheion Typst
template.](https://packages.typst.org/preview/thumbnails/arkheion-0.1.0-small.webp)

#  arkheion

0.1.0

A simple template reproducing popular arXiv templates.

[ Create project in app ](/app?template=arkheion&version=0.1.0)

A Typst template based on popular LateX template used in arXiv and bio-arXiv.
Inspired by [ arxiv-style ](https://github.com/kourgeorge/arxiv-style)

##  Usage

**Import**

    
    
    #import "@preview/arkheion:0.1.0": arkheion, arkheion-appendices
    

**Main body**

    
    
    #show: arkheion.with(
      title: "ArXiv Typst Template",
      authors: (
        (name: "Author 1", email: "user@domain.com", affiliation: "Company", orcid: "0000-0000-0000-0000"),
        (name: "Author 2", email: "user@domain.com", affiliation: "Company"),
      ),
      // Insert your abstract after the colon, wrapped in brackets.
      // Example: `abstract: [This is my abstract...]`
      abstract: lorem(55),
      keywords: ("First keyword", "Second keyword", "etc."),
      date: "May 16, 2023",
    )
    

**Appendix**

    
    
    #show: arkheion-appendices
    =
    
    == Appendix section
    
    #lorem(100)
    
    

##  License

The MIT License (MIT)

Copyright Â© 2023 Manuel GoulÃ£o

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the âSoftwareâ), to
deal in the Software without restriction, including without limitation the
rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED âAS ISâ, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[ Create project in app ](/app?template=arkheion&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/arkheion:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Manuel GoulÃ£o 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     March 23, 2024 
First released:

     March 23, 2024 
Archive size:

     4.85 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/arkheion-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mgoulao/arkheion)
Discipline  s  :

    

  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  Manuel GoulÃ£o  .  Report issues on  [ their
repository ](https://github.com/mgoulao/arkheion) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  March 23, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

