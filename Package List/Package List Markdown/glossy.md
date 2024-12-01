#  glossy

0.2.0

A very simple glossary system with easily customizable output.

This package provides utilities to manage and render glossaries within
documents. It includes functions to define and use glossary terms, track their
usage, and generate a glossary list with references to where terms are used in
the document.

![image of sample
output](https://github.com/typst/packages/raw/main/packages/preview/glossy/0.2.0/thumbnail.png)

##  Motivation

Glossy is heavily inspired by [ glossarium
](https://typst.app/universe/package/glossarium) , with a few key different
goals:

  1. Provide a simple interface which allows for complete control over glossary display. To do this, ` glossy ` âs ` #glossary() ` function accepts a theme parameter. The goal here is to separate presentation and logic. 
  2. Simplify the user interface as much as possible. Glossy has exactly two exports, ` init-glossary ` and ` glossary ` . 
  3. Double-down on ` glossy ` âs excellent ` @term ` reference approach, completely eliminating the need to make any calls to ` gls() ` and friends. 
  4. Mimic established patterns and best practices. For example, ` glossy ` âs ` #glossary() ` function is intentionally similar (in naming and parameters) to ` typst ` âs built-in ` #bibliography ` , to the degree possible. 
  5. Simplify the implementation. The ` glossy ` code is significantly shorter and easier to understand. 

##  Features

  * Define glossary terms with short and long forms, descriptions, and grouping 
  * Automatically tracks term usage in the document through ` @labels `
  * Supports modifiers to adjust how terms are displayed (capitalize, pluralize, etc.) 
  * Generates a formatted glossary section with backlinks to term occurrences 
  * Customizable themes for rendering glossary sections, groups, and entries 
  * Automatic pluralization of terms with custom override options 
  * Page number references back to term usage locations 

##  Usage

###  Import the package

    
    
    #import "@preview/glossy:0.2.0": *
    

###  Defining Glossary Terms

Use the ` init-glossary ` function to initialize glossary entries:

    
    
    #let myGlossary = (
        html: (
          short: "HTML",
          long: "Hypertext Markup Language",
          description: "A standard language for creating web pages",
          group: "Web"
        ),
        css: (
          short: "CSS",
          long: "Cascading Style Sheets",
          description: "A stylesheet language used for describing the presentation of a document",
          group: "Web"
        ),
        tps: (
          short: "TPS",
          long: "test procedure specification",
          description: "A formal document describing test steps and expected results",
          // Optional: Override automatic pluralization
          plural: "TPSes",
          longplural: "test procedure specifications"
        )
    )
    
    #show: init-glossary.with(myGlossary)
    

Each glossary entry supports the following fields:

  * ` short ` (required): Short form of the term 
  * ` long ` (optional): Long form of the term 
  * ` description ` (optional): Term description (often a definition) 
  * ` group ` (optional): Category grouping 
  * ` plural ` (optional): Override automatic pluralization of short form 
  * ` longplural ` (optional): Override automatic pluralization of long form 

You can also load glossary entries from a data file using #yaml(), #json(), or
similar.

For example, the above glossary could be in this YAML file:

    
    
    html:
      short: HTML
      long: Hypertext Markup Language
      description: A standard language for creating web pages
      group: Web
    
    css:
      short: CSS
      long: Cascading Style Sheets
      description: A stylesheet language used for describing the presentation of a document
      group: Web
    
    tps:
      short: TPS
      long: test procedure specification
      description: A formal document describing test steps and expected results
      plural: TPSes
      longplural: test procedure specifications
    

And then loaded during initialization as follows:

    
    
    #show: init-glossary.with(yaml("glossary.yaml"))
    

###  Using Glossary Terms

Reference glossary terms using Typstâs ` @reference ` syntax:

    
    
    In modern web development, languages like @html and @css are essential.
    The @tps:pl need to be submitted by Friday.
    

Available modifiers:

  * **cap** : Capitalizes the term 
  * **pl** : Uses the plural form 
  * **both** : Shows âLong Form (Short Form)â 
  * **short** : Shows only short form 
  * **long** : Shows only long form 
  * **def** or **desc** : Shows the description 

Modifiers can be combined with colons:

**Input** |  **Output**  
---|---  
` @tps ` (first use)  |  âtest procedure specification (TPS)â   
` @tps ` (subsequent)  |  âTPSâ   
` @tps:short ` |  âTPSâ   
` @tps:long ` |  âtest procedure specificationâ   
` @tps:both ` |  âtest procedure specification (TPS)â   
` @tps:long:cap ` |  âTest procedure specificationâ   
` @tps:long:pl ` |  âtest procedure specificationsâ   
` @tps:short:pl ` |  âTPSesâ   
` @tps:both:pl:cap ` |  âTechnical procedure specifications (TPSes)â   
` @tps:def ` |  âA formal document describing test steps and expected resultsâ   
  
###  Generating the Glossary

Display the glossary using the ` glossary() ` function:

    
    
    #glossary(
      title: "Web Development Glossary",
      theme: my-theme,
      groups: ("Web")  // Optional: Filter to specific groups
    )
    

