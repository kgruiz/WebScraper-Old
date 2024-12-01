#  lemmify

0.1.6

Theorem typesetting library.

Lemmify is a library for typesetting mathematical theorems in typst. It aims
to be easy to use while trying to be as flexible and idiomatic as possible.
This means that the interface might change with updates to typst (for example
if user-defined element functions are introduced). But no functionality should
be lost.

##  Basic Usage

To get started with Lemmify, follow these steps:

  1. Import the Lemmify library: 

    
    
    #import "@preview/lemmify:0.1.6": *
    

  2. Define the default styling for a few default theorem types: 

    
    
    #let (
      theorem, lemma, corollary,
      remark, proposition, example,
      proof, rules: thm-rules
    ) = default-theorems("thm-group", lang: "en")
    

  3. Apply the generated styling: 

    
    
    #show: thm-rules
    

  4. Create theorems, lemmas, and proofs using the defined styling: 

    
    
    #theorem(name: "Some theorem")[
      Theorem content goes here.
    ]<thm>
    
    #proof[
      Complicated proof.
    ]<proof>
    
    @proof and @thm[theorem]
    

  5. Customize the styling further using show rules. For example, to add a red box around proofs: 

    
    
    #show thm-selector("thm-group", subgroup: "proof"): it => box(
      it,
      stroke: red + 1pt,
      inset: 1em
    )
    

The result should now look something like this:

![image](https://github.com/Marmare314/lemmify/assets/49279081/ba5e7ed4-336d-4b1a-8470-99fa23bf5119)

##  Useful examples

If you do not want to reset the theorem counter on headings you can use the `
max-reset-level ` parameter:

    
    
    default-theorems("thm-group", max-reset-level: 0)
    

It specifies the highest level at which the counter is reset. To manually
reset the counter you can use the ` thm-reset-counter ` function.

* * *

By specifying ` numbering: none ` you can create unnumbered theorems.

    
    
    #example(numbering: none)[
      Some example.
    ]
    

To make all examples unnumbered you could use the following code:

    
    
    #let example = example.with(numbering: none)
    

* * *

To create other types (or subgroups) of theorems you can use the ` new-
theorems ` function.

    
    
    #let (note, rules) = new-theorems("thm-group", ("note": text(red)[Note]))
    #show: rules
    

If you have already defined custom styling you will notice that the newly
created theorem does not use it. You can create a dictionary to make applying
it again easier.

    
    
    #let my-styling = (
      thm-styling: thm-styling-simple,
      thm-numbering: ..,
      ref-styling: ..
    )
    
    #let (note, rules) = new-theorems("thm-group", ("note": "Note), ..my-styling)
    

* * *

By varying the ` group ` parameter you can create independently numbered
theorems:

    
    
    #let (
      theorem, proof,
      rules: thm-rules-a
    ) = default-theorems("thm-group-a")
    #let (
      definition,
      rules: thm-rules-b
    ) = default-theorems("thm-group-b")
    
    #show: thm-rules-a
    #show: thm-rules-b
    

* * *

To specify parameters of the [ styling
](https://github.com/typst/packages/raw/main/packages/preview/lemmify/0.1.6/#styling-
parameters) functions the ` .with ` function is used.

    
    
    #let (
      theorem,
      rules: thm-rules
    ) = default-theorems(
      "thm-group",
      thm-numbering: thm-numbering-heading.with(max-heading-level: 2)
    )
    

##  Example

    
    
    #import "@preview/lemmify:0.1.6": *
    
    #let my-thm-style(
      thm-type, name, number, body
    ) = grid(
      columns: (1fr, 3fr),
      column-gutter: 1em,
      stack(spacing: .5em, strong(thm-type), number, emph(name)),
      body
    )
    
    #let my-styling = (
      thm-styling: my-thm-style
    )
    
    #let (
      theorem, rules
    ) = default-theorems("thm-group", lang: "en", ..my-styling)
    #show: rules
    #show thm-selector("thm-group"): box.with(inset: 1em)
    
    #lorem(20)
    #theorem[
      #lorem(40)
    ]
    #lorem(20)
    #theorem(name: "Some theorem")[
      #lorem(30)
    ]
    

