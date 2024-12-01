  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Paragraph ](/docs/reference/model/par/)

#  ` par ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Arranges text, spacing and inline-level elements into a paragraph.

Although this function is primarily used in set rules to affect paragraph
properties, it can also be used to explicitly render its argument onto a
paragraph of its own.

##  Example

    
    
    #set par(
      first-line-indent: 1em,
      spacing: 0.65em,
      justify: true,
    )
    
    We proceed by contradiction.
    Suppose that there exists a set
    of positive integers $a$, $b$, and
    $c$ that satisfies the equation
    $a^n + b^n = c^n$ for some
    integer value of $n > 2$.
    
    Without loss of generality,
    let $a$ be the smallest of the
    three integers. Then, we ...
    

![Preview](/assets/docs/yrIipb0QYzuDEgQNZF57rwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

par  (

leading  :  [ length ](/docs/reference/layout/length/) ,  spacing  :  [ length
](/docs/reference/layout/length/) ,  justify  :  [ bool
](/docs/reference/foundations/bool/) ,  linebreaks  :  [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
,  first-line-indent  :  [ length ](/docs/reference/layout/length/) ,
hanging-indent  :  [ length ](/docs/reference/layout/length/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` leading `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between lines.

Leading defines the spacing between the [ bottom edge
](/docs/reference/text/text/#parameters-bottom-edge) of one line and the [ top
edge ](/docs/reference/text/text/#parameters-top-edge) of the following line.
By default, these two properties are up to the font, but they can also be
configured manually with a text set rule.

By setting top edge, bottom edge, and leading, you can also configure a
consistent baseline-to-baseline distance. You could, for instance, set the
leading to ` 1em  ` , the top-edge to ` 0.8em  ` , and the bottom-edge to ` -
0.2em  ` to get a baseline gap of exactly ` 2em  ` . The exact distribution of
the top- and bottom-edge values affects the bounds of the first and last line.

Default: ` 0.65em  `

###  ` spacing `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between paragraphs.

Just like leading, this defines the spacing between the bottom edge of a
paragraph's last line and the top edge of the next paragraph's first line.

When a paragraph is adjacent to a [ ` block ` ](/docs/reference/layout/block/
"`block`") that is not a paragraph, that block's [ ` above `
](/docs/reference/layout/block/#parameters-above) or [ ` below `
](/docs/reference/layout/block/#parameters-below) property takes precedence
over the paragraph spacing. Headings, for instance, reduce the spacing below
them by default for a better look.

Default: ` 1.2em  `

###  ` justify `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to justify text in its line.

Hyphenation will be enabled for justified paragraphs if the [ text function's
` hyphenate ` property ](/docs/reference/text/text/#parameters-hyphenate) is
set to ` auto  ` and the current language is known.

Note that the current [ alignment ](/docs/reference/layout/align/#parameters-
alignment) still has an effect on the placement of the last line except if it
ends with a [ justified line break
](/docs/reference/text/linebreak/#parameters-justify) .

Default: ` false  `

###  ` linebreaks `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to determine line breaks.

When this property is set to ` auto  ` , its default value, optimized line
breaks will be used for justified paragraphs. Enabling optimized line breaks
for ragged paragraphs may also be worthwhile to improve the appearance of the
text.

Variant  |  Details   
---|---  
` "  simple  " ` |  Determine the line breaks in a simple first-fit style.   
` "  optimized  " ` |  Optimize the line breaks for the whole paragraph.  Typst will try to produce more evenly filled lines of text by considering the whole paragraph when calculating line breaks.   
  
Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(width: 207pt)
    #set par(linebreaks: "simple")
    Some texts feature many longer
    words. Those are often exceedingly
    challenging to break in a visually
    pleasing way.
    
    #set par(linebreaks: "optimized")
    Some texts feature many longer
    words. Those are often exceedingly
    challenging to break in a visually
    pleasing way.
    

![Preview](/assets/docs/r-fawkmmJ6Sniwi8--ib5gAAAAAAAAAA.png)

###  ` first-line-indent `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The indent the first line of a paragraph should have.

Only the first line of a consecutive paragraph will be indented (not the first
one in a block or on the page).

By typographic convention, paragraph breaks are indicated either by some space
between paragraphs or by indented first lines. Consider reducing the [
paragraph spacing ](/docs/reference/layout/block/#parameters-spacing) to the [
` leading ` ](/docs/reference/model/par/#parameters-leading) when using this
property (e.g. using ` #  set  par  (  spacing  :  0.65em  )  ` ).

Default: ` 0pt  `

###  ` hanging-indent `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The indent all but the first line of a paragraph should have.

Default: ` 0pt  `

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The contents of the paragraph.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` line ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A paragraph line.

This element is exclusively used for line number configuration through set
rules and cannot be placed.

The [ ` numbering ` ](/docs/reference/model/par/#definitions-line-numbering)
option is used to enable line numbers by specifying a numbering format.

par  .  line  (

numbering  :  [ none ](/docs/reference/foundations/none/) [ str
](/docs/reference/foundations/str/) [ function
](/docs/reference/foundations/function/) ,  number-align  :  [ auto
](/docs/reference/foundations/auto/) [ alignment
](/docs/reference/layout/alignment/) ,  number-margin  :  [ alignment
](/docs/reference/layout/alignment/) ,  number-clearance  :  [ auto
](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) ,  numbering-scope  :  [ str
](/docs/reference/foundations/str/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #set par.line(numbering: "1")
    
    Roses are red. \
    Violets are blue. \
    Typst is there for you.
    

![Preview](/assets/docs/b257YLHUEagbFWlPeD4gEwAAAAAAAAAA.png)

The ` numbering ` option takes either a predefined [ numbering pattern
](/docs/reference/model/numbering/) or a function returning styled content.
You can disable line numbers for text inside certain elements by setting the
numbering to ` none  ` using show-set rules.

    
    
    // Styled red line numbers.
    #set par.line(
      numbering: n => text(red)[#n]
    )
    
    // Disable numbers inside figures.
    #show figure: set par.line(
      numbering: none
    )
    
    Roses are red. \
    Violets are blue.
    
    #figure(
      caption: [Without line numbers.]
    )[
      Lorem ipsum \
      dolor sit amet
    ]
    
    The text above is a sample \
    originating from distant times.
    

![Preview](/assets/docs/WJNwFvR3ObvODT-MbWqflAAAAAAAAAAA.png)

This element exposes further options which may be used to control other
aspects of line numbering, such as its [ alignment
](/docs/reference/model/par/#definitions-line-number-align) or [ margin
](/docs/reference/model/par/#definitions-line-number-margin) . In addition,
you can control whether the numbering is reset on each page through the [ `
numbering-scope ` ](/docs/reference/model/par/#definitions-line-numbering-
scope) option.

####  ` numbering `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to number each line. Accepts a [ numbering pattern or function
](/docs/reference/model/numbering/) .

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par.line(numbering: "I")
    
    Roses are red. \
    Violets are blue. \
    Typst is there for you.
    

![Preview](/assets/docs/O-oJqYc-OwEoxappxK4AZAAAAAAAAAAA.png)

####  ` number-align `

[ auto ](/docs/reference/foundations/auto/) or  [ alignment
](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The alignment of line numbers associated with each line.

The default of ` auto  ` indicates a smart default where numbers grow
horizontally away from the text, considering the margin they're in and the
current text direction.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par.line(
      numbering: "I",
      number-align: left,
    )
    
    Hello world! \
    Today is a beautiful day \
    For exploring the world.
    

![Preview](/assets/docs/XfwBMgYjt2fGeRgFr_kj4AAAAAAAAAAA.png)

####  ` number-margin `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The margin at which line numbers appear.

_Note:_ In a multi-column document, the line numbers for paragraphs inside the
last column will always appear on the ` end ` margin (right margin for left-
to-right text and left margin for right-to-left), regardless of this
configuration. That behavior cannot be changed at this moment.

Default: ` start `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par.line(
      numbering: "1",
      number-margin: right,
    )
    
    = Report
    - Brightness: Dark, yet darker
    - Readings: Negative
    

![Preview](/assets/docs/vf0ZBrlygVUABySMskTaKQAAAAAAAAAA.png)

####  ` number-clearance `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The distance between line numbers and text.

The default value of ` auto  ` results in a clearance that is adaptive to the
page width and yields reasonable results in most cases.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par.line(
      numbering: "1",
      number-clearance: 4pt,
    )
    
    Typesetting \
    Styling \
    Layout
    

![Preview](/assets/docs/MgiUB3LoxE0JROWoHJPslgAAAAAAAAAA.png)

####  ` numbering-scope `

[ str ](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Controls when to reset line numbering.

_Note:_ The line numbering scope must be uniform across each page run (a page
run is a sequence of pages without an explicit pagebreak in between). For this
reason, set rules for it should be defined before any page content, typically
at the very start of the document.

Variant  |  Details   
---|---  
` "  document  " ` |  Indicates the line number counter spans the whole document, that is, is never automatically reset.   
` "  page  " ` |  Indicates the line number counter should be reset at the start of every new page.   
  
Default: ` "document"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par.line(
      numbering: "1",
      numbering-scope: "page",
    )
    
    First line \
    Second line
    #pagebreak()
    First line again \
    Second line again
    

![Preview](/assets/docs/MmmIOu-UB2sC4GlOg3oj9AAAAAAAAAAA.png)
![Preview](/assets/docs/MmmIOu-UB2sC4GlOg3oj9AAAAAAAAAAB.png)

[ ![â](/assets/icons/16-arrow-right.svg) Outline  Previous page
](/docs/reference/model/outline/) [ ![â](/assets/icons/16-arrow-right.svg)
Paragraph Break  Next page  ](/docs/reference/model/parbreak/)

