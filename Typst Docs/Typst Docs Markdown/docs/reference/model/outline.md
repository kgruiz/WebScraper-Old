  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Outline ](/docs/reference/model/outline/)

#  ` outline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A table of contents, figures, or other elements.

This function generates a list of all occurrences of an element in the
document, up to a given depth. The element's numbering and page number will be
displayed in the outline alongside its title or caption. By default this
generates a table of contents.

##  Example

    
    
    #outline()
    
    = Introduction
    #lorem(5)
    
    = Prior work
    #lorem(10)
    

![Preview](/assets/docs/pxzEoLgfS9GjzIb6I2LlEgAAAAAAAAAA.png)

##  Alternative outlines

By setting the ` target ` parameter, the outline can be used to generate a
list of other kinds of elements than headings. In the example below, we list
all figures containing images by setting ` target ` to ` figure  .  where  (
kind  :  image  )  ` . We could have also set it to just ` figure ` , but then
the list would also include figures containing tables or other material. For
more details on the ` where ` selector, [ see here
](/docs/reference/foundations/function/#definitions-where) .

    
    
    #outline(
      title: [List of Figures],
      target: figure.where(kind: image),
    )
    
    #figure(
      image("tiger.jpg"),
      caption: [A nice figure!],
    )
    

![Preview](/assets/docs/K0Fgir_M6IbOnlxFTpRoyAAAAAAAAAAA.png)

##  Styling the outline

