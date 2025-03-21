#  gloss-awe

0.0.5

Awesome Glossary for Typst.

Automatically create a glossary in [ typst ](https://typst.app/) .

This typst component creates a glossary page from a given pool of potential
glossary entries using only those entries, that are marked with the ` gls ` or
` gls-add ` functions in the document.

â ï¸ Typst is in beta and evolving, and this package evolves with it. As a
result, no backward compatibility is guaranteed yet. Also, the package itself
is under development and fine-tuning.

##  Table of Contents

  * [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#usage)
    * [ Marking the Entries ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#marking-the-entries)
    * [ Controlling the Show ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#controlling-the-show)
    * [ Hiding Entries from the Glossary Page ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#hiding-entries-from-the-glossary-page)
    * [ Pool of Entries ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#pool-of-entries)
    * [ Unknown Entries ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#unknown-entries)
    * [ Creating the glossary page ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#creating-the-glossary-page)
  * [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#changelog)
    * [ v0.0.5 ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#v005)
    * [ v0.0.4 ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#v004)
    * [ v0.0.3 ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#v003)
    * [ v0.0.2 ](https://github.com/typst/packages/raw/main/packages/preview/gloss-awe/0.0.5/#v002)

##  Usage

###  Marking the Entries

To include a term into the glossary, it can be marked with the ` gls `
function. The simplest form is like this:

    
    
    This is how to mark something for the glossary in #gls[Typst].
    

The function will render as defined with the specified show rule (see below!).

###  Controlling the Show

To control, how the markers are rendered in the document, a show rule has to
be defined. It usually looks like the following:

    
    
    // marker display : this rule makes the glossary marker in the document visible.
    #show figure.where(kind: "jkrb_glossary"): it => {it.body}
    

###  Hiding Entries from the Glossary Page

It is also possible to hide entries (temporarily) from the generated glossary
page without removing any markers for them from the document.

The following sample will hide the entries for âAmaranthâ and
âButterscotchâ from the glossary, even if it is marked with ` gls[...] `
or ` gls-add[...] ` somewhere in the document.

    
    
        #let hidden-entries = (
            "Amaranth",
            "Butterscotch"
        )
    
        #make-glossary(glossary-pool, excluded: hidden-entries)
    

###  Pool of Entries

A âpool of entriesâ is a typst dictionary. It can be read from a file or
may be the result of other operations.

One or more pool(s) are then given to the ` make-glossary() ` function. This
will create a glossary page of all referenced entries. If given more than one
pool, the order pools are searched in the order they are given to the method.
The first match wins. This can be used to have a global pool to be used in
different documents, and another one for local usage only.

The pool consists of a dictionary of definition entries. The key of an entry
is the term. Note, that it is case-sensitive. Each entry itself is also a
dictionary, and its main key is ` description ` . This is the content for the
term. There may be other keys in an entry in the future. For now, it supports:

  * description 
  * link 

An entry in the pool for the term âEngineâ file may look like this:

    
    
        Engine: (
            description: [
    
                In the context of software, an engine...
    
            ],
            link: [
    
                (1) Software engine - Wikipedia.
                https://en.wikipedia.org/wiki/Software_engine
                (13.5.2023).
    
            ]
        ),
    

###  Unknown Entries

If the document marks a term that is not contained in the pool, an entry will
be generated anyway, but it will be visually marked as missing. This is
convenient for the workflow, where one can mark the desired entries while
writing the document, and provide missing entries later.

There is a parameter for the ` make-glossary() ` function named ` missing ` ,
where a function can be provided to format or even suppress the missing
entries.

###  Creating the Glossary Page

To create the glossary page, provide the pool of potential entries to the
make-glossary function. The following listing shows a complete sample document
with a glossary. The sample glossary pool is contained in the main document as
well:

    
    
        #import "@preview/gloss-awe:0.0.5": *
    
        // Text settings
        #set text(font: ("Arial", "Trebuchet MS"), size: 12pt)
    
        // Defining the Glossary Pool with definitions.
        #let glossary-pool = (
            Cloud: (
                description: [
    
                    Cloud computing is a model where computer resources are made available
                    over the internet. Such resources can be assigned on demand in a very short
                    time, and only as long as they are required by the user.
    
                ]
            ),
    
            Marker: (
                description: [
    
                    A Marker in `gloss-awe` is a typst function to mark a word or phrase to appear
                    in the documents glossary. The marker is also linked to the glossary section
                    by referencing the label `<Glossary>`.
    
                ]
            ),
    
            Glossary: (
                description: [
    
                    A glossary is a list of terms and their definitions that are specific to a
                    particular subject or field. It is used to define the intended meaning of
                    terms used in a document and to agree on a common definition of those terms. A
                    well-defined glossary can be very helpful in documents where very specific
                    meanings of certain terms are used.
    
                ]
            ),
    
            "Glossary Pool": (
                description: [
    
                    A glossary pool is a collection of glossary entries. An automated tool can
                    pull needed definitions from this pool to create the glossary pages for a
                    specific context.
    
                ]
            ),
    
            REST: (
                description: [
    
                    Representational State Transfer (abgekÃ¼rzt REST) ist ein Paradigma fÃ¼r die
                    Softwarearchitektur von verteilten Systemen, insbesondere fÃ¼r Webservices.
                    REST ist eine Abstraktion der Struktur und des Verhaltens des World Wide
                    Web. REST hat das Ziel, einen Architekturstil zu schaffen, der den
                    Anforderungen des modernen Web besser genÃ¼gt.
    
                ]
            ),
    
            XML: (
                description: [
    
                    XML stands for `'eXtensible Markup Language'`.
    
                ],
                link: [https://www.w3.org/XML]
            ),
        )
    
        // Defining, how marked glossary entries in the document appear
        #show figure.where(kind: "jkrb_glossary"): it => {it.body}
    
        // This alternate rule, creates links to the glossary for marked entries.
        // #show figure.where(kind: "jkrb_glossary"): it => [#link(<Glossar>)[#it.body]]
    
        = My Sample Document with `gloss-awe`
    
        In this document the usage of the `gloss-awe` package is demonstrated to create a glossary
        with the help of a simple and small sample glossary pool. We have defined the pool in a
        dictionary named #gls[Glossary Pool] above. It contains the definitions the `gloss-awe`
        can use to build the glossary in the #gls[Glossary] section of this document. The pool
        could also come from external files, like #gls[JSON] or #gls[XML] or other sources. Only
        those definitions are shown in the glossary, that are marked in this document with one of
        the #gls(entry: "Marker")[marker] functions `gloss-awe` provides.
    
        If a Word is marked, that is not in the Glossary Pool, it gets a special markup in the
        resulting glossary, making it easy for the Author to spot the missing information an
        providing a definition. In this sample, there is no definition for "JSON" provided,
        resulting in an Entry with a red remark "#text(fill: red)[No~glossary~entry]".
    
        There is also a way to include Entries in the glossary for Words that are not contained in
        the documents text:
    
        #gls-add("Cloud")
        #gls-add("REST")
    
    
        = Glossary <Glossary>
    
        This section contains the generated Glossary, in a nice two-column-layout. It also bears a
        label, to enable the linking from marked words to the glossary.
    
        #line(length: 100%)
        #set text(font: ("Arial", "Trebuchet MS"), size: 10pt)
        #columns(2)[
            #make-glossary(glossary-pool)
        ]
    
    

More usage samples are shown in the document ` sample-usage.typ ` on [ gloss-
aweÂ´s GitHub
](https://github.com/typst/packages/raw/main/packages/preview/gloss-
awe/0.0.5/%5BTitle%5D\(https://github.com/RolfBremer/typst-glossary\)) .

A more complex sample PDF is available there as well.

##  Changelog

###  v0.0.5

  * Address change in ` figure.caption ` in typst (commit: 976abdf ). 

###  v0.0.4

  * Breaking: Renamed the main file from ` glossary.typ ` to ` gloss-awe.typ ` to match package. 
  * Added support for hidden glossary entries. 
  * Added a Changelog to this readme. 

###  v0.0.3

  * Added support for package manager in Typst. 
  * Add ` gls-add[...] ` function for entries that are not in the document. 

###  v.0.0.2

  * Moved version to Github. 

###  How to add

Copy this into your project and use the import as  ` gloss-awe `

    
    
    #import "@preview/gloss-awe:0.0.5"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ JKRB ](https://github.com/RolfBremer)
License:

     Apache-2.0 
Current version:

     0.0.5 
Last updated:

     September 13, 2023 
First released:

     July 3, 2023 
Archive size:

     8.39 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/gloss-awe-0.0.5.tar.gz)
Repository:

     [ GitHub ](https://github.com/RolfBremer/gloss-awe)

###  Where to report issues?

This  package  is a project of  JKRB  .  Report issues on  [ their repository
](https://github.com/RolfBremer/gloss-awe) .  You can also try to ask for help
with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.5  |  September 13, 2023   
[ 0.0.4 ](https://typst.app/universe/package/gloss-awe/0.0.4/) |  July 6, 2023   
[ 0.0.3 ](https://typst.app/universe/package/gloss-awe/0.0.3/) |  July 3, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

