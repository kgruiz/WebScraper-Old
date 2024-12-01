  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Table ](/docs/reference/model/table/)

#  ` table ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A table of items.

Tables are used to arrange content in cells. Cells can contain arbitrary
content, including multiple paragraphs and are specified in row-major order.
For a hands-on explanation of all the ways you can use and customize tables in
Typst, check out the [ table guide ](/docs/guides/table-guide/) .

Because tables are just grids with different defaults for some cell properties
(notably ` stroke ` and ` inset ` ), refer to the [ grid documentation
](/docs/reference/layout/grid/) for more information on how to size the table
tracks and specify the cell appearance properties.

If you are unsure whether you should be using a table or a grid, consider
whether the content you are arranging semantically belongs together as a set
of related data points or similar or whether you are just want to enhance your
presentation by arranging unrelated content in a grid. In the former case, a
table is the right choice, while in the latter case, a grid is more
appropriate. Furthermore, Typst will annotate its output in the future such
that screenreaders will announce content in ` table ` as tabular while a
grid's content will be announced no different than multiple content blocks in
the document flow.

Note that, to override a particular cell's properties or apply show rules on
table cells, you can use the [ ` table.cell `
](/docs/reference/model/table/#definitions-cell) element. See its
documentation for more information.

Although the ` table ` and the ` grid ` share most properties, set and show
rules on one of them do not affect the other.

To give a table a caption and make it [ referenceable
](/docs/reference/model/ref/) , put it into a [ figure
](/docs/reference/model/figure/ "figure") .

##  Example

The example below demonstrates some of the most common table options.

    
    
    #table(
      columns: (1fr, auto, auto),
      inset: 10pt,
      align: horizon,
      table.header(
        [], [*Volume*], [*Parameters*],
      ),
      image("cylinder.svg"),
      $ pi h (D^2 - d^2) / 4 $,
      [
        $h$: height \
        $D$: outer radius \
        $d$: inner radius
      ],
      image("tetrahedron.svg"),
      $ sqrt(2) / 12 a^3 $,
      [$a$: edge length]
    )
    

![Preview](/assets/docs/KSzjBsOqtudzwvK6Zvp9uwAAAAAAAAAA.png)

Much like with grids, you can use [ ` table.cell `
](/docs/reference/model/table/#definitions-cell) to customize the appearance
and the position of each cell.

    
    
    #set table(
      stroke: none,
      gutter: 0.2em,
      fill: (x, y) =>
        if x == 0 or y == 0 { gray },
      inset: (right: 1.5em),
    )
    
    #show table.cell: it => {
      if it.x == 0 or it.y == 0 {
        set text(white)
        strong(it)
      } else if it.body == [] {
        // Replace empty cells with 'N/A'
        pad(..it.inset)[_N/A_]
      } else {
        it
      }
    }
    
    #let a = table.cell(
      fill: green.lighten(60%),
    )[A]
    #let b = table.cell(
      fill: aqua.lighten(60%),
    )[B]
    
    #table(
      columns: 4,
      [], [Exam 1], [Exam 2], [Exam 3],
    
      [John], [], a, [],
      [Mary], [], a, a,
      [Robert], b, a, b,
    )
    