![image](https://github.com/Marmare314/lemmify/assets/49279081/b3c72b3e-7e21-4acd-82bb-3d63f87ec84b)

##  Documentation

The two most important functions are:

` default-theorems ` : Create a default set of theorems based on the given
language and styling.

  * ` group ` : The group id. 
  * ` lang ` : The language to which the theorems are adapted. 
  * ` thm-styling ` , ` thm-numbering ` , ` ref-styling ` : Styling parameters are explained in further detail in the [ Styling ](https://github.com/typst/packages/raw/main/packages/preview/lemmify/0.1.6/#styling-parameters) section. 
  * ` proof-styling ` : Styling which is only applied to proofs. 
  * ` max-reset-level ` : The highest heading level on which theorems are still reset. 

` new-theorems ` : Create custom sets of theorems with the given styling.

  * ` group ` : The group id. 
  * ` subgroup-map ` : Mapping from group id to some argument. The simple styles use ` thm-type ` as the argument (ie âBeispielâ or âExampleâ for group id âexampleâ) 
  * ` thm-styling ` , ` thm-numbering ` , ` ref-styling ` , ` ref-numbering ` : Styling which to apply to all subgroups. 

* * *

` use-proof-numbering ` : Decreases the numbering of a theorem function by
one. See [ Styling
](https://github.com/typst/packages/raw/main/packages/preview/lemmify/0.1.6/#styling)
for more information.

* * *

` thm-selector ` : Returns a selector for all theorems of the specified group.
If subgroup is specified, only the theorems belonging to it will be selected.

* * *

There are also a few functions to help with resetting counters.

` thm-reset-counter ` : Reset theorem group counter manually. Returned content
needs to added to the document.

` thm-reset-counter-heading-at ` : Reset theorem group counter at headings of
the specified level. Returns a rule that needs to be shown.

` thm-reset-counter-heading ` : Reset theorem group counter at headings of at
most the specified level. Returns a rule that needs to be shown.

###  Styling parameters

If possible the best way to adapt the look of theorems is to use show rules as
shown [ above
](https://github.com/typst/packages/raw/main/packages/preview/lemmify/0.1.6/#basic-
usage) , but this is not always possible. For example if we wanted theorems to
start with ` 1.1 Theorem ` instead of ` Theorem 1.1 ` . You can provide the
following functions to adapt the look of the theorems.

* * *

` thm-styling ` : A function: ` (arg, name, number, body) -> content ` , that
allows you to define the styling for different types of theorems. Below only
the ` arg ` will be specified.

Pre-defined functions

  * ` thm-style-simple(thm-type) ` : **thm-type num** _(name)_ body 
  * ` thm-style-proof(thm-type) ` : **thm-type num** _(name)_ body â¡ 
  * ` thm-style-reversed(thm-type) ` : **num thm-type** _(name)_ body 

* * *

` thm-numbering ` : A function: ` figure -> content ` , that determines how
theorems are numbered.

Pre-defined functions: (Assume heading is 1.1 and theorem count is 2)

  * ` thm-numbering-heading ` : 1.1.2 
    * ` max-heading-level ` : only use the a limited number of subheadings. In this case if it is set to ` 1 ` the result would be ` 1.2 ` instead. 
  * ` thm-numbering-linear ` : 2 
  * ` thm-numbering-proof ` : No visible content is returned, but the counter is reduced by 1 (so that the proof keeps the same count as the theorem). Useful in combination with ` use-proof-numbering ` to create theorems that reference the previous theorem (like proofs). 

* * *

` ref-styling ` : A function: ` (arg, thm-numbering, ref) -> content ` , to
style theorem references.

Pre-defined functions:

  * ` thm-ref-style-simple(thm-type) `
    * ` @thm -> thm-type 1.1 `
    * ` @thm[custom] -> custom 1.1 `

* * *

` ref-numbering ` : Same as ` thm-numbering ` but only applies to the
references.

##  Roadmap

  * More pre-defined styles. 
    * Referencing theorems by name. 
  * Support more languages. 
  * Better documentation. 
  * Outlining theorems. 

If you are encountering any bugs, have questions or are missing features, feel
free to open an issue on [ Github ](https://github.com/Marmare314/lemmify) .

##  Changelog

  * Version 0.1.6 

    * Add Portuguese translation ( [ @PgBiel ](https://github.com/PgBiel) ) 
    * Add Catalan translation ( [ @Eloitor ](https://github.com/Eloitor) ) 
    * Add Spanish translation ( [ @mismorgano ](https://github.com/mismorgano) ) 
    * Remove extra space before empty supplements ( [ @PgBiel ](https://github.com/PgBiel) ) 
    * Use ref-styling parameter of default-theorems 
  * Version 0.1.5 

    * Add Russian translation ( [ @WeetHet ](https://github.com/WeetHet) ) 
  * Version 0.1.4 

    * Fix error on unnamed theorems 
  * Version 0.1.3 

    * Allow â1.1.â numbering style by default 
    * Ignore unnumbered subheadings 
    * Add max-heading-level parameter to thm-numbering-heading 
    * Adapt lemmify to typst version 0.8.0 
  * Version 0.1.2 

    * Better error message on unnumbered headings 
    * Add Italian translations ( [ @porcaror ](https://github.com/porcaror) ) 
  * Version 0.1.1 

    * Add Dutch translations ( [ @BroodjeKroepoek ](https://github.com/BroodjeKroepoek) ) 
    * Add French translations ( [ @MDLC01 ](https://github.com/MDLC01) ) 
    * Fix size of default styles and make them breakable 

###  How to add

Copy this into your project and use the import as  ` lemmify `

    
    
    #import "@preview/lemmify:0.1.6"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Marmare314 
License:

     GPL-3.0-only 
Current version:

     0.1.6 
Last updated:

     August 29, 2024 
First released:

     July 2, 2023 
Archive size:

     18.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/lemmify-0.1.6.tar.gz)
Repository:

     [ GitHub ](https://github.com/Marmare314/lemmify)

###  Where to report issues?

This  package  is a project of  Marmare314  .  Report issues on  [ their
repository ](https://github.com/Marmare314/lemmify) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.6  |  August 29, 2024   
[ 0.1.5 ](https://typst.app/universe/package/lemmify/0.1.5/) |  December 3, 2023   
[ 0.1.4 ](https://typst.app/universe/package/lemmify/0.1.4/) |  September 26, 2023   
[ 0.1.3 ](https://typst.app/universe/package/lemmify/0.1.3/) |  September 22, 2023   
[ 0.1.2 ](https://typst.app/universe/package/lemmify/0.1.2/) |  July 24, 2023   
[ 0.1.1 ](https://typst.app/universe/package/lemmify/0.1.1/) |  July 8, 2023   
[ 0.1.0 ](https://typst.app/universe/package/lemmify/0.1.0/) |  July 2, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

