![A preview of the minimal-presentation Typst
template.](https://packages.typst.org/preview/thumbnails/minimal-
presentation-0.3.0-small.webp)

#  minimal-presentation

0.3.0

A modern minimalistic presentation template ready to use

[ Create project in app ](/app?template=minimal-presentation&version=0.3.0)

A modern minimalistic presentation template ready to use.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` minimal-presentation ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/minimal-presentation
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` project ` function with the following named
arguments:

  * ` title ` : The bookâs title as content. 
  * ` sub-title ` : The bookâs subtitle as content. 
  * ` author ` : Content or an array of content to specify the author. 
  * ` aspect-ratio ` : Defaults to ` 16-9 ` . Can be also ` 4-3 ` . 

The function also accepts a single, positional argument for the body of the
book.

The template will initialize your package with a sample call to the ` project
` function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/minimal-presentation:0.1.0": *
    
    #set text(font: "Lato")
    #show math.equation: set text(font: "Lato Math")
    #show raw: set text(font: "Fira Code")
    
    #show: project.with(
      title: "Minimalist presentation template",
      sub-title: "This is where your presentation begins",
      author: "Flavio Barisi",
      date: "10/08/2023",
      index-title: "Contents",
      logo: image("./logo.svg"),
      logo-light: image("./logo_light.svg"),
      cover: image("./image_3.jpg")
    )
    
    = This is a section
    
    == This is a slide title
    
    #lorem(10)
    
    - #lorem(10)
      - #lorem(10)
      - #lorem(10)
      - #lorem(10)
    
    == One column image
    
    #figure(
      image("image_1.jpg", height: 10.5cm),
      caption: [An image],
    ) <image_label>
    
    == Two columns image
    
    #columns-content()[
      #figure(
        image("image_1.jpg", width: 100%),
        caption: [An image],
      ) <image_label_1>
    ][
      #figure(
        image("image_1.jpg", width: 100%),
        caption: [An image],
      ) <image_label_2>
    ]
    
    == Two columns
    
    #columns-content()[
      - #lorem(10)
      - #lorem(10)
      - #lorem(10)
    ][
      #figure(
        image("image_3.jpg", width: 100%),
        caption: [An image],
      ) <image_label_3>
    ]
    
    = This is a section
    
    == This is a slide title
    
    #lorem(10)
    
    = This is a section
    
    == This is a slide title
    
    #lorem(10)
    
    = This is a section
    
    == This is a slide title
    
    #lorem(10)
    
    = This is a very v v v v v v v v v v v v v v v v v v v v  long section
    
    == This is a very v v v v v v v v v v v v v v v v v v v v  long slide title
    
    = sub-title test
    
    == Slide title
    
    #lorem(50)
    
    === Slide sub-title 1
    
    #lorem(50)
    
    === Slide sub-title 2
    
    #lorem(50)
    
    
    

##  Fonts

You can use the font selected by the author of this plugin, by download theme
at the following link:

[ https://github.com/flavio20002/typst-presentation-minimal-
template/tree/main/fonts ](https://github.com/flavio20002/typst-presentation-
minimal-template/tree/main/fonts)

You can then import thme in your system, import them in the typst web app or
just put them in a folder and launch the compilation with the following
argoument:

    
    
    typst watch main.typ --root . --font-path fonts
    

[ Create project in app ](/app?template=minimal-presentation&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/minimal-presentation:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Flavio Barisi 
License:

     MIT-0 
Current version:

     0.3.0 
Last updated:

     November 18, 2024 
First released:

     September 2, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     755 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minimal-presentation-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/flavio20002/typst-presentation-minimal-template)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Flavio Barisi  .  Report issues on  [ their
repository ](https://github.com/flavio20002/typst-presentation-minimal-
template) .  You can also try to ask for help with this  template  on the  [
Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  November 18, 2024   
[ 0.2.0 ](https://typst.app/universe/package/minimal-presentation/0.2.0/) |  October 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/minimal-presentation/0.1.0/) |  September 2, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

