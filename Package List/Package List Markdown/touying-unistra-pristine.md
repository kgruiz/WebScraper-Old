![A preview of the touying-unistra-pristine Typst
template.](https://packages.typst.org/preview/thumbnails/touying-unistra-
pristine-1.2.0-small.webp)

#  touying-unistra-pristine

1.2.0

Touying theme adhering to the core principles of the style guide of the
University of Strasbourg, France

[ Create project in app ](/app?template=touying-unistra-
pristine&version=1.2.0)

> [!WARNING] This theme is **NOT** affiliated with the University of
> Strasbourg. The logo and the fonts are the property of the University of
> Strasbourg.

**touying-unistra-pristine** is a [ Touying ](https://github.com/touying-
typ/touying) theme for creating presentation slides in [ Typst
](https://github.com/typst/typst) , adhering to the core principles of the [
style guide of the University of Strasbourg, France
](https://langagevisuel.unistra.fr/) (French). It is an **unofficial** theme
and it is **NOT** affiliated with the University of Strasbourg.

This theme was partly created using components from [ tud-slides
](https://github.com/typst-tud/tud-slides) and [ grape-suite
](https://github.com/piepert/grape-suite) .

  * **Focus Slides** , with predefined themes and custom colors support. 
  * **Hero Slides** . 
  * **Gallery Slides** . 
  * **Admonitions** (with localization and plural support). 
  * **Universally Toggleable Header/Footer** (see [ Configuration ](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-pristine/1.2.0/#Configuration) ). 
  * Subset of predefined colors taken from the [ style guide of the University of Strasbourg ](https://langagevisuel.unistra.fr/index.php?id=396) (see [ colors.typ ](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-pristine/1.2.0/colors.typ) ). 

See [ example/example.pdf
](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-
pristine/1.2.0/example/example.pdf) for an example PDF output, and [
example/example.typ
](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-
pristine/1.2.0/example/example.typ) for the corresponding Typst file.

These steps assume that you already have [ Typst ](https://typst.app/)
installed and/or running.

##  Import from Typst Universe

    
    
    #import "@preview/touying:0.5.3": *
    #import "@preview/touying-unistra-pristine:1.2.0": *
    
    #show: unistra-theme.with(
      aspect-ratio: "16-9",
      config-info(
        title: [Title],
        subtitle: [_Subtitle_],
        author: [Author],
        date: datetime.today().display("[month repr:long] [day], [year repr:full]"),
      ),
    )
    
    #title-slide[]
    
    = Example Section Title
    
    == Example Slide
    
    A slide with *important information*.
    
    #lorem(50)
    

##  Local installation

###  1\. Clone the project

` git clone https://github.com/spidersouris/touying-unistra-pristine `

###  2\. Import Touying and touying-unistra-pristine

See [ example/example.typ
](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-
pristine/1.2.0/example/example.typ) for a complete example with configuration.

    
    
    #import "@preview/touying:0.5.3": *
    #import "src/unistra.typ": *
    #import "src/colors.typ": *
    #import "src/admonition.typ": *
    
    #show: unistra-theme.with(
      aspect-ratio: "16-9",
      config-info(
        title: [Title],
        subtitle: [_Subtitle_],
        author: [Author],
        date: datetime.today().display("[month repr:long] [day], [year repr:full]"),
      ),
    )
    
    #title-slide[]
    
    = Example Section Title
    
    == Example Slide
    
    A slide with *important information*.
    
    #lorem(50)
    

> [!NOTE] The default font used by touying-unistra-pristine is âUnistra
> Aâ, a font that can only be downloaded by students and staff from the
> University of Strasbourg. If the font is not installed on your computer,
> Segoe UI or Roboto will be used as a fallback, in that specific order. You
> can change that behavior in the [ settings
> ](https://github.com/typst/packages/raw/main/packages/preview/touying-
> unistra-pristine/1.2.0/#Configuration) .

The theme can be configured to your liking by adding the ` config-store() `
object when initializing ` unistra-theme ` . An example with the ` quotes `
setting can be found in [ example/example.typ
](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-
pristine/1.2.0/example/example.typ) .

A complete list of settings can be found in the ` config-store ` object in [
src/unistra.typ
](https://github.com/typst/packages/raw/main/packages/preview/touying-unistra-
pristine/1.2.0/src/unistra.typ) .

[ Create project in app ](/app?template=touying-unistra-
pristine&version=1.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/touying-unistra-pristine:1.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Enzo Doyen ](https://edoyen.com/)
License:

     MIT 
Current version:

     1.2.0 
Last updated:

     November 22, 2024 
First released:

     September 11, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     19.7 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/touying-unistra-pristine-1.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/spidersouris/touying-unistra-pristine)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  template  is a project of  Enzo Doyen  .  Report issues on  [ their
repository ](https://github.com/spidersouris/touying-unistra-pristine) .  You
can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.2.0  |  November 22, 2024   
[ 1.1.0 ](https://typst.app/universe/package/touying-unistra-pristine/1.1.0/) |  October 17, 2024   
[ 1.0.0 ](https://typst.app/universe/package/touying-unistra-pristine/1.0.0/) |  September 11, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

