![A preview of the apa7-ish Typst
template.](https://packages.typst.org/preview/thumbnails/apa7-ish-0.2.0-small.webp)

#  apa7-ish

0.2.0

Typst Template that (mostly) complies with APA7 Style (Work in Progress).

[ Create project in app ](/app?template=apa7-ish&version=0.2.0)

[ Typst ](https://typst.app/) Template that (mostly) complies with APA7 Style
(Work in Progress).

The template does not follow all recommendations by the APA Manual, especially
when the suggestions break with typographic conventions (such as double line
spacing :vomiting_face:). Instead, the goal of this template is that it
generates you a high-quality manuscript that has all the important components
of the APA7 format, but is aesthetically pleasing.

The following works already quite well:

  * consistent and simple typesetting 
  * correct display of author information / author note 
  * citations anfalsed references 
  * Page headers and footers (show short title in header) 
  * Option to anonymize the paper 
  * Tables: consisting of 3 parts (caption, content, and table notes) 

This is still not finished:

  * figures 
  * complete pandoc integration (template for pandoc to replace Latex-based workflows) 
  * automatic calculation of page margins (like memoir-class for Latex) 

The easiest way to get started is to edit the example file, which has sensible
default values. Most fields in the configuration are optional and will safely
be ignored (not rendered) when you set them to ` none ` .

##  Authors

The ` authors ` setting expects an array of dictionaries with the following
fields:

    
    
    (
      name: "First Name Last Name", // Name of author as it should appear on the paper title page
      affiliation: "University, Department", // affiliation(s) of author as it should appear on the title page
      orcid: "0000-0000-0000-0000", // optional for author note
      corresponding: true, // optional to mark an author as corresponding author
      email: "email@upenn.edu", // optional email address, required if author is corresponding
      postal: "Longer string", // optional postal address for corresponding author
    )
    

Note that the ` affiliation ` field also accepts an array, in case an author
has several affiliations:

    
    
    (
      name: "First Name Last Name",
      affiliation: ("University A", "University B")
      ...
    )
    

##  Anonymization

Sometimes you need to submit a paper without any author information. In such
cases you can set ` anonymous ` to ` true ` .

##  Tables

The template has basic support for tables with a handful of utilities.
Analogous to the [ Latex booktabs package ](https://ctan.org/pkg/booktabs) ,
there are pre-defined horizontal lines (ârulesâ):

  * ` #toprule ` : used at the top of the table, before the first row 
  * ` #midrule ` : used to separate the header row, or to separate a totals row at the bottom 
  * ` #bottomrule ` : used after the last row (technically the same as toprule, but may be useful later to define custom behaviour) 

Addtionally, there is a ` #tablenote ` function to be used to place a table
note below the table.

A minimal usage example (taken from the typst documentation):

    
    
    // wrap everything in a #figure
    #figure(
      [
        #table(
          columns: 2,
          align: left,
          toprule, // separate table from other content
          table.header([Amount], [Ingredient]),
          midrule, // separation between table header and body
          [360g], [Baking flour],
          [250g], [Butter (room temp.)],
          [150g], [Brown sugar],
          [100g], [Cane sugar],
          [100g], [70% cocoa chocolate],
          [100g], [35-40% cocoa chocolate],
          [2], [Eggs],
          [Pinch], [Salt],
          [Drizzle], [Vanilla extract],
          bottomrule // separation after the last row
        )
        // tablenote goes after the #table
        #tablenote([Here are some additional notes.])
      ],
      // caption is part of the #figure
      caption: [Here is the table caption]
    )
    

[ Create project in app ](/app?template=apa7-ish&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/apa7-ish:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     MrWunderbar 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     October 30, 2024 
First released:

     October 21, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     8.21 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/apa7-ish-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/mrwunderbar666/typst-apa7ish)
Categor  y  :

    

  * ![Paper icon](/assets/icons/16-atom.svg) [ Paper ](https://typst.app/universe/search/?category=paper)

###  Where to report issues?

This  template  is a project of  MrWunderbar  .  Report issues on  [ their
repository ](https://github.com/mrwunderbar666/typst-apa7ish) .  You can also
try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 30, 2024   
[ 0.1.0 ](https://typst.app/universe/package/apa7-ish/0.1.0/) |  October 21, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

