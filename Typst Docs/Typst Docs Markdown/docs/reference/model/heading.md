  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Heading ](/docs/reference/model/heading/)

#  ` heading ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A section heading.

With headings, you can structure your document into sections. Each heading has
a _level,_ which starts at one and is unbounded upwards. This level indicates
the logical role of the following content (section, subsection, etc.) A top-
level heading indicates a top-level section of the document (not the
document's title).

Typst can automatically number your headings for you. To enable numbering,
specify how you want your headings to be numbered with a [ numbering pattern
or function ](/docs/reference/model/numbering/) .

Independently of the numbering, Typst can also automatically generate an [
outline ](/docs/reference/model/outline/ "outline") of all headings for you.
To exclude one or more headings from this outline, you can set the ` outlined
` parameter to ` false  ` .

##  Example

    
    
    #set heading(numbering: "1.a)")
    
    = Introduction
    In recent years, ...
    
    == Preliminaries
    To start, ...
    

![Preview](/assets/docs/PajtbDMMN2eDYZCkAh9ZJwAAAAAAAAAA.png)

##  Syntax

Headings have dedicated syntax: They can be created by starting a line with
one or multiple equals signs, followed by a space. The number of equals signs
determines the heading's logical nesting depth. The ` offset ` field can be
set to configure the starting depth.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

heading  (

level  :  [ auto ](/docs/reference/foundations/auto/) [ int
](/docs/reference/foundations/int/) ,  depth  :  [ int
](/docs/reference/foundations/int/) ,  offset  :  [ int
](/docs/reference/foundations/int/) ,  numbering  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
[ function ](/docs/reference/foundations/function/) ,  supplement  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ content
](/docs/reference/foundations/content/) [ function
](/docs/reference/foundations/function/) ,  outlined  :  [ bool
](/docs/reference/foundations/bool/) ,  bookmarked  :  [ auto
](/docs/reference/foundations/auto/) [ bool
](/docs/reference/foundations/bool/) ,  hanging-indent  :  [ auto
](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` level `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The absolute nesting depth of the heading, starting from one. If set to ` auto
` , it is computed from ` offset  +  depth ` .

This is primarily useful for usage in [ show rules
](/docs/reference/styling/#show-rules) (either with [ ` where `
](/docs/reference/foundations/function/#definitions-where) selectors or by
accessing the level directly on a shown heading).

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #show heading.where(level: 2): set text(red)
    
    = Level 1
    == Level 2
    
    #set heading(offset: 1)
    = Also level 2
    == Level 3
    

![Preview](/assets/docs/_pDm-P05bg_jGbl9uvGjlAAAAAAAAAAA.png)

###  ` depth `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The relative nesting depth of the heading, starting from one. This is combined
with ` offset ` to compute the actual ` level ` .

This is set by the heading syntax, such that ` == Heading  ` creates a heading
with logical depth of 2, but actual level ` offset  +  2  ` . If you construct
a heading manually, you should typically prefer this over setting the absolute
level.

Default: ` 1  `

###  ` offset `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The starting offset of each heading's ` level ` , used to turn its relative `
depth ` into its absolute ` level ` .

Default: ` 0  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    = Level 1
    
    #set heading(offset: 1, numbering: "1.1")
    = Level 2
    
    #heading(offset: 2, depth: 2)[
      I'm level 4
    ]
    

![Preview](/assets/docs/hKtWik5-HwMMejqOwDVKLAAAAAAAAAAA.png)

###  ` numbering `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to number the heading. Accepts a [ numbering pattern or function
](/docs/reference/model/numbering/) .

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.a.")
    
    = A section
    == A subsection
    === A sub-subsection
    

![Preview](/assets/docs/dtIXlP8zFF4SfNqscPeLbAAAAAAAAAAA.png)

###  ` supplement `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ content
](/docs/reference/foundations/content/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

A supplement for the heading.

For references to headings, this is added before the referenced number.

If a function is specified, it is passed the referenced heading and should
return content.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.", supplement: [Chapter])
    
    = Introduction <intro>
    In @intro, we see how to turn
    Sections into Chapters. And
    in @intro[Part], it is done
    manually.
    

![Preview](/assets/docs/OZMUTnmWZCt9L0XUTDaRmQAAAAAAAAAA.png)

###  ` outlined `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the heading should appear in the [ outline
](/docs/reference/model/outline/ "outline") .

Note that this property, if set to ` true  ` , ensures the heading is also
shown as a bookmark in the exported PDF's outline (when exporting to PDF). To
change that behavior, use the ` bookmarked ` property.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #outline()
    
    #heading[Normal]
    This is a normal heading.
    
    #heading(outlined: false)[Hidden]
    This heading does not appear
    in the outline.
    

![Preview](/assets/docs/q3R6803Mv9D8hpPx5wD4TgAAAAAAAAAA.png)

###  ` bookmarked `

[ auto ](/docs/reference/foundations/auto/) or  [ bool
](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the heading should appear as a bookmark in the exported PDF's outline.
Doesn't affect other export formats, such as PNG.

The default value of ` auto  ` indicates that the heading will only appear in
the exported PDF's outline if its ` outlined ` property is set to ` true  ` ,
that is, if it would also be listed in Typst's [ outline
](/docs/reference/model/outline/ "outline") . Setting this property to either
` true  ` (bookmark) or ` false  ` (don't bookmark) bypasses that behavior.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #heading[Normal heading]
    This heading will be shown in
    the PDF's bookmark outline.
    
    #heading(bookmarked: false)[Not bookmarked]
    This heading won't be
    bookmarked in the resulting
    PDF.
    

![Preview](/assets/docs/_UvMUDZOtTdH4i83Hac2iwAAAAAAAAAA.png)

###  ` hanging-indent `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The indent all but the first line of a heading should have.

The default value of ` auto  ` indicates that the subsequent heading lines
will be indented based on the width of the numbering.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.")
    #heading[A very, very, very, very, very, very long heading]
    

![Preview](/assets/docs/35Dg34kG-7rg1-RFp8FaIgAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The heading's title.

[ ![â](/assets/icons/16-arrow-right.svg) Footnote  Previous page
](/docs/reference/model/footnote/) [ ![â](/assets/icons/16-arrow-right.svg)
Link  Next page  ](/docs/reference/model/link/)

