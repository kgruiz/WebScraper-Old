#  in-dexter

0.5.3

Hand Picked Index for Typst.

Automatically create a handcrafted index in [ typst ](https://typst.app/) .
This typst component allows the automatic creation of an Index page with
entries that have been manually marked in the document by its authors. This,
in times of advanced search functionality, seems somewhat outdated, but a
handcrafted index like this allows the authors to point the reader to just the
right location in the document.

â ï¸ Typst is in beta and evolving, and this package evolves with it. As a
result, no backward compatibility is guaranteed yet. Also, the package itself
is under development and fine-tuning.

##  Table of Contents

  * [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#usage)
    * [ Importing the Component ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#importing-the-component)
    * [ Remarks for new version ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#remarks-for-new-version)
    * [ Marking Entries ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#marking-entries)
      * [ Generating the index page ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#generating-the-index-page)
      * [ Brief Sample Document ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#brief-sample-document)
      * [ Full Sample Document ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#full-sample-document)
  * [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#changelog)
    * [ v0.5.3 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v053)
    * [ v0.5.2 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v052)
    * [ v0.5.1 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v051)
    * [ v0.5.0 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v050)
    * [ v0.4.3 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v043)
    * [ v0.4.2 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v042)
    * [ v0.4.1 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v041)
    * [ v0.4.0 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v040)
    * [ v0.3.2 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v032)
    * [ v0.3.1 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v031)
    * [ v0.3.0 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v030)
    * [ v0.2.0 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v020)
    * [ v0.1.0 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v010)
    * [ v0.0.6 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v006)
    * [ v0.0.5 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v005)
    * [ v0.0.4 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v004)
    * [ v0.0.3 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v003)
    * [ v0.0.2 ](https://github.com/typst/packages/raw/main/packages/preview/in-dexter/0.5.3/#v002)

##  Usage

##  Importing the Component

To use the index functionality, the component must be available. This can be
achieved by importing the package ` in-dexter ` into the project:

Add the following code to the head of the document file(s) that want to use
the index:

    
    
      #import "@preview/in-dexter:0.5.3": *
    

Alternatively it can be loaded from the file, if you have it copied into your
project.

    
    
      #import "in-dexter.typ": *
    

##  Remarks for new version

In previous versions (before 0.0.6) of in-dexter, it was required to hide the
index entries with a show rule. This is not required anymore.

##  Marking Entries

To mark a word to be included in the index, a simple function can be used. In
the following sample code, the word âelitâ is marked to be included into
the index.

    
    
    = Sample Text
    Lorem ipsum dolor sit amet, consectetur adipiscing #index[elit], sed do eiusmod tempor
    incididunt ut labore et dolore.
    

Nested entries can be created - the following would create an entry `
adipiscing ` with sub entry ` elit ` .

    
    
    = Sample Text
    Lorem ipsum dolor sit amet, consectetur adipiscing elit#index("adipiscing", "elit"), sed do eiusmod
    tempor incididunt ut labore et dolore.
    

The marking, by default, is invisible in the resulting text, while the marked
word will still be visible. With the marking in place, the index component
knows about the word, as well as its location in the document.

##  Generating the Index Page

The index page can be generated by the following function:

    
    
    = Index
    #columns(3)[
      #make-index(title: none)
    ]
    

This sample uses the optional title, outline, and use-page-counter parameters:

    
    
    #make-index(title: [Index], outlined: true, use-page-counter: true)
    

The ` make-index() ` function takes three optional arguments: ` title ` , `
outlined ` , and ` use-page-counter ` .

  * ` title ` adds a title (with ` heading ` ) and 
  * ` outlined ` is ` false ` by default and is passed to the heading function 
  * ` use-page-counter ` is ` false ` by default. If set to ` true ` it will use ` counter(page).display() ` for the page number text in the index instead of the absolute page position (the absolute position is still used for the actual link target) 

If no title is given the heading should never appear in the layout. Note: The
heading is (currently) not numbered.

The first sample emits the index in three columns. Note: The actual appearance
depends on your template or other settings of your document.

You can find a preview image of the resulting page on [ in-dexterÂ´s GitHub
repository ](https://github.com/RolfBremer/in-dexter) .

You may have noticed that some page numbers are displayed as bold. These are
index entries which are marked as âmainâ entries. Such entries are meant
to be the most important for the given entry. They can be marked as follows:

    
    
    #index(fmt: strong, [Willkommen])
    

or you can use the predefined semantically helper function

    
    
    #index-main[Willkommen]
    

###  Brief Sample Document

This is a very brief sample to demonstrate how in-dexter can be used. The next
chapter contains a more fleshed out sample.

    
    
    #import "@preview/in-dexter:0.5.3": *
    
    
    = My Sample Document with `in-dexter`
    
    In this document the usage of the `in-dexter` package is demonstrated to create
    a hand picked #index[Hand Picked] index. This sample #index-main[Sample]
    document #index[Document] is quite short, and so is its index.
    
    
    = Index
    
    This section contains the generated Index.
    
    #make-index()
    

###  Full Sample Document

    
    
    #import "@preview/in-dexter:0.5.3": *
    
    #let index-main(..args) = index(fmt: strong, ..args)
    
    // Document settings
    #set page("a5")
    #set text(font: ("Arial", "Trebuchet MS"), size: 12pt)
    
    
    = My Sample Document with `in-dexter`
    
    In this document #index[Document] the usage of the `in-dexter` package #index[Package]
    is demonstrated to create a hand picked index #index-main[Index]. This sample document
    is quite short, and so is its index. So to fill this sample with some real text,
    letÂ´s elaborate on some aspects of a hand picked #index[Hand Picked] index. So, "hand
    picked" means, the entries #index[Entries] in the index are carefully chosen by the
    author(s) of the document to point the reader, who is interested in a specific topic
    within the documents domain #index[Domain], to the right spot #index[Spot]. Thats, how
    it should be; and it is quite different to what is done in this sample text, where the
    objective #index-main[Objective] was to put many different index markers
    #index[Markers] into a small text, because a sample should be as brief as possible,
    while providing enough substance #index[Substance] to demo the subject
    #index[Subject]. The resulting index in this demo is somewhat pointless
    #index[Pointless], because all entries are pointing to few different pages
    #index[Pages], due to the fact that the demo text only has few pages #index[Page].
    That is also the reason for what we chose the DIN A5 #index[DIN A5] format, and we
    also continue with some remarks #index[Remarks] on the next page.
    
    
    == Some more demo content without deeper meaning
    
    #lorem(50) #index[Lorem]
    
    #pagebreak()
    
    == Remarks
    
    Here are some more remarks #index-main[Remarks] to have some content on a second page, what
    is a precondition #index[Precondition] to demo that Index #index[Index] entries
    #index[Entries] may point to multiple pages.
    
    
    = Index
    
    This section #index[Section] contains the generated Index #index[Index], in a nice
    two-column-layout.
    
    #set text(size: 10pt)
    #columns(2)[
        #make-index()
    ]
    

The following image shows a generated index page of another document, with
additional formatting for headers applied.

![Sample for a generated index
page.](https://github.com/typst/packages/raw/main/packages/preview/in-
dexter/0.5.3/gallery/SampleIndex.png)

More usage samples are shown in the document ` sample-usage.typ ` on [ in-
dexterÂ´s GitHub ](https://github.com/RolfBremer/in-dexter) .

A more complex sample PDF is available there as well.

##  Changelog

###  v0.5.3

  * fix error in typst.toml file. 
  * Add a sample for raw display. 

###  v0.5.2

  * Fix a bug with bang notation. 
  * Add compiler to toml file. 

###  v0.5.1

  * Migrate deprecated locate to context. 

###  v0.5.0

  * Support page numbering formats (i.e. roman), when ` use-page-counter ` is set to true. Thanks to @ThePuzzlemaker! 

###  v0.4.3

  * Suppress extra space character emitted by the ` index() ` function. 
  * Fix a bug where math formulas are not displayed. 
  * Introduce ` apply-casing ` parameter to ` index() ` to suppress entry-casing for individual entries. 

###  v0.4.2

  * Improve internal method ` as-text ` to be more robust. 
  * tidy up sample-usage.typ. 

###  v0.4.1

  * Bug fixed: Fix a bug where an index entry with same name as a group hides the group. 
  * Fixed typos in the sample-usage document. 

###  v0.4.0

  * Support for a ` display ` parameter for entries. This allows the usage of complex content, like math expressions in the index. (based on suggestions by @lukasjuhrich) 
  * Also support a tuple value for display and key parameters of the entry. 
  * Improve internal robustness and fix some errors in the sample document. 

###  v0.3.2

  * Fix initial parsing and returning fist letter (thanks to @lukasjuhrich, #14) 

###  v0.3.1

  * Fix handling of trailing or multiple spaces and crlf in index entries. 

###  v0.3.0

  * Support multiple named indexes. Also allow the generation of combined index pages. 
  * Support for LaTeX index group syntax ( ` #index("Group1!Group2@Entry" ` ). 
  * Support for advanced case handling for the entries in the index. Note: The new default ist to ignore the casing for the sorting of the entries. The behavior can be changed by providing a ` sort-order() ` function to the ` make-index ` function. 
  * The casing for the index entry can also be altered by providing a ` entry-casing() ` function to the ` make-index ` function. So it is possible that all entries have an uppercase first letter (which is also the new default!). 

###  v0.2.0

  * Allow index to respect unnumbered physical pages at the start of the document (Thanks to @jewelpit). See âSkipping physical pagesâ in the sample-usage document. 

###  v0.1.0

  * big refactor (by @epsilonhalbe). 
  * changing âmarker classesâ to support direct format function ` fmt: content -> content ` e.g. ` index(fmt: strong, [entry]) ` . 
  * Implemented: 
    * nested entries. 
    * custom initials + custom sorting. 

###  v0.0.6

  * Change internal index marker to use metadata instead of figures. This allows a cleaner implementation and does not require a show rule to hide the marker-figure anymore. 
  * This version requires Typst 0.8.0 due to the use of metadata(). 
  * Consolidated the ` PackageReadme.md ` into a single ` README.md ` . 

###  v0.0.5

  * Address change in ` figure.caption ` in typst (commit: 976abdf ). 

###  v0.0.4

  * Add title and outline arguments to #make-index() by @sbatial in #4 

###  v0.0.3

  * Breaking: Renamed the main file from ` index.typ ` to ` in-dexter.typ ` to match package. 
  * Added a Changelog to this README. 
  * Introduced a brief and a full sample code to this README. 
  * Added support for package manager in Typst. 

###  v.0.0.2

  * Moved version to GitHub. 

###  How to add

Copy this into your project and use the import as  ` in-dexter `

    
    
    #import "@preview/in-dexter:0.5.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     [ JKRB ](https://github.com/RolfBremer) & in-dexter Contributors 
License:

     Apache-2.0 
Current version:

     0.5.3 
Last updated:

     August 14, 2024 
First released:

     July 10, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     11.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/in-dexter-0.5.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/RolfBremer/in-dexter)
Categor  y  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)

###  Where to report issues?

This  package  is a project of  JKRB and in-dexter Contributors  .  Report
issues on  [ their repository ](https://github.com/RolfBremer/in-dexter) .
You can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.5.3  |  August 14, 2024   
[ 0.5.2 ](https://typst.app/universe/package/in-dexter/0.5.2/) |  August 23, 2024   
[ 0.4.2 ](https://typst.app/universe/package/in-dexter/0.4.2/) |  June 14, 2024   
[ 0.3.0 ](https://typst.app/universe/package/in-dexter/0.3.0/) |  May 13, 2024   
[ 0.2.0 ](https://typst.app/universe/package/in-dexter/0.2.0/) |  April 30, 2024   
[ 0.1.0 ](https://typst.app/universe/package/in-dexter/0.1.0/) |  January 8, 2024   
[ 0.0.6 ](https://typst.app/universe/package/in-dexter/0.0.6/) |  October 1, 2023   
[ 0.0.5 ](https://typst.app/universe/package/in-dexter/0.0.5/) |  September 13, 2023   
[ 0.0.4 ](https://typst.app/universe/package/in-dexter/0.0.4/) |  August 6, 2023   
[ 0.0.3 ](https://typst.app/universe/package/in-dexter/0.0.3/) |  July 10, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

