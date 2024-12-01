![A preview of the ilm Typst
template.](https://packages.typst.org/preview/thumbnails/ilm-1.4.0-small.webp)

#  ilm

1.4.0

Versatile and minimal template for non-fiction writing. Ideal for class notes,
reports, and books

Featured  Template

[ Create project in app ](/app?template=ilm&version=1.4.0)

> âIlm (Urdu: Ø¹ÙÙÙÙ ) is the Urdu term for knowledge. It is pronounced
> as [ /É.lÉm/ ](https://en.wiktionary.org/wiki/%D8%B9%D9%84%D9%85#Urdu) .

A versatile, clean and minimal template for non-fiction writing. The template
is ideal for class notes, reports, and books.

It contains a title page, a table of contents, and indices for different types
of figures; images, tables, code blocks.

Dynamic running footer contains the title of the chapter (top-level heading).

See the [ example.pdf ](https://github.com/talal/ilm/blob/main/example.pdf)
file to see how it looks.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` ilm ` .

Alternatively, you can use the CLI to kick this project off using the command:

    
    
    typst init @preview/ilm
    

Typst will create a new directory with all the files needed to get you
started.

The template will initialize your package with a sample call to the ` ilm `
function in a show rule. If you, however, want to change an existing project
to use this template, you can add a show rule like this at the top of your
file:

    
    
    #import "@preview/ilm:1.4.0": *
    
    #set text(lang: "en")
    
    #show: ilm.with(
      title: [Your Title],
      author: "Max Mustermann",
      date: datetime(year: 2024, month: 03, day: 19),
      abstract: [#lorem(30)],
      bibliography: bibliography("refs.bib"),
      figure-index: (enabled: true),
      table-index: (enabled: true),
      listing-index: (enabled: true)
    )
    
    // Your content goes below.
    

> [!NOTE] This template uses the [ Iosevka ](https://typeof.net/Iosevka/) font
> for raw text. In order to use Iosevka, the font must be installed on your
> computer. In case Iosevka is not installed, as will be the case for Typst
> Web App, then the template will fall back to the default âFira Monoâ
> font.

##  Configuration

This template exports the ` ilm ` function with the following named arguments:

Argument  |  Default Value  |  Type  |  Description   
---|---|---|---  
` title ` |  ` Your Title ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The title for your work.   
` author ` |  ` Author ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  A string to specify the authorâs name   
` paper-size ` |  ` a4 ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  Specify a [ paper size string ](https://typst.app/docs/reference/layout/page#parameters-paper) to change the page size.   
` date ` |  ` none ` |  [ datetime ](https://typst.app/docs/reference/foundations/datetime/) |  The date that will be displayed on the cover page.   
` date-format ` |  ` [month repr:long] [day padding:zero], [year repr:full] ` |  [ string ](https://typst.app/docs/reference/foundations/str/) |  The format for the date that will be displayed on the cover page. By default, the date will be displayed as ` MMMM DD, YYYY ` .   
` abstract ` |  ` none ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  A brief summary/description of your work. This is shown on the cover page.   
` preface ` |  ` none ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The preface for your work. The preface content is shown on its own separate page after the cover.   
` chapter-pagebreak ` |  ` true ` |  [ bool ](https://typst.app/docs/reference/foundations/bool/) |  Setting this to ` false ` will prevent chapters from starting on a new page.   
` external-link-circle ` |  ` true ` |  [ bool ](https://typst.app/docs/reference/foundations/bool/) |  Setting this to ` false ` will disable the maroon circle that is shown next to external links.   
` table-of-contents ` |  ` outline() ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The result of a call to the [ outline function ](https://typst.app/docs/reference/model/outline/) or none. Setting this to ` none ` will disable the table of contents.   
` appendix ` |  ` (enabled: false, title: "Appendix", heading-numbering-format: "A.1.1.", body: none) ` |  [ dictionary ](https://typst.app/docs/reference/foundations/dictionary/) |  Setting ` enabled ` to ` true ` and defining your content in ` body ` will display the appendix after the main body of your document and before the bibliography.   
` bibliography ` |  ` none ` |  [ content ](https://typst.app/docs/reference/foundations/content/) |  The result of a call to the [ bibliography function ](https://typst.app/docs/reference/model/bibliography/) or none. Specifying this will configure numeric, IEEE-style citations.   
` figure-index ` |  ` (enabled: false, title: "Index of Figures") ` |  [ dictionary ](https://typst.app/docs/reference/foundations/dictionary/) |  Setting this to ` true ` will display an index of image figures at the end of the document.   
` table-index ` |  ` (enabled: false, title: "Index of Tables") ` |  [ dictionary ](https://typst.app/docs/reference/foundations/dictionary/) |  Setting this to ` true ` will display an index of table figures at the end of the document.   
` listing-index ` |  ` (enabled: false, title: "Index of Listings") ` |  [ dictionary ](https://typst.app/docs/reference/foundations/dictionary/) |  Setting this to ` true ` will display an index of listing (code block) figures at the end of the document.   
  
The above table gives you a _brief description_ of the different options that
you can choose to customize the template. For a detailed explanation of these
options, see the [ example.pdf
](https://github.com/talal/ilm/blob/main/example.pdf) file.

The function also accepts a single, positional argument for the body.

> [!NOTE] The language setting for text ( ` lang ` parameter of ` text `
> function) should be defined before the ` ilm ` function so that headings
> such as table of contents and bibliography will be defined as per the text
> language.

[ Create project in app ](/app?template=ilm&version=1.4.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/ilm:1.4.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Muhammad Talal Anwar ](https://github.com/talal)
License:

     MIT-0 
Current version:

     1.4.0 
Last updated:

     November 21, 2024 
First released:

     March 22, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     9.08 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ilm-1.4.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/talal/ilm)
Categor  ies  :

    

  * ![Book icon](/assets/icons/16-docs.svg) [ Book ](https://typst.app/universe/search/?category=book)
  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Muhammad Talal Anwar  .  Report issues on  [
their repository ](https://github.com/talal/ilm) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.4.0  |  November 21, 2024   
[ 1.3.1 ](https://typst.app/universe/package/ilm/1.3.1/) |  November 13, 2024   
[ 1.3.0 ](https://typst.app/universe/package/ilm/1.3.0/) |  November 4, 2024   
[ 1.2.1 ](https://typst.app/universe/package/ilm/1.2.1/) |  August 7, 2024   
[ 1.2.0 ](https://typst.app/universe/package/ilm/1.2.0/) |  August 2, 2024   
[ 1.1.3 ](https://typst.app/universe/package/ilm/1.1.3/) |  July 24, 2024   
[ 1.1.2 ](https://typst.app/universe/package/ilm/1.1.2/) |  June 19, 2024   
[ 1.1.1 ](https://typst.app/universe/package/ilm/1.1.1/) |  May 6, 2024   
[ 1.1.0 ](https://typst.app/universe/package/ilm/1.1.0/) |  April 12, 2024   
[ 1.0.0 ](https://typst.app/universe/package/ilm/1.0.0/) |  April 9, 2024   
[ 0.1.3 ](https://typst.app/universe/package/ilm/0.1.3/) |  April 8, 2024   
[ 0.1.2 ](https://typst.app/universe/package/ilm/0.1.2/) |  March 26, 2024   
[ 0.1.1 ](https://typst.app/universe/package/ilm/0.1.1/) |  March 23, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ilm/0.1.0/) |  March 22, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

