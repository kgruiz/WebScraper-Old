![A preview of the scholarly-epfl-thesis Typst
template.](https://packages.typst.org/preview/thumbnails/scholarly-epfl-
thesis-0.1.2-small.webp)

#  scholarly-epfl-thesis

0.1.2

A template for a thesis at EPFL

[ Create project in app ](/app?template=scholarly-epfl-thesis&version=0.1.2)

Port of [ an unofficial LaTeX template
](https://www.overleaf.com/latex/templates/swiss-federal-institute-of-
technology-in-lausanne-epfl-phd-thesis/dhcgtppybcwv) to Typst.

A complete example is shown in the [ example folder
](https://github.com/augustebaum/epfl-thesis-typst/blob/v0.1.2/example) ; see
[ example.pdf ](https://github.com/augustebaum/epfl-thesis-
typst/blob/v0.1.2/example/main.pdf) for the rendered PDF. The document
structure can of course be adapted to your needs.

##  Screenshots

![](https://raw.githubusercontent.com/augustebaum/epfl-thesis-
typst/v0.1.2/screenshots/cover_page.png)
![](https://raw.githubusercontent.com/augustebaum/epfl-thesis-
typst/v0.1.2/screenshots/acknowledgements.png)
![](https://raw.githubusercontent.com/augustebaum/epfl-thesis-
typst/v0.1.2/screenshots/tables_and_figures.png)
![](https://raw.githubusercontent.com/augustebaum/epfl-thesis-
typst/v0.1.2/screenshots/appendix.png)

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` epfl ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/scholarly-epfl-thesis
    

Typst will create a new directory with all the files needed to get you
started.

This template uses certain fonts, including Utopia Latex for most text. If the
font is not available to Typst, as is the case in the Typst Web App, then the
template will fall back to a default font. The font is included in example
shown in the Github repository [ here ](https://github.com/augustebaum/epfl-
thesis-typst/blob/v0.1.2/example/utopia_font) , otherwise you can download it
however you like.

###  Configuration

This template exports the ` template ` function with the following named
arguments:

  * ` title ` : The workâs title. Default: ` [Your Title] `
  * ` author ` : The authorâs name. Default: ` "Your Name" `
  * ` paper-size ` : The workâs [ paper size ](https://typst.app/docs/reference/layout/page#parameters-paper) . Default: ` "a4" `
  * ` date ` : The workâs date. Unused for now. Default: ` none `
  * ` date-format ` : The format for displaying the workâs date. By default, the date will be displayed as ` MMMM DD, YYYY ` . Unused for now. Default: ` [month repr:long] [day padding:zero], [year repr:full] `

The template will initialize your package with a basic call to the ` template
` function in a ` show ` rule. If you, however, want to change an existing
project to use this template, you can add a show rule like this at the top of
your file:

    
    
    #import "@preview/scholarly-epfl-thesis:0.1.2": *
    
    #show: template.with(
      title: [Your Title],
      author: "Your Name",
      date: datetime(year: 2024, month: 03, day: 19),
    )
    
    // Your content goes below.
    

Also included are the ` front-matter ` , ` main-matter ` and ` back-matter `
helpers which you can use in ` show ` rules in your document to change certain
settings when they are called: e.g. reset the page numbering when main matter
starts, or number headings with letters in the back matter. See [
example/main.typ ](https://github.com/augustebaum/epfl-thesis-
typst/blob/v0.1.2/example/main.typ) for example usage.

##  Development

In order for Typst to access the Utopia Latex font, you need to include it
your font path. Iâve included the font in ` example/ ` so that you can run
this in your shell:

    
    
    cd example
    typst w main.typ --font-path .
    

See [ here ](https://typst.app/docs/reference/text/text/#parameters-font) for
more about the font path.

##  Credits

  * The creators of the [ ILM template ](https://github.com/talal/ilm/blob/main/lib.typ) for the page layout, header and README format which I drew heavily from 
  * The creators of the [ original LateX template ](https://www.overleaf.com/latex/templates/swiss-federal-institute-of-technology-in-lausanne-epfl-phd-thesis/dhcgtppybcwv)

##  TODO

  * [ ] Hide header and page number on empty pages 
    * Tracking issue: [ https://github.com/typst/typst/issues/2722 ](https://github.com/typst/typst/issues/2722)
    * [ ] Quick fix: [ https://github.com/typst/typst/issues/2722#issuecomment-1911150996 ](https://github.com/typst/typst/issues/2722#issuecomment-1911150996)
      * Tried it, when I put it in the ` show heading.where(level: 1) ` it disrupts the outline. I guess it would work if you put in the ` metadata ` manually before each chapter. 
    * Optionally donât force an empty page 
  * [ ] Table of contents 
    * [ ] Join abstracts into one outline entry 
      * I removed the lines for the German and French abstracts so it takes less space, but itâs not exactly the same as the original which has a custom outline entry 
    * [ ] Style 
      * [ ] Space between heading number and heading 
      * [ ] Level 1 Headings are bold and donât have dot lines between the heading and the page number 
      * [ https://sitandr.github.io/typst-examples-book/book/snippets/chapters/outlines.html ](https://sitandr.github.io/typst-examples-book/book/snippets/chapters/outlines.html)
      * ` outline.entry ` canât be modified easily because the arguments are positional 
        * I found a solution on discord but it strips away the links. I tried putting in a ` link ` manually but that gets formatted like a link in the text, which is not what weâre looking for. 
          * A solution to that link issue can be found in this thread: [ https://discord.com/channels/1054443721975922748/1231526650462736474 ](https://discord.com/channels/1054443721975922748/1231526650462736474)
      * I might use [ https://typst.app/universe/package/outrageous ](https://typst.app/universe/package/outrageous)
    * [x] Include list of figures and tables 
  * [ ] Figures 
    * [ ] Subfigures 
      * tracking issue: [ https://github.com/typst/typst/issues/246 ](https://github.com/typst/typst/issues/246)
      * A wip: [ https://github.com/tingerrr/subpar ](https://github.com/tingerrr/subpar)
      * A quickfix: [ https://github.com/typst/typst/issues/246#issuecomment-1928735969 ](https://github.com/typst/typst/issues/246#issuecomment-1928735969)
        * Works if you abuse the ` kind ` mechanic, but I canât get the superfigureâs caption centered 
    * [x] Short caption for table of contents 
      * [ https://sitandr.github.io/typst-examples-book/book/snippets/chapters/outlines.html ](https://sitandr.github.io/typst-examples-book/book/snippets/chapters/outlines.html)
    * [x] Numbering 
      * i-figured? 
  * [ ] Chemistry examples? 
  * [ ] CV? 
  * [x] Spacing after heading is different depending on if weâre in frontmatter or main matter 
  * [x] Cover page should take its values from the template arguments 
    * cover page is separate from template, given that it is not meant to be printed anyways 
      * this also reflects how the latex template works 
  * [x] Spacing before new sub-heading 
  * [x] Readme 
    * [x] How-to 
    * [x] Screenshots 
    * [x] Thumbnail 
  * [x] Refactor to ` front-matter ` , ` main-matter ` â¦ 
  * [x] Numbering 
    * [x] Why are pagenumbers bold on certain pages? 
      * There was a show rule that inserted a pagebreak before each chapter. This produced a bug where the chapter start pages was inconsistent with the information Typst has. 
    * [x] numbering starts on acknowledgements (or somewhere else?) 
  * [x] Equations 
    * [x] Numbering 
      * [ https://sitandr.github.io/typst-examples-book/book/snippets/math/numbering.html ](https://sitandr.github.io/typst-examples-book/book/snippets/math/numbering.html)
    * [x] Align left 
      * Why did ` pad ` work and not ` h ` ? 
  * [x] page numbers are too low in the page 
  * [x] First-line indent for front matter 
    * [ https://typst.app/docs/reference/model/par/#parameters-first-line-indent ](https://typst.app/docs/reference/model/par/#parameters-first-line-indent)
    * Actually this looks unintentional? 
  * [x] Appendices 
  * [x] Margins 
  * [x] Tables 
    * [x] Style 

[ Create project in app ](/app?template=scholarly-epfl-thesis&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/scholarly-epfl-thesis:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Auguste Baum ](https://github.com/augustebaum)
License:

     MIT 
Current version:

     0.1.2 
Last updated:

     November 4, 2024 
First released:

     May 3, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     425 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/scholarly-epfl-thesis-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/augustebaum/epfl-thesis-typst)
Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Auguste Baum  .  Report issues on  [ their
repository ](https://github.com/augustebaum/epfl-thesis-typst) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  November 4, 2024   
[ 0.1.1 ](https://typst.app/universe/package/scholarly-epfl-thesis/0.1.1/) |  July 18, 2024   
[ 0.1.0 ](https://typst.app/universe/package/scholarly-epfl-thesis/0.1.0/) |  May 3, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

