#  i-figured

0.2.4

Configurable figure and equation numbering per section.

Configurable figure numbering per section.

##  Examples

###  Basic

Have a look at the source [ here
](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/examples/basic.typ)
.

![Example:
basic](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/examples/basic.png)

###  Two levels deep

Have a look at the source [ here
](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/examples/level-
two.typ) .

![Example: two levels
deep](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/examples/level-
two.png)

##  Usage

The package mainly consists of two customizable show rules, which set up all
the numbering. There is also an additional function to make showing an outline
of figures easier.

Because the [ ` show-figure() `
](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/#show-
figure) function must internally create another figure element, attached
labels cannot directly be used for references. To circumvent this, a new label
is attached to the internal figure, with the same name but prefixed with `
fig: ` , ` tbl: ` , or ` lst: ` for images (and all other types of generic
figures), tables, and raw code figures (aka listings) respectively. These new
labels can be used for referencing without problems.

    
    
    // import the package
    #import "@preview/i-figured:0.2.4"
    
    // make sure you have some heading numbering set
    #set heading(numbering: "1.")
    
    // apply the show rules (these can be customized)
    #show heading: i-figured.reset-counters
    #show figure: i-figured.show-figure
    
    // show an outline
    #i-figured.outline()
    
    = Hello World
    
    #figure([hi], caption: [Bye World.]) <bye>
    
    // when referencing, the label names must be prefixed with `fig:`, `tbl:`,
    // or `lst:` depending on the figure kind.
    @fig:bye displays the text "hi".
    

##  Reference

###  ` reset-counters `

Reset all figure counters. To be used in a heading show rule like ` #show
heading: i-figured.reset-counters ` .

    
    
    #let reset-counters(
      it,
      level: 1,
      extra-kinds: (),
      equations: true,
      return-orig-heading: true,
    ) = { .. }
    

**Arguments:**

  * ` it ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The heading element from the show rule. 
  * ` level ` : [ ` int ` ](https://typst.app/docs/reference/foundations/int/) â At which heading level to reset the counters. A value of ` 2 ` will cause the counters to be reset at level two _and_ level one headings. 
  * ` extra-kinds ` : [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of ( [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or [ ` function ` ](https://typst.app/docs/reference/foundations/function/) ) â Additional custom figure kinds. If you have any figures with a ` kind ` other than ` image ` , ` table ` , or ` raw ` , you must add the ` kind ` here for its counter to be reset. 
  * ` equations ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether the counter for math equations should be reset. 
  * ` return-orig-heading ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether the original heading element should be included in the returned content. Set this to false if you manually want to construct a heading instead of using the default. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/) â The unmodified
heading.

###  ` show-figure `

Show a figure with per-section numbering. To be used in a figure show rule
like ` #show figure: i-figured.show-figure ` .

    
    
    #let show-figure(
      it,
      level: 1,
      zero-fill: true,
      leading-zero: true,
      numbering: "1.1",
      extra-prefixes: (:),
      fallback-prefix: "fig:",
    ) = { .. }
    