![Preview](/assets/docs/D_wYQ9Nqm8ZPq6ssgJwiZQAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

table  (

columns  :  [ auto ](/docs/reference/foundations/auto/) [ int
](/docs/reference/foundations/int/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) [ array
](/docs/reference/foundations/array/) ,  rows  :  [ auto
](/docs/reference/foundations/auto/) [ int ](/docs/reference/foundations/int/)
[ relative ](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) [ array
](/docs/reference/foundations/array/) ,  gutter  :  [ auto
](/docs/reference/foundations/auto/) [ int ](/docs/reference/foundations/int/)
[ relative ](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) [ array
](/docs/reference/foundations/array/) ,  column-gutter  :  [ auto
](/docs/reference/foundations/auto/) [ int ](/docs/reference/foundations/int/)
[ relative ](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) [ array
](/docs/reference/foundations/array/) ,  row-gutter  :  [ auto
](/docs/reference/foundations/auto/) [ int ](/docs/reference/foundations/int/)
[ relative ](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) [ array
](/docs/reference/foundations/array/) ,  fill  :  [ none
](/docs/reference/foundations/none/) [ color
](/docs/reference/visualize/color/) [ gradient
](/docs/reference/visualize/gradient/) [ array
](/docs/reference/foundations/array/) [ pattern
](/docs/reference/visualize/pattern/) [ function
](/docs/reference/foundations/function/) ,  align  :  [ auto
](/docs/reference/foundations/auto/) [ array
](/docs/reference/foundations/array/) [ alignment
](/docs/reference/layout/alignment/) [ function
](/docs/reference/foundations/function/) ,  stroke  :  [ none
](/docs/reference/foundations/none/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ array
](/docs/reference/foundations/array/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) [ function
](/docs/reference/foundations/function/) ,  inset  :  [ relative
](/docs/reference/layout/relative/) [ array
](/docs/reference/foundations/array/) [ dictionary
](/docs/reference/foundations/dictionary/) [ function
](/docs/reference/foundations/function/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` columns `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The column sizes. See the [ grid documentation ](/docs/reference/layout/grid/)
for more information on track sizing.

Default: ` (  )  `

###  ` rows `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The row sizes. See the [ grid documentation ](/docs/reference/layout/grid/)
for more information on track sizing.

Default: ` (  )  `

###  ` gutter `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The gaps between rows and columns. This is a shorthand for setting ` column-
gutter ` and ` row-gutter ` to the same value. See the [ grid documentation
](/docs/reference/layout/grid/) for more information on gutters.

Default: ` (  )  `

###  ` column-gutter `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The gaps between columns. Takes precedence over ` gutter ` . See the [ grid
documentation ](/docs/reference/layout/grid/) for more information on gutters.

Default: ` (  )  `

###  ` row-gutter `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The gaps between rows. Takes precedence over ` gutter ` . See the [ grid
documentation ](/docs/reference/layout/grid/) for more information on gutters.

Default: ` (  )  `

###  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ array
](/docs/reference/foundations/array/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to fill the cells.

This can be a color or a function that returns a color. The function receives
the cells' column and row indices, starting from zero. This can be used to
implement striped tables.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #table(
      fill: (x, _) =>
        if calc.odd(x) { luma(240) }
        else { white },
      align: (x, y) =>
        if y == 0 { center }
        else if x == 0 { left }
        else { right },
      columns: 4,
      [], [*Q1*], [*Q2*], [*Q3*],
      [Revenue:], [1000 â¬], [2000 â¬], [3000 â¬],
      [Expenses:], [500 â¬], [1000 â¬], [1500 â¬],
      [Profit:], [500 â¬], [1000 â¬], [1500 â¬],
    )
    

![Preview](/assets/docs/HObhPJHvYkiYqHCjRK1JHwAAAAAAAAAA.png)

###  ` align `

[ auto ](/docs/reference/foundations/auto/) or  [ array
](/docs/reference/foundations/array/) or  [ alignment
](/docs/reference/layout/alignment/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to align the cells' content.

This can either be a single alignment, an array of alignments (corresponding
to each column) or a function that returns an alignment. The function receives
the cells' column and row indices, starting from zero. If set to ` auto  ` ,
the outer alignment is used.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #table(
      columns: 3,
      align: (left, center, right),
      [Hello], [Hello], [Hello],
      [A], [B], [C],
    )
    

![Preview](/assets/docs/_fBgotCl-LtVjvGU4yJFLQAAAAAAAAAA.png)

###  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ array
](/docs/reference/foundations/array/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to [ stroke ](/docs/reference/visualize/stroke/ "stroke") the cells.

Strokes can be disabled by setting this to ` none  ` .

If it is necessary to place lines which can cross spacing between cells
produced by the ` gutter ` option, or to override the stroke between multiple
specific cells, consider specifying one or more of [ ` table.hline `
](/docs/reference/model/table/#definitions-hline) and [ ` table.vline `
](/docs/reference/model/table/#definitions-vline) alongside your table cells.

See the [ grid documentation ](/docs/reference/layout/grid/#parameters-stroke)
for more information on strokes.

Default: ` 1pt  +  black `

###  ` inset `

[ relative ](/docs/reference/layout/relative/) or  [ array
](/docs/reference/foundations/array/) or  [ dictionary
](/docs/reference/foundations/dictionary/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to pad the cells' content.

Default: ` 0%  +  5pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #table(
      inset: 10pt,
      [Hello],
      [World],
    )
    
    #table(
      columns: 2,
      inset: (
        x: 20pt,
        y: 10pt,
      ),
      [Hello],
      [World],
    )
    

![Preview](/assets/docs/f1kE1ENTTB02iZKKPoV_XwAAAAAAAAAA.png)

###  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The contents of the table cells, plus any extra table lines specified with the
[ ` table.hline ` ](/docs/reference/model/table/#definitions-hline) and [ `
table.vline ` ](/docs/reference/model/table/#definitions-vline) elements.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` cell ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A cell in the table. Use this to position a cell manually or to apply styling.
To do the latter, you can either use the function to override the properties
for a particular cell, or use it in show rules to apply certain styles to
multiple cells at once.

Perhaps the most important use case of ` table  .  cell ` is to make a cell
span multiple columns and/or rows with the ` colspan ` and ` rowspan ` fields.

table  .  cell  (

[ content ](/docs/reference/foundations/content/) ,  x  :  [ auto
](/docs/reference/foundations/auto/) [ int ](/docs/reference/foundations/int/)
,  y  :  [ auto ](/docs/reference/foundations/auto/) [ int
](/docs/reference/foundations/int/) ,  colspan  :  [ int
](/docs/reference/foundations/int/) ,  rowspan  :  [ int
](/docs/reference/foundations/int/) ,  fill  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ color
](/docs/reference/visualize/color/) [ gradient
](/docs/reference/visualize/gradient/) [ pattern
](/docs/reference/visualize/pattern/) ,  align  :  [ auto
](/docs/reference/foundations/auto/) [ alignment
](/docs/reference/layout/alignment/) ,  inset  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  stroke  :  [ none
](/docs/reference/foundations/none/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  breakable  :  [ auto
](/docs/reference/foundations/auto/) [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #show table.cell.where(y: 0): strong
    #set table(
      stroke: (x, y) => if y == 0 {
        (bottom: 0.7pt + black)
      },
      align: (x, y) => (
        if x > 0 { center }
        else { left }
      )
    )
    
    #table(
      columns: 3,
      table.header(
        [Substance],
        [Subcritical Â°C],
        [Supercritical Â°C],
      ),
      [Hydrochloric Acid],
      [12.0], [92.1],
      [Sodium Myreth Sulfate],
      [16.6], [104],
      [Potassium Hydroxide],
      table.cell(colspan: 2)[24.7],
    )
    

![Preview](/assets/docs/2rQPm8gbRwbFqiITJlD6oAAAAAAAAAAA.png)

For example, you can override the fill, alignment or inset for a single cell:

    
    
    // You can also import those.
    #import table: cell, header
    
    #table(
      columns: 2,
      align: center,
      header(
        [*Trip progress*],
        [*Itinerary*],
      ),
      cell(
        align: right,
        fill: fuchsia.lighten(80%),
        [ð],
      ),
      [Get in, folks!],
      [ð], [Eat curbside hotdog],
      cell(align: left)[ð´ð],
      cell(
        inset: 0.06em,
        text(1.62em)[ððð],
      ),
    )
    

![Preview](/assets/docs/VtayZlhMrUWzOmBAyEorDQAAAAAAAAAA.png)

You may also apply a show rule on ` table.cell ` to style all cells at once.
Combined with selectors, this allows you to apply styles based on a cell's
position:

    
    
    #show table.cell.where(x: 0): strong
    
    #table(
      columns: 3,
      gutter: 3pt,
      [Name], [Age], [Strength],
      [Hannes], [36], [Grace],
      [Irma], [50], [Resourcefulness],
      [Vikram], [49], [Perseverance],
    )
    