###  Customizing Term Display

Control how terms appear in the document by providing a custom ` show-term `
function:

    
    
    #let emph-term(term-body) = { emph(term-body) }
    
    #show: init-glossary.with(
      myGlossary,
      show-term: emph-term
    )
    

###  Glossary Themes

####  Included Themes

Glossy comes with several built-in themes that can be used directly or serve
as examples for custom themes:

#####  theme-twocol

A professional two-column layout ideal for technical documentation. Features:

  * Two-column layout for efficient space usage 
  * Dotted leaders to page numbers 
  * Clear hierarchy with optional group headings 
  * Compact but readable formatting 
  * Terms in regular weight with long forms and descriptions inline 

    
    
    #glossary(theme: theme-twocol)
    

#####  theme-basic

A traditional single-column layout similar to book glossaries. Features:

  * Bold terms with indented content 
  * Clear separation between entries 
  * Hanging indentation for wrapped lines 
  * Parenthetical long forms 
  * Page numbers with âpp.â prefix 
  * Simple, clean design 

    
    
    #glossary(theme: theme-basic)
    

#####  theme-compact

A space-efficient layout perfect for technical documents or appendices.
Features:

  * Reduced vertical spacing 
  * Smaller font sizes for secondary information 
  * Color-coded term components 
  * Grid-based alignment 
  * Minimal decorative elements 
  * Gray text for supplementary information 
  * Bullet separators between components 

    
    
    #glossary(theme: theme-compact)
    

####  Custom Themes

Customize glossary appearance by defining a theme with three functions:

    
    
    #let my-theme = (
      // Main glossary section
      section: (title, body) => {
        heading(level: 1, title)
        body
      },
    
      // Group of related terms
      group: (name, index, total, body) => {
        // index = group index, total = total groups
        if name != "" and total > 1 {
          heading(level: 2, name)
        }
        body
      },
    
      // Individual glossary entry
      entry: (entry, index, total) => {
        // index = entry index, total = total entries in group
        let output = [#entry.short]
        if entry.long != none {
          output = [#output -- #entry.long]
        }
        if entry.description != none {
          output = [#output: #entry.description]
        }
        block(
          grid(
            columns: (auto, 1fr, auto),
            output,
            repeat([#h(0.25em) . #h(0.25em)]),
            entry.pages,
          )
        )
      }
    )
    

Entry fields available to themes:

  * ` short ` : Short form (always present) 
  * ` long ` : Long form (can be ` none ` ) 
  * ` description ` : Term description (can be ` none ` ) 
  * ` label ` : Termâs dictionary label 
  * ` pages ` : Linked page numbers where term appears 

##  License

This project is licensed under the MIT License.

###  How to add

Copy this into your project and use the import as  ` glossy `

    
    
    #import "@preview/glossy:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Stephen Waits ](mailto:steve@waits.net)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 26, 2024 
First released:

     October 23, 2024 
Archive size:

     10.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/glossy-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/swaits/typst-collection)
Categor  y  :

    

  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)

###  Where to report issues?

This  package  is a project of  Stephen Waits  .  Report issues on  [ their
repository ](https://github.com/swaits/typst-collection) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 26, 2024   
[ 0.1.2 ](https://typst.app/universe/package/glossy/0.1.2/) |  October 31, 2024   
[ 0.1.1 ](https://typst.app/universe/package/glossy/0.1.1/) |  October 24, 2024   
[ 0.1.0 ](https://typst.app/universe/package/glossy/0.1.0/) |  October 23, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

