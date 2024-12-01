#  outrageous

0.3.0

Easier customization of outline entries.

Easier customization of outline entries.

##  Examples

For the full source see [ ` examples/basic.typ `
](https://github.com/typst/packages/raw/main/packages/preview/outrageous/0.3.0/examples/basic.typ)
and for more examples see the [ ` examples ` directory
](https://github.com/typst/packages/raw/main/packages/preview/outrageous/0.3.0/examples)
.

###  Default Style

![Example: default
style](https://github.com/typst/packages/raw/main/packages/preview/outrageous/0.3.0/example-
default.png)

    
    
    #import "@preview/outrageous:0.1.0"
    #show outline.entry: outrageous.show-entry
    

###  Custom Settings

![Example: custom
settings](https://github.com/typst/packages/raw/main/packages/preview/outrageous/0.3.0/example-
custom.png)

    
    
    #import "@preview/outrageous:0.1.0"
    #show outline.entry: outrageous.show-entry.with(
      // the typst preset retains the normal Typst appearance
      ..outrageous.presets.typst,
      // we only override a few things:
      // level-1 entries are italic, all others keep their font style
      font-style: ("italic", auto),
      // no fill for level-1 entries, a thin gray line for all deeper levels
      fill: (none, line(length: 100%, stroke: gray + .5pt)),
    )
    

##  Usage

###  ` show-entry `

Show the given outline entry with the provided styling. Should be used in a
show rule like ` #show outline.entry: outrageous.show-entry ` .

    
    
    #let show-entry(
      entry,
      font-weight: presets.outrageous-toc.font-weight,
      font-style: presets.outrageous-toc.font-style,
      vspace: presets.outrageous-toc.vspace,
      font: presets.outrageous-toc.font,
      fill: presets.outrageous-toc.fill,
      fill-right-pad: presets.outrageous-toc.fill-right-pad,
      fill-align: presets.outrageous-toc.fill-align,
      body-transform: presets.outrageous-toc.body-transform,
      label: <outrageous-modified-entry>,
      state-key: "outline-page-number-max-width",
    ) = { .. }
    

**Arguments:**

