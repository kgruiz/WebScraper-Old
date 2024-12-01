![A preview of the delegis Typst
template.](https://packages.typst.org/preview/thumbnails/delegis-0.3.0-small.webp)

#  delegis

0.3.0

A package and template for drafting legislative content in a German-style
structuring, such as for bylaws, etc.

[ Create project in app ](/app?template=delegis&version=0.3.0) ![Page containing a logo at the top-right and a geric \(example\) title](https://github.com/typst/packages/raw/main/packages/preview/delegis/0.3.0/demo-1.png) |  ![Page containing an outline](https://github.com/typst/packages/raw/main/packages/preview/delegis/0.3.0/demo-2.png) |  ![Page containing a German-style legislative content including a preamble, division titles, sections, paragraph and sentence numbering, etc.](https://github.com/typst/packages/raw/main/packages/preview/delegis/0.3.0/demo-3.png)  
---|---|---  
  
A package and template for drafting legislative content in a German-style
structuring, such as for bylaws, etc.

While the template is designed to be used in German documents, all strings are
customizable. You can have a look at the ` delegis.typ ` to see all available
parameters.

##  General Usage

While this ` README.md ` gives you a brief overview of the packageâs usage,
we recommend that you use the template (in the ` template ` folder) as a
starting point instead.

###  Importing the Package

    
    
    #import "@preview/delegis:0.3.0": *
    

###  Initializing the template

    
    
    #show: delegis.with(
      // Metadata
      title: "Vereinsordnung zu ABCDEF", // title of the law/bylaw/...
      abbreviation: "ABCDEFVO", // abbreviation of the law/bylaw/...
      resolution: "3. Beschluss des Vorstands vom 24.01.2024", // resolution number and date
      in-effect: "24.01.2024", // date when it comes into effect
      draft: false, // whether this is a draft
      // Template
      logo: image("wuespace.jpg", alt: "WÃ¼Space e. V."), // logo of the organization, shown on the first page
    )
    

###  Sections

Sections are auto-detected as long as they follow the pattern ` Â§ 1 ... ` or
` Â§ 1a ... ` in its own paragraph:

    
    
    Â§ 1 Geltungsbereich
    
    (1) 
    Diese Ordnung gilt fÃ¼r alle Mitglieder des Vereins.
    
    (2) 
    Sie regelt die Mitgliedschaft im Verein.
    
    Â§ 2 Mitgliedschaft
    
    (1) 
    Die Mitgliedschaft im Verein ist freiwillig.
    
    (2) 
    Sie kann jederzeit gekÃ¼ndigt werden.
    
    Â§ 2a Ehrenmitgliedschaft
    
    (1) 
    Die Ehrenmitgliedschaft wird durch den Vorstand verliehen.
    

Alternatively (or if you want to use special characters otherwise not
supported, such as ` * ` ), you can also use the ` #section[number][title] `
function:

    
    
    #section[Â§ 3][Administrator*innen]
    

###  Hierarchical Divisions

If you want to add more structure to your sections, you can use normal Typst
headings. Note that only the level 6 headings are reserved for the section
numbers:

    
    
    = Allgemeine Bestimmungen
    
    Â§ 1 ABC
    
    Â§ 2 DEF
    
    = Besondere Bestimmungen
    
    Â§ 3 GHI
    
    Â§ 4 JKL
    

Delegis will automatically use a numbering scheme for the divisions that is in
line with the âHandbuch der RechtsfÃ¶rmlichkeitâ, Rn. 379 f. If you want
to customize the division titles, you can do so by setting the ` division-
prefixes ` parameter in the ` delegis ` function:

    
    
    #show: delegis.with(
      division-prefixes: ("Teil", "Kapitel", "Abschnitt", "Unterabschnitt")
    )
    

###  Sentence Numbering

If a paragraph contains multiple sentences, you can number them by adding a `
#s~ ` at the beginning of the sentences:

    
    
    Â§ 3 MitgliedsbeitrÃ¤ge
    
    #s~Die MitgliedsbeitrÃ¤ge sind monatlich zu entrichten.
    #s~Sie sind bis zum 5. des Folgemonats zu zahlen.
    

This automatically adds corresponding sentence numbers in superscript.

###  Referencing other Sections

Referencing works manually by specifying the section number. While automations
would be feasible, we have found that in practice, theyâre not as useful as
they might seem for legislative documents.

In some cases, referencing sections using ` Â§ X ` could be mis-interpreted as
a new section. To avoid this, use the non-breaking space character ` ~ `
between the ` Â§ ` and the number:

    
    
    Â§ 5 Inkrafttreten
    
    Diese Ordnung tritt am 24.01.2024 in Kraft. Â§~4 bleibt unberÃ¼hrt.
    

##  Changelog

###  v0.3.0

####  Features

  * Adjust numbered list / enumeration numbering to be in line with âHandbuch der RechtsfÃ¶rmlichkeitâ, Rn. 374 
  * Make division titles (e.g., âPartâ, âChapterâ, âDivisionâ) customizable and conform to the âHandbuch der RechtsfÃ¶rmlichkeitâ, Rn. 379 f. 

###  v0.2.0

####  Features

  * Add ` #metadata ` fields for usage with ` typst query ` . You can now use ` typst query file.typ "<field>" --field value --one ` with ` <field> ` being one of the following to query metadata fields in the command line: 
    * ` <title> `
    * ` <abbreviation> `
    * ` <resolution> `
    * ` <in-effect> `
  * Add ` #section[Â§ 1][ABC] ` function to enable previously unsupported special chars (such as ` * ` ) in section headings. Note that this was previously possible using ` #unnumbered[Â§ 1\ ABC] ` , but the new function adds a semantically better-fitting alternative to this fix. 
  * Improve heading style rules. This also fixes an incompatibility with ` pandoc ` , meaning itâs now possible to use ` pandoc ` to convert delegis documents to HTML, etc. 
  * Set the footnote numbering to ` [1] ` to not collide with sentence numbers. 

####  Bug Fixes

  * Fix a typo in the ` str-draft ` variable name that lead to draft documents resulting in a syntax error. 
  * Fix hyphenation issues with the abbreviation on the title page (hyphenation between the parentheses and the abbreviation itself) 

###  v0.1.0

Initial Release

[ Create project in app ](/app?template=delegis&version=0.3.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/delegis:0.3.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     [ WÃ¼Space e. V. ](https://github.com/wuespace)
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     May 22, 2024 
First released:

     March 16, 2024 
Archive size:

     13.4 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/delegis-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/wuespace/delegis)
Discipline  :

    

  * [ Law ](https://typst.app/universe/search/?discipline=law)

Categor  y  :

    

  * ![Office icon](/assets/icons/16-envelope.svg) [ Office ](https://typst.app/universe/search/?category=office)

###  Where to report issues?

This  template  is a project of  WÃ¼Space e. V.  .  Report issues on  [ their
repository ](https://github.com/wuespace/delegis) .  You can also try to ask
for help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  May 22, 2024   
[ 0.2.0 ](https://typst.app/universe/package/delegis/0.2.0/) |  May 17, 2024   
[ 0.1.0 ](https://typst.app/universe/package/delegis/0.1.0/) |  March 16, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

