![A preview of the kunskap Typst
template.](https://packages.typst.org/preview/thumbnails/kunskap-0.1.0-small.webp)

#  kunskap

0.1.0

A template with generous spacing for reports, assignments, course documents,
and similar (shorter) documents.

[ Create project in app ](/app?template=kunskap&version=0.1.0)

A [ Typst ](https://typst.app/) template mainly intended for shorter academic
documents such as reports, assignments, course documents, and so on. Its name,
_âkunskapâ_ , means _knowledge_ in Swedish.

See [ this example PDF ](https://github.com/mbollmann/typst-
kunskap/blob/main/example.pdf) for a longer demonstration of how it looks.

##  Usage

You can use this template in the Typst web app by clicking âStart from
templateâ on the dashboard and searching for ` kunskap ` .

Alternatively, you can use the CLI to kick this project off using the command

    
    
    typst init @preview/kunskap
    

Typst will create a new directory with all the files needed to get you
started.

##  Configuration

This template exports the ` kunskap ` function with several arguments. You
will want to set at least the following, describing the metadata of your
document:

Argument  |  Description   
---|---  
` title ` |  Title of your document   
` author ` |  Author(s) of your document; can be any content, or an array of strings   
` date ` |  Date string to display below the author(s); defaults to a string of todayâs date, but can take any content. Set to ` none ` if you donât use it at all.   
` header ` |  Content that appears in the left-hand side of the header on every page; this is intended for e.g. the name of a course or some other contextual information for the document, but can of course also be left empty.   
  
Additionally, you can configure some aspects of the templateâs layout with
the following arguments:

Argument  |  Description  |  Default   
---|---|---  
` paper-size ` |  Paper size of the document  |  ` "a4" `  
` body-font ` |  Font for the body text  |  ` "Noto Serif" `  
` body-font-size ` |  Font size for the body text  |  ` 10pt `  
` headings-font ` |  Font for the headings  |  ` ("Source Sans Pro", "Source Sans 3") `  
` raw-font ` |  Font for raw (i.e. monospaced) text  |  ` ("Hack", "Source Code Pro") ` [^1]   
` raw-font-size ` |  Font size for raw text  |  ` 9pt `  
` link-color ` |  Color for highlighting [ links ](https://typst.app/docs/reference/model/link/) |  ` rgb("#3282b8") ` ![Color sample](https://img.shields.io/badge/steel_blue-3282b8)  
` muted-color ` |  Color for muted text, such as page numbers and headers after the first page  |  ` luma(160) `  
` block-bg-color ` |  Color for the background of raw text  |  ` luma(240) `  
  
The template will initialize your document with a sample call to the ` kunskap
` function. Alternatively, hereâs a minimal example of how you could use
this template in your document:

    
    
    #import "@preview/kunskap:0.1.0": *
    
    #show: kunskap.with(
        title: "Your report title",
        author: "Your name",
        date: datetime.today().display(),
        header: "Your course name",
    )
    
    #lorem(120)
    

##  Missing features

As of now, this template has not yet been particularly optimized for styling
related to:

  * Bibliographies 
  * Outlines (e.g. table of contents) 
  * Tables 

##  Credits

This template started out by emulating the layout of course documents in [
Marco Kuhlmann ](https://liu.se/en/employee/marku61) âs courses at
LinkÃ¶ping University.[^2] On the technical side, this template took a lot of
inspiration from [ the ` ilm ` template ](https://github.com/talal/ilm/) ,
even if the design decisions may be radically different.

[^1]: The [ Hack font ](https://github.com/source-foundry/Hack) is currently
not available on the Typst web app, so the fallback is Source Code Pro. [^2]:
If you work at LinkÃ¶ping University, you can set ` headings-font:
"KorolevLiU" ` to get a LiU-branded version of this template.

[ Create project in app ](/app?template=kunskap&version=0.1.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/kunskap:0.1.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ Marcel Bollmann ](mailto:marcel@bollmann.me)
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     October 30, 2024 
First released:

     October 30, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     4.16 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/kunskap-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mbollmann/typst-kunskap)
Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  Marcel Bollmann  .  Report issues on  [ their
repository ](https://github.com/mbollmann/typst-kunskap) .  You can also try
to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 30, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