The outline element has several options for customization, such as its ` title
` and ` indent ` parameters. If desired, however, it is possible to have more
control over the outline's look and style through the [ ` outline.entry `
](/docs/reference/model/outline/#definitions-entry) element.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

outline  (

title  :  [ none ](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ content
](/docs/reference/foundations/content/) ,  target  :  [ label
](/docs/reference/foundations/label/) [ selector
](/docs/reference/foundations/selector/) [ location
](/docs/reference/introspection/location/) [ function
](/docs/reference/foundations/function/) ,  depth  :  [ none
](/docs/reference/foundations/none/) [ int ](/docs/reference/foundations/int/)
,  indent  :  [ none ](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ bool
](/docs/reference/foundations/bool/) [ relative
](/docs/reference/layout/relative/) [ function
](/docs/reference/foundations/function/) ,  fill  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` title `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The title of the outline.

  * When set to ` auto  ` , an appropriate title for the [ text language ](/docs/reference/text/text/#parameters-lang) will be used. This is the default. 
  * When set to ` none  ` , the outline will not have a title. 
  * A custom title can be set by passing content. 

The outline's heading will not be numbered by default, but you can force it to
be with a show-set rule: ` show  outline  :  set  heading  (  numbering  :
"1."  )  `

Default: ` auto  `

###  ` target `

[ label ](/docs/reference/foundations/label/) or  [ selector
](/docs/reference/foundations/selector/) or  [ location
](/docs/reference/introspection/location/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The type of element to include in the outline.

To list figures containing a specific kind of element, like a table, you can
write ` figure  .  where  (  kind  :  table  )  ` .

Default: ` heading  .  where  (  outlined  :  true  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #outline(
      title: [List of Tables],
      target: figure.where(kind: table),
    )
    
    #figure(
      table(
        columns: 4,
        [t], [1], [2], [3],
        [y], [0.3], [0.7], [0.5],
      ),
      caption: [Experiment results],
    )
    

![Preview](/assets/docs/9oD_YO_3aaN85cAixeBP2gAAAAAAAAAA.png)

###  ` depth `

[ none ](/docs/reference/foundations/none/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The maximum level up to which elements are included in the outline. When this
argument is ` none  ` , all elements are included.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.")
    #outline(depth: 2)
    
    = Yes
    Top-level section.
    
    == Still
    Subsection.
    
    === Nope
    Not included.
    

![Preview](/assets/docs/fYEfgTUmkbH0skbcMKeSFwAAAAAAAAAA.png)

###  ` indent `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ bool
](/docs/reference/foundations/bool/) or  [ relative
](/docs/reference/layout/relative/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to indent the outline's entries.

  * ` none  ` : No indent 
  * ` auto  ` : Indents the numbering of the nested entry with the title of its parent entry. This only has an effect if the entries are numbered (e.g., via [ heading numbering ](/docs/reference/model/heading/#parameters-numbering) ). 
  * [ Relative length ](/docs/reference/layout/relative/) : Indents the item by this length multiplied by its nesting level. Specifying ` 2em  ` , for instance, would indent top-level headings (not nested) by ` 0em  ` , second level headings by ` 2em  ` (nested once), third-level headings by ` 4em  ` (nested twice) and so on. 
  * [ Function ](/docs/reference/foundations/function/) : You can completely customize this setting with a function. That function receives the nesting level as a parameter (starting at 0 for top-level headings/elements) and can return a relative length or content making up the indent. For example, ` n  => n  *  2em  ` would be equivalent to just specifying ` 2em  ` , while ` n  => [  â  ]  *  n ` would indent with one arrow per nesting level. 

_Migration hints:_ Specifying ` true  ` (equivalent to ` auto  ` ) or ` false
` (equivalent to ` none  ` ) for this option is deprecated and will be removed
in a future release.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.a.")
    
    #outline(
      title: [Contents (Automatic)],
      indent: auto,
    )
    
    #outline(
      title: [Contents (Length)],
      indent: 2em,
    )
    
    #outline(
      title: [Contents (Function)],
      indent: n => [â ] * n,
    )
    
    = About ACME Corp.
    == History
    === Origins
    #lorem(10)
    
    == Products
    #lorem(10)
    

![Preview](/assets/docs/VxzAmxCU1uGgVW2hebfhtwAAAAAAAAAA.png)

###  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Content to fill the space between the title and the page number. Can be set to
` none  ` to disable filling.

Default: ` repeat  (  body  :  [  .  ]  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #outline(fill: line(length: 100%))
    
    = A New Beginning
    

![Preview](/assets/docs/KQmhOQJ1ylUUEeut6OI0rQAAAAAAAAAA.png)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` entry ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Represents each entry line in an outline, including the reference to the
outlined element, its page number, and the filler content between both.

This element is intended for use with show rules to control the appearance of
outlines. To customize an entry's line, you can build it from scratch by
accessing the ` level ` , ` element ` , ` body ` , ` fill ` and ` page `
fields on the entry.

outline  .  entry  (

[ int ](/docs/reference/foundations/int/) ,  [ content
](/docs/reference/foundations/content/) ,  [ content
](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #set heading(numbering: "1.")
    
    #show outline.entry.where(
      level: 1
    ): it => {
      v(12pt, weak: true)
      strong(it)
    }
    
    #outline(indent: auto)
    
    = Introduction
    = Background
    == History
    == State of the Art
    = Analysis
    == Setup
    

![Preview](/assets/docs/z5yX2QHZa1YP1epncxVx1wAAAAAAAAAA.png)

####  ` level `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The nesting level of this outline entry. Starts at ` 1  ` for top-level
entries.

####  ` element `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The element this entry refers to. Its location will be available through the [
` location ` ](/docs/reference/foundations/content/#definitions-location)
method on content and can be [ linked ](/docs/reference/model/link/) to.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content which is displayed in place of the referred element at its entry
in the outline. For a heading, this would be its number followed by the
heading's title, for example.

####  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content used to fill the space between the element's outline and its page
number, as defined by the outline element this entry is located in. When `
none  ` , empty space is inserted in that gap instead.

Note that, when using show rules to override outline entries, it is
recommended to wrap the filling content in a [ ` box `
](/docs/reference/layout/box/ "`box`") with fractional width. For example, `
box  (  width  :  1fr  ,  repeat  [  -  ]  )  ` would show precisely as many `
- ` characters as necessary to fill a particular gap.

####  ` page `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The page number of the element this entry links to, formatted with the
numbering set for the referenced page.

[ ![â](/assets/icons/16-arrow-right.svg) Numbering  Previous page
](/docs/reference/model/numbering/) [ ![â](/assets/icons/16-arrow-right.svg)
Paragraph  Next page  ](/docs/reference/model/par/)

