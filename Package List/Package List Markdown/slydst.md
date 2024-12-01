![A preview of the slydst Typst
template.](https://packages.typst.org/preview/thumbnails/slydst-0.1.3-small.webp)

#  slydst

0.1.3

Create simple static slides using standard headings

[ Create project in app ](/app?template=slydst&version=0.1.3)

Create simple static slides with Typst.

Slydst allows the creation of slides using Typst headings. This simplicity
comes at the expense of dynamic content such as subslide animations. For more
complete and complex slides functionalities, see other tools such as Polylux.

See the [ preview
](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/#example)
below.

##  Usage

To start, just use the following preamble (only the title is required).

    
    
    #import "@preview/slydst:0.1.3": *
    
    #show: slides.with(
      title: "Slydst: Slides with Typst",
      subtitle: none,
      date: none,
      authors: ("Gaspard Lambrechts",),
      layout: "medium",
      ratio: 4/3,
      title-color: none,
    )
    
    Insert your content here.
    

Then, insert your content.

  * **Level-one headings** corresponds to new sections. 
  * **Level-two headings** corresponds to new slides. 
  * Blank space can be filled with **vertical spaces** like ` #v(1fr) ` . 

    
    
    == Outline
    
    #outline()
    
    = First section
    
    == First slide
    
    #figure(image("figure.png", width: 60%), caption: "Caption")
    
    #v(1fr)
    
    #lorem(20)
    

##  Title page

Alternatively, you can omit the title argument and write your own title page.
Note that the subtitle, date and authors arguments be ignored in that case.

    
    
    #show: slides.with(
      layout: "medium",
    )
    
    #align(center + horizon)[
      #text(2em, default-color)[*Slydst: Slides in Typst*]
    ]
    
    Insert your content here.
    

We advise the use of the ` title-slide ` function that ensures a proper
centering and no page numbering.

    
    
    #show: slides
    
    #title-slide(layout: "medium")[
      #text(2em, default-color)[*Slydst: Slides in Typst*]
    ]
    
    Insert your content here.
    

##  Components

Definitions, theorems, lemmas, corollaries and algorithms boxes are also
available.

    
    
    #definition(title: "An interesting definition")[
      #lorem(20)
    ]
    

##  Documentation

###  ` slides `

  * ` content ` : ` content ` \- content of the presentation 
  * ` title ` : ` str ` \- title (required) 
  * ` subtitle ` : ` str ` \- subtitle 
  * ` date ` : ` str ` \- date 
  * ` authors ` : ` array ` of ` content ` or ` content ` \- list of authors or author content 
  * ` layout ` : ` str in ("small", "medium", "large") ` \- layout selection 
  * ` ratio ` : ` float ` or ` ratio ` or ` int ` \- width to height ratio 
  * ` title-color ` : ` color ` or ` gradient ` \- color of title and headings 

###  ` title-slide `

  * ` content ` : ` content ` \- content of the slide 

###  ` definition ` , ` theorem ` , ` lemma ` , ` corollary ` , ` algorithm `

  * ` content ` : ` content ` \- content of the block 
  * ` title ` : ` str ` \- title of the block 
  * ` fill-header ` : ` color ` \- color of the header (inferred if only ` fill-body ` is specified) 
  * ` fill-body ` : ` color ` \- color of the body (inferred if only ` fill-header ` is specified) 
  * ` radius ` : ` length ` \- radius of the corners of the block 

##  Example

`
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-01.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-02.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-03.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-04.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-05.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-06.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-07.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-08.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-09.svg)
` `
![](https://github.com/typst/packages/raw/main/packages/preview/slydst/0.1.3/svg/example-10.svg)
`

[ Create project in app ](/app?template=slydst&version=0.1.3)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/slydst:0.1.3

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Gaspard Lambrechts ](https://github.com/glambrechts)
License:

     MIT 
Current version:

     0.1.3 
Last updated:

     November 12, 2024 
First released:

     November 18, 2023 
Minimum Typst version:

     0.12.0 
Archive size:

     4.12 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/slydst-0.1.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/glambrechts/slydst)
Categor  ies  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)
  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  template  is a project of  Gaspard Lambrechts  .  Report issues on  [
their repository ](https://github.com/glambrechts/slydst) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.3  |  November 12, 2024   
[ 0.1.2 ](https://typst.app/universe/package/slydst/0.1.2/) |  November 12, 2024   
[ 0.1.1 ](https://typst.app/universe/package/slydst/0.1.1/) |  March 18, 2024   
[ 0.1.0 ](https://typst.app/universe/package/slydst/0.1.0/) |  November 18, 2023   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