**Arguments:**

  * ` it ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The figure element from the show rule. 
  * ` level ` : [ ` int ` ](https://typst.app/docs/reference/foundations/int/) â How many levels of the current heading counter should be added in front. Note that you can control this individually from the ` level ` parameter on [ ` reset-counters() ` ](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/#reset-counters) . 
  * ` zero-fill ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â If ` true ` and assuming a ` level ` of ` 2 ` , a figure after a ` 1. ` heading but before a ` 1.1. ` heading will show ` 1.0.1 ` as numbering, else the middle zero is excluded. Note that if set to ` false ` , not all figure numberings are guaranteed to have the same length. 
  * ` leading-zero ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether figures before the first top-level heading should have a leading ` 0 ` . Note that if set to ` false ` , not all figure numberings are guaranteed to have the same length. 
  * ` numbering ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or [ ` function ` ](https://typst.app/docs/reference/foundations/function/) â The actual numbering pattern to use for the figures. 
  * ` extra-prefixes ` : [ ` dictionary ` ](https://typst.app/docs/reference/foundations/dictionary/) of [ ` str ` ](https://typst.app/docs/reference/foundations/str/) to [ ` str ` ](https://typst.app/docs/reference/foundations/str/) pairs â Additional label prefixes. This can optionally be used to specify prefixes for custom figure kinds, otherwise they will also use the fallback prefix. 
  * ` fallback-prefix ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The label prefix to use for figure kinds which donât have another prefix set. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/) â The modified
figure.

###  ` show-equation `

Show a math equation with per-section numbering. To be used in a show rule
like ` #show math.equation: i-figured.show-equation ` .

    
    
    #let show-equation(
      it,
      level: 1,
      zero-fill: true,
      leading-zero: true,
      numbering: "(1.1)",
      prefix: "eqt:",
      only-labeled: false,
      unnumbered-label: "-",
    ) = { .. }
    

**Arguments:**

For the arguments ` level ` , ` zero-fill ` , ` leading-zero ` , and `
numbering ` refer to [ ` show-figure() `
](https://github.com/typst/packages/raw/main/packages/preview/i-figured/0.2.4/#show-
figure) .

  * ` it ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) â The equation element from the show rule. 
  * ` prefix ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â The label prefix to use for all equations. 
  * ` only-labeled ` : [ ` bool ` ](https://typst.app/docs/reference/foundations/bool/) â Whether only equations with labels should be numbered. 
  * ` unnumbered-label ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) â A label to explicitly disable numbering for an equation. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/) â The modified
equation.

###  ` outline `

Show the outline for a kind of figure. This is just the same as calling `
outline(target: figure.where(kind: i-figured._prefix + repr(target-kind)), ..)
` , the function just exists for convenience and clarity.

    
    
    #let outline(target-kind: image, title: [List of Figures], ..args) = { .. }
    

**Arguments:**

  * ` target-kind ` : [ ` str ` ](https://typst.app/docs/reference/foundations/str/) or [ ` function ` ](https://typst.app/docs/reference/foundations/function/) â Which kind of figure to list. 
  * ` title ` : [ ` content ` ](https://typst.app/docs/reference/foundations/content/) or ` none ` â The title of the outline. 
  * ` ..args ` â Other arguments to pass to the underlying [ ` outline() ` ](https://typst.app/docs/reference/meta/outline/) call. 

**Returns:** [ ` content `
](https://typst.app/docs/reference/foundations/content/) â The outline
element.

##  Acknowledgements

The core code is based off code from [ @PgBiel ](https://github.com/PgBiel) (
` @PgSuper ` on Discord) and [ @aagolovanov ](https://github.com/aagolovanov)
( ` @aag. ` on Discord). Specifically from [ this message
](https://discord.com/channels/1054443721975922748/1088371919725793360/1158534418760224809)
and the conversation around [ here
](https://discord.com/channels/1054443721975922748/1088371919725793360/1159172567282749561)
.

###  How to add

Copy this into your project and use the import as  ` i-figured `

    
    
    #import "@preview/i-figured:0.2.4"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     RubixDev 
License:

     MIT 
Current version:

     0.2.4 
Last updated:

     January 26, 2024 
First released:

     October 9, 2023 
Archive size:

     1.97 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/i-figured-0.2.4.tar.gz)
Repository:

     [ GitHub ](https://github.com/RubixDev/typst-i-figured)

###  Where to report issues?

This  package  is a project of  RubixDev  .  Report issues on  [ their
repository ](https://github.com/RubixDev/typst-i-figured) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.4  |  January 26, 2024   
[ 0.2.3 ](https://typst.app/universe/package/i-figured/0.2.3/) |  December 11, 2023   
[ 0.2.2 ](https://typst.app/universe/package/i-figured/0.2.2/) |  December 7, 2023   
[ 0.2.1 ](https://typst.app/universe/package/i-figured/0.2.1/) |  November 19, 2023   
[ 0.2.0 ](https://typst.app/universe/package/i-figured/0.2.0/) |  November 16, 2023   
[ 0.1.0 ](https://typst.app/universe/package/i-figured/0.1.0/) |  October 9, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