For all the arguments that take arrays, the arrayâs first item specifies the
value for all level-one entries, the second item for level-two, and so on. The
arrayâs last item will be used for all deeper/following levels as well.

  * ` entry ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The [ ` outline.entry ` ](https://typst.app/docs/reference/model/outline/#definitions-entry) element from the show rule. 
  * ` font-weight ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or [ ` int ` ](https://typst.app/docs/reference/foundations/int/) or ` auto ` or ` none ` ) â The entryâs font weight. Setting to ` auto ` or ` none ` keeps the contextâs current style. 
  * ` font-style ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or ` auto ` or ` none ` ) â The entryâs font style. Setting to ` auto ` or ` none ` keeps the contextâs current style. 
  * ` vspace ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` relative ` ](https://typst.app/docs/reference/layout/relative/) or [ ` fraction ` ](https://typst.app/docs/reference/layout/fraction/) or ` none ` ) â Vertical spacing to add above the entry. Setting to ` none ` adds no space. 
  * ` font ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or [ ` array ` ](https://typst.app/docs/reference/foundations/array/) or ` auto ` or ` none ` ) â The entryâs font. Setting to ` auto ` or ` none ` keeps the contextâs current font. 
  * ` fill ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` content ` ](https://typst.app/docs/reference/foundations/content/) or ` auto ` or ` none ` ) â The entryâs fill. Setting to ` auto ` keeps the contextâs current setting. 
  * ` fill-right-pad ` : [ ` relative ` ](https://typst.app/docs/reference/layout/relative/) or ` none ` â Horizontal space to put between the fill and page number. 
  * ` fill-align ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether ` fill-right-pad ` should be relative to the current page number or the widest page number. Setting this to ` true ` has the effect of all fills ending on the same vertical line. 
  * ` body-transform ` : [ ` function ` ](https://typst.app/docs/reference/foundations/function/) or ` none ` â Callback for custom edits to the entryâs body. It gets passed the entryâs level ( [ ` int ` ](https://typst.app/docs/reference/foundations/int/) ) and body ( [ ` content ` ](https://typst.app/docs/reference/foundations/content/) ) and should return [ ` content ` ](https://typst.app/docs/reference/foundations/content/) or ` none ` . If ` none ` is returned, no modifications are made. 
  * ` page-transform ` : [ ` function ` ](https://typst.app/docs/reference/foundations/function/) or ` none ` â Callback for custom edits to the entryâs page number. It gets passed the entryâs level ( [ ` int ` ](https://typst.app/docs/reference/foundations/int/) ) and page number ( [ ` content ` ](https://typst.app/docs/reference/foundations/content/) ) and should return [ ` content ` ](https://typst.app/docs/reference/foundations/content/) or ` none ` . If ` none ` is returned, no modifications are made. 
  * ` label ` : [ ` label ` ](https://typst.app/docs/reference/foundations/label/) â The label to internally use for tracking recursion. This should not need to be modified. 
  * ` state-key ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The key to use for the internal state which tracks the maximum page number width. The state is global for the entire document and thus applies to all outlines. If you wish to re-calculate the max page number width for ` fill-align ` , then you must provide a different key for each outline. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/)

###  ` presets `

Presets for the arguments for [ ` show-entry() `
](https://github.com/typst/packages/raw/main/packages/preview/outrageous/0.3.0/#show-
entry) . You can use them in your show rule with ` #show outline.entry:
outrageous.show-entry.with(..outrageous.presets.outrageous-figures) ` .

    
    
    #let presets = (
      // outrageous preset for a Table of Contents
      outrageous-toc: (
        // ...
      ),
      // outrageous preset for List of Figures/Tables/Listings
      outrageous-figures: (
        // ...
      ),
      // preset without any style changes
      typst: (
        // ...
      ),
    )
    

###  ` repeat `

Utility function to repeat content to fill space with a fixed size gap.

    
    
    #let repeat(gap: none, justify: false, body) = { .. }
    

**Arguments:**

  * ` gap ` : [ ` length ` ](https://typst.app/docs/reference/layout/length/) or ` none ` â The gap between repeated items. 
  * ` justify ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether to increase the gap to justify the items. 
  * ` body ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The content to repeat. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/)

###  ` align-helper `

Utility function to help with aligning multiple items.

    
    
    #let align-helper(state-key, what-to-measure, display) = { .. }
    

**Arguments:**

  * ` state-key ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The key to use for the [ ` state ` ](https://typst.app/docs/reference/introspection/state/) that keeps track of the maximum encountered width. 
  * ` what-to-measure ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The content to measure at this call. 
  * ` display ` : [ ` function ` ](https://typst.app/docs/reference/foundations/function/) â A callback which gets passed the maximum encountered width and the width of the current item (what was given to ` what-to-measure ` ), both as [ ` length ` ](https://typst.app/docs/reference/layout/length/) , and should return [ ` content ` ](https://typst.app/docs/reference/foundations/content/) which can make use of these widths for alignment. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/)

###  How to add

Copy this into your project and use the import as  ` outrageous `

    
    
    #import "@preview/outrageous:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     RubixDev 
License:

     GPL-3.0-only 
Current version:

     0.3.0 
Last updated:

     October 21, 2024 
First released:

     October 9, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     15.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/outrageous-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/RubixDev/typst-outrageous)

###  Where to report issues?

This  package  is a project of  RubixDev  .  Report issues on  [ their
repository ](https://github.com/RubixDev/typst-outrageous) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  October 21, 2024   
[ 0.2.0 ](https://typst.app/universe/package/outrageous/0.2.0/) |  September 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/outrageous/0.1.0/) |  October 9, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

