![A preview of the ssrn-scribe Typst
template.](https://packages.typst.org/preview/thumbnails/ssrn-
scribe-0.6.0-small.webp)

#  ssrn-scribe

0.6.0

Personal working paper template for general doc and SSRN paper.

[ Create project in app ](/app?template=ssrn-scribe&version=0.6.0)

Following the official tutorial, I create a single-column paper template for
general use. You can use it for papers published on SSRN etc.

##  How to use

###  Use as a template package

Typst integrated the template with their official package manager. You can use
it as the other third-party packages.

You only need to enter the following command in the terminal to initialize the
template.

    
    
    typst init @preview/ssrn-scribe
    

If will generate a subfolder ` ssrn-scribe ` including the ` main.typ ` file
in the current directory with the latest version of the template.

###  Mannully use

  1. Download the template or clone the repository. 
  2. generate your bibliography file using ` .biblatex ` and store the file in the same directory of the template. 
  3. modify the ` main.typ ` file in the subfolder ` /template ` and compile it. **_Note:_ You should have ` paper_template.typ ` and ` main.typ ` in the same directory. **

In the template, you can modify the following parameters:

` maketitle ` is a boolean ( **compulsory** ). If ` maketitle=true ` , the
template will generate a new page for the title. Otherwise, the title will be
shown on the first page.

  * ` maketitle=true ` : 

Parameter  |  Default  |  Optional  |  Description   
---|---|---|---  
` font ` |  âPT Serifâ  |  Yes  |  The font of the paper. You can choose âTimes New Romanâ or âPalatinoâ   
` fontsize ` |  11pt  |  Yes  |  The font size of the paper. You can choose 10pt or 12pt   
` title ` |  âTitleâ  |  No  |  The title of the paper   
` subtitle ` |  none  |  Yes  |  The subtitle of the paper, use ââ or []   
` authors ` |  none  |  No  |  The authors of the paper   
` date ` |  none  |  Yes  |  The date of the paper   
` abstract ` |  none  |  Yes  |  The abstract of the paper   
` keywords ` |  none  |  Yes  |  The keywords of the paper   
` JEL ` |  none  |  Yes  |  The JEL codes of the paper   
` acknowledgments ` |  none  |  Yes  |  The acknowledgment of the paper   
` bibliography ` |  none  |  Yes  |  The bibliography of the paper ` bibliography: bibliography("bib.bib", title: "References", style: "apa") `  
  
  * ` maketitle=false ` : 

Parameter  |  Default  |  Optional  |  Description   
---|---|---|---  
` font ` |  âPT Serifâ  |  Yes  |  The font of the paper. You can choose âTimes New Romanâ or âPalatinoâ   
` fontsize ` |  11pt  |  Yes  |  The font size of the paper. You can choose 10pt or 12pt   
` title ` |  âTitleâ  |  No  |  The title of the paper   
` subtitle ` |  none  |  Yes  |  The subtitle of the paper, use ââ or []   
` authors ` |  none  |  No  |  The authors of the paper   
` date ` |  none  |  Yes  |  The date of the paper   
` bibliography ` |  none  |  Yes  |  The bibliography of the paper ` bibliography: bibliography("bib.bib", title: "References", style: "apa") `  
  
**Note: You need to keep the comma at the end of the first bracket of the
authorâs list, even if you have only one author.**

    
    
        (
        name: "",
        affiliation: "", // optional
        email: "", // optional
        note: "", // optional
        ),
    
    
    
    #import "@preview/ssrn-scribe:0.6.0": *
    
    #show: paper.with(
      font: "PT Serif", // "Times New Roman"
      fontsize: 12pt, // 12pt
      maketitle: true, // whether to add new page for title
      title: [#lorem(5)], // title 
      subtitle: "A work in progress", // subtitle
      authors: (
        (
          name: "Theresa Tungsten",
          affiliation: "Artos Institute",
          email: "tung@artos.edu",
          note: "123",
        ),
      ),
      date: "July 2023",
      abstract: lorem(80), // replace lorem(80) with [ Your abstract here. ]
      keywords: [
        Imputation,
        Multiple Imputation,
        Bayesian,],
      JEL: [G11, G12],
      acknowledgments: "This paper is a work in progress. Please do not cite without permission.", 
      // bibliography: bibliography("bib.bib", title: "References", style: "apa"),
    )
    = Introduction
    #lorem(50)
    
    

##  Preview

###  Example

Here is a screenshot of the template:
![Example](https://minioapi.pjx.ac.cn/img1/2024/03/63ce084e2a43bc2e7e31bd79315a0fb5.png)

###  Example-brief with ` maketitle=true `

![example-brief-
true](https://minioapi.pjx.ac.cn/img1/2024/06/8d203bd7f2fbf20b39b33334f0ee4a36.png)

###  Example-brief with ` maketitle=false `

![example-brief-
false](https://minioapi.pjx.ac.cn/img1/2024/06/83dd5821409031ce0a2c2a15e014cc60.png)

[ Create project in app ](/app?template=ssrn-scribe&version=0.6.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ssrn-scribe:0.6.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     jxpeng98 
License:

     MIT 
Current version:

     0.6.0 
Last updated:

     June 11, 2024 
First released:

     March 20, 2024 
Archive size:

     4.07 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ssrn-scribe-0.6.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/jxpeng98/Typst-Paper-Template)
Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  jxpeng98  .  Report issues on  [ their
repository ](https://github.com/jxpeng98/Typst-Paper-Template) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.6.0  |  June 11, 2024   
[ 0.5.0 ](https://typst.app/universe/package/ssrn-scribe/0.5.0/) |  April 5, 2024   
[ 0.4.9 ](https://typst.app/universe/package/ssrn-scribe/0.4.9/) |  March 20, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

