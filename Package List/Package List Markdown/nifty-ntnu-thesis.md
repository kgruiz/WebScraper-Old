![A preview of the nifty-ntnu-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/nifty-ntnu-
thesis-0.1.1-small.webp)

#  nifty-ntnu-thesis

0.1.1

An NTNU thesis template

[ Create project in app ](/app?template=nifty-ntnu-thesis&version=0.1.1)

Port of [ thesis-NTNU ](https://github.com/COPCSE-NTNU/thesis-NTNU) template
to Typst. [ main.pdf ](https://github.com/saimnaveediqbal/thesis-NTNU-
typst/blob/main/template/main.typ) contains a full usage example, see [
example.pdf ](https://github.com/saimnaveediqbal/thesis-NTNU-
typst/blob/main/example.pdf) for a rendered pdf.

To use this template you need to import it at the beginning of your document:

    
    
    #import "@preview/nifty-ntnu-thesis:0.1.0": *
    

The template has many arguments you can specify:

Argument  |  Default Value  |  Type  |  Description   
---|---|---|---  
` title ` |  ` Title ` |  [content]  |  The title of the thesis.   
` short-title ` |  ` Title ` |  [content]  |  Short form of the title. If specified, will show up in the header   
` author ` |  ` Author ` |  [array]  |  An array of authors   
` short-author ` |  ``  |  [string]  |  Short form version of the authors. If specified, will show up in header   
` font ` |  ` Charter ` |  [string]  |  Main font of template   
` raw-font ` |  ` DejaVu Sans Mono ` |  [string]  |  Font used for code listings   
` paper-size ` |  ` a4 ` |  [string]  |  Specify a [paper size string] to change the page size.   
` date ` |  ` datetime.today() ` |  [datetime]  |  The date that will be displayed on the cover page.   
` date-format ` |  ` [day padding:zero]/[month repr:numerical]/[year repr:full] ` |  [string]  |  The format for the date that will be displayed on the cover page. By default, the date will be displayed as ` DD/MM/YYYY ` .   
` abstract-en ` |  ` none ` |  [content]  |  English abstract shown before main content.   
` abstract-no ` |  ` none ` |  [content]  |  Norwegian abstract shown before main content.   
` preface ` |  ` none ` |  [content]  |  The preface for your work. The preface content is shown on its own separate page after the abstracts.   
` table-of-contents ` |  ` outline() ` |  [content]  |  The table of contents. Setting this to ` none ` will disable the table of contents.   
` titlepage ` |  ` false ` |  [bool]  |  Whether to display the titlepage or not.   
` bibliography ` |  ` none ` |  [content]  |  The bibliography function or none. Specifying this will configure numeric, IEEE-style citations.   
` chapter-pagebreak ` |  ` true ` |  [bool]  |  Setting this to ` false ` will prevent chapters from starting on a new page.   
` chapters-on-odd ` |  ` false ` |  [bool]  |  Setting this to ` false ` will prevent chapters from only starting on an odd page.   
` figure-index ` |  ` (enabled: true, title: "Figures") ` |  [dictionary]  |  Setting this to ` true ` will display a index of image figures at the end of the document.   
` table-index ` |  ` (enabled: true, title: "Tables") ` |  [dictionary]  |  Setting this to ` true ` will display a index of table figures at the end of the document.   
` listing-index ` |  ` (enabled: true, title: "Listings") ` |  [dictionary]  |  Setting this to ` true ` will display a index of listing (code block) figures at the end of the document.   
  
  * [ ] Styling for: 
    * [x] Code blocks 
    * [x] Tables 
    * [x] Header and footer 
    * [x] Lists 
  * [x] Subfigures 
  * [x] Abstract 
  * [x] Preface 
  * [x] Code block captions 
  * [x] Bibliography 
  * [ ] Norwegian language support 
  * [x] Proper figure numbering 
  * [x] Short title in header 
  * [x] Multiple authors 
  * [x] Start chapters on only odd pages 

Thanks to:

  * The creator of the [ ILM template ](https://github.com/talal/ilm/blob/main/lib.typ) which I used as the basis for this. 
  * The creators of the original [ NTNU thesis template ](https://github.com/COPCSE-NTNU/thesis-NTNU)
  * The creators of the [ elsearticle template ](https://github.com/maucejo/elsearticle) for their implementation of subfigures and appendix environment 

[ Create project in app ](/app?template=nifty-ntnu-thesis&version=0.1.1)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/nifty-ntnu-thesis:0.1.1

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Saim Iqbal 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     November 6, 2024 
First released:

     August 29, 2024 
Archive size:

     856 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/nifty-ntnu-thesis-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/saimnaveediqbal/thesis-NTNU-typst)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Saim Iqbal  .  Report issues on  [ their
repository ](https://github.com/saimnaveediqbal/thesis-NTNU-typst) .  You can
also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 6, 2024   
[ 0.1.0 ](https://typst.app/universe/package/nifty-ntnu-thesis/0.1.0/) |  August 29, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