![Preview](/assets/docs/c2SP069qvMBzeFbrjVs8pwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The cell's body.

####  ` x `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's column (zero-indexed). Functions identically to the ` x ` field in
[ ` grid.cell ` ](/docs/reference/layout/grid/#definitions-cell) .

Default: ` auto  `

####  ` y `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's row (zero-indexed). Functions identically to the ` y ` field in [ `
grid.cell ` ](/docs/reference/layout/grid/#definitions-cell) .

Default: ` auto  `

####  ` colspan `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The amount of columns spanned by this cell.

Default: ` 1  `

####  ` rowspan `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The amount of rows spanned by this cell.

Default: ` 1  `

####  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ pattern
](/docs/reference/visualize/pattern/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's [ fill ](/docs/reference/model/table/#parameters-fill) override.

Default: ` auto  `

####  ` align `

[ auto ](/docs/reference/foundations/auto/) or  [ alignment
](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's [ alignment ](/docs/reference/model/table/#parameters-align)
override.

Default: ` auto  `

####  ` inset `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's [ inset ](/docs/reference/model/table/#parameters-inset) override.

Default: ` auto  `

####  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's [ stroke ](/docs/reference/model/table/#parameters-stroke)
override.

Default: ` (  :  )  `

####  ` breakable `

[ auto ](/docs/reference/foundations/auto/) or  [ bool
](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether rows spanned by this cell can be placed in different pages. When equal
to ` auto  ` , a cell spanning only fixed-size rows is unbreakable, while a
cell spanning at least one ` auto  ` -sized row is breakable.

Default: ` auto  `

###  ` hline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal line in the table.

Overrides any per-cell stroke, including stroke specified through the table's
` stroke ` field. Can cross spacing between cells created through the table's
[ ` column-gutter ` ](/docs/reference/model/table/#parameters-column-gutter)
option.

Use this function instead of the table's ` stroke ` field if you want to
manually place a horizontal line at a specific position in a single table.
Consider using [ table's ` stroke ` ](/docs/reference/model/table/#parameters-
stroke) field or [ ` table.cell ` 's ` stroke `
](/docs/reference/model/table/#definitions-cell-stroke) field instead if the
line you want to place is part of all your tables' designs.

table  .  hline  (

y  :  [ auto ](/docs/reference/foundations/auto/) [ int
](/docs/reference/foundations/int/) ,  start  :  [ int
](/docs/reference/foundations/int/) ,  end  :  [ none
](/docs/reference/foundations/none/) [ int ](/docs/reference/foundations/int/)
,  stroke  :  [ none ](/docs/reference/foundations/none/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  position  :  [ alignment
](/docs/reference/layout/alignment/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #set table.hline(stroke: .6pt)
    
    #table(
      stroke: none,
      columns: (auto, 1fr),
      [09:00], [Badge pick up],
      [09:45], [Opening Keynote],
      [10:30], [Talk: Typst's Future],
      [11:15], [Session: Good PRs],
      table.hline(start: 1),
      [Noon], [_Lunch break_],
      table.hline(start: 1),
      [14:00], [Talk: Tracked Layout],
      [15:00], [Talk: Automations],
      [16:00], [Workshop: Tables],
      table.hline(),
      [19:00], [Day 1 Attendee Mixer],
    )
    

![Preview](/assets/docs/Fl-W72wh8hlKb72YjlJ0PgAAAAAAAAAA.png)

####  ` y `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The row above which the horizontal line is placed (zero-indexed). Functions
identically to the ` y ` field in [ ` grid.hline `
](/docs/reference/layout/grid/#definitions-hline-y) .

Default: ` auto  `

####  ` start `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The column at which the horizontal line starts (zero-indexed, inclusive).

Default: ` 0  `

####  ` end `

[ none ](/docs/reference/foundations/none/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The column before which the horizontal line ends (zero-indexed, exclusive).

Default: ` none  `

####  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The line's stroke.

Specifying ` none  ` removes any lines previously placed across this line's
range, including hlines or per-cell stroke below it.

Default: ` 1pt  +  black `

####  ` position `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The position at which the line is placed, given its row ( ` y ` ) - either `
top ` to draw above it or ` bottom ` to draw below it.

This setting is only relevant when row gutter is enabled (and shouldn't be
used otherwise - prefer just increasing the ` y ` field by one instead), since
then the position below a row becomes different from the position above the
next row due to the spacing between both.

Default: ` top `

###  ` vline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A vertical line in the table. See the docs for [ ` grid.vline `
](/docs/reference/layout/grid/#definitions-vline) for more information
regarding how to use this element's fields.

Overrides any per-cell stroke, including stroke specified through the table's
` stroke ` field. Can cross spacing between cells created through the table's
[ ` row-gutter ` ](/docs/reference/model/table/#parameters-row-gutter) option.

Similar to [ ` table.hline ` ](/docs/reference/model/table/#definitions-hline)
, use this function if you want to manually place a vertical line at a
specific position in a single table and use the [ table's ` stroke `
](/docs/reference/model/table/#parameters-stroke) field or [ ` table.cell ` 's
` stroke ` ](/docs/reference/model/table/#definitions-cell-stroke) field
instead if the line you want to place is part of all your tables' designs.

table  .  vline  (

x  :  [ auto ](/docs/reference/foundations/auto/) [ int
](/docs/reference/foundations/int/) ,  start  :  [ int
](/docs/reference/foundations/int/) ,  end  :  [ none
](/docs/reference/foundations/none/) [ int ](/docs/reference/foundations/int/)
,  stroke  :  [ none ](/docs/reference/foundations/none/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  position  :  [ alignment
](/docs/reference/layout/alignment/) ,

)  -> [ content ](/docs/reference/foundations/content/)

####  ` x `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The column before which the horizontal line is placed (zero-indexed).
Functions identically to the ` x ` field in [ ` grid.vline `
](/docs/reference/layout/grid/#definitions-vline) .

Default: ` auto  `

####  ` start `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The row at which the vertical line starts (zero-indexed, inclusive).

Default: ` 0  `

####  ` end `

[ none ](/docs/reference/foundations/none/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The row on top of which the vertical line ends (zero-indexed, exclusive).

Default: ` none  `

####  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The line's stroke.

Specifying ` none  ` removes any lines previously placed across this line's
range, including vlines or per-cell stroke below it.

Default: ` 1pt  +  black `

####  ` position `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The position at which the line is placed, given its column ( ` x ` ) - either
` start ` to draw before it or ` end ` to draw after it.

The values ` left ` and ` right ` are also accepted, but discouraged as they
cause your table to be inconsistent between left-to-right and right-to-left
documents.

This setting is only relevant when column gutter is enabled (and shouldn't be
used otherwise - prefer just increasing the ` x ` field by one instead), since
then the position after a column becomes different from the position before
the next column due to the spacing between both.

Default: ` start `

###  ` header ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A repeatable table header.

You should wrap your tables' heading rows in this function even if you do not
plan to wrap your table across pages because Typst will use this function to
attach accessibility metadata to tables in the future and ensure universal
access to your document.

You can use the ` repeat ` parameter to control whether your table's header
will be repeated across pages.

table  .  header  (

repeat  :  [ bool ](/docs/reference/foundations/bool/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    #set page(height: 11.5em)
    #set table(
      fill: (x, y) =>
        if x == 0 or y == 0 {
          gray.lighten(40%)
        },
      align: right,
    )
    
    #show table.cell.where(x: 0): strong
    #show table.cell.where(y: 0): strong
    
    #table(
      columns: 4,
      table.header(
        [], [Blue chip],
        [Fresh IPO], [Penny st'k],
      ),
      table.cell(
        rowspan: 6,
        align: horizon,
        rotate(-90deg, reflow: true)[
          *USD / day*
        ],
      ),
      [0.20], [104], [5],
      [3.17], [108], [4],
      [1.59], [84],  [1],
      [0.26], [98],  [15],
      [0.01], [195], [4],
      [7.34], [57],  [2],
    )
    

![Preview](/assets/docs/IHpzp-b7mQ7ctAllSxEWfQAAAAAAAAAA.png)
![Preview](/assets/docs/IHpzp-b7mQ7ctAllSxEWfQAAAAAAAAAB.png)

####  ` repeat `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether this header should be repeated across pages.

Default: ` true  `

####  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The cells and lines within the header.

###  ` footer ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A repeatable table footer.

Just like the [ ` table.header ` ](/docs/reference/model/table/#definitions-
header) element, the footer can repeat itself on every page of the table. This
is useful for improving legibility by adding the column labels in both the
header and footer of a large table, totals, or other information that should
be visible on every page.

No other table cells may be placed after the footer.

table  .  footer  (

repeat  :  [ bool ](/docs/reference/foundations/bool/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

####  ` repeat `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether this footer should be repeated across pages.

Default: ` true  `

####  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The cells and lines within the footer.

[ ![â](/assets/icons/16-arrow-right.svg) Strong Emphasis  Previous page
](/docs/reference/model/strong/) [ ![â](/assets/icons/16-arrow-right.svg)
Term List  Next page  ](/docs/reference/model/terms/)

