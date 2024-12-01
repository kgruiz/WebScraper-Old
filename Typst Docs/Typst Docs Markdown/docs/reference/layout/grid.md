  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Grid ](/docs/reference/layout/grid/)

#  ` grid ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Arranges content in a grid.

The grid element allows you to arrange content in a grid. You can define the
number of rows and columns, as well as the size of the gutters between them.
There are multiple sizing modes for columns and rows that can be used to
create complex layouts.

While the grid and table elements work very similarly, they are intended for
different use cases and carry different semantics. The grid element is
intended for presentational and layout purposes, while the [ ` table `
](/docs/reference/model/table/) element is intended for, in broad terms,
presenting multiple related data points. In the future, Typst will annotate
its output such that screenreaders will announce content in ` table ` as
tabular while a grid's content will be announced no different than multiple
content blocks in the document flow. Set and show rules on one of these
elements do not affect the other.

A grid's sizing is determined by the track sizes specified in the arguments.
Because each of the sizing parameters accepts the same values, we will explain
them just once, here. Each sizing argument accepts an array of individual
track sizes. A track size is either:

  * ` auto  ` : The track will be sized to fit its contents. It will be at most as large as the remaining space. If there is more than one ` auto  ` track width, and together they claim more than the available space, the ` auto  ` tracks will fairly distribute the available space among themselves. 

  * A fixed or relative length (e.g. ` 10pt  ` or ` 20%  -  1cm  ` ): The track will be exactly of this size. 

  * A fractional length (e.g. ` 1fr  ` ): Once all other tracks have been sized, the remaining space will be divided among the fractional tracks according to their fractions. For example, if there are two fractional tracks, each with a fraction of ` 1fr  ` , they will each take up half of the remaining space. 

To specify a single track, the array can be omitted in favor of a single
value. To specify multiple ` auto  ` tracks, enter the number of tracks
instead of an array. For example, ` columns: ` ` 3  ` is equivalent to `
columns: ` ` (  auto  ,  auto  ,  auto  )  ` .

##  Examples

The example below demonstrates the different track sizing options. It also
shows how you can use [ ` grid.cell `
](/docs/reference/layout/grid/#definitions-cell) to make an individual cell
span two grid tracks.

    
    
    // We use `rect` to emphasize the
    // area of cells.
    #set rect(
      inset: 8pt,
      fill: rgb("e4e5ea"),
      width: 100%,
    )
    
    #grid(
      columns: (60pt, 1fr, 2fr),
      rows: (auto, 60pt),
      gutter: 3pt,
      rect[Fixed width, auto height],
      rect[1/3 of the remains],
      rect[2/3 of the remains],
      rect(height: 100%)[Fixed height],
      grid.cell(
        colspan: 2,
        image("tiger.jpg", width: 100%),
      ),
    )
    

![Preview](/assets/docs/nU6HFHUP8AJwyw_E8LwJrgAAAAAAAAAA.png)

You can also [ spread ](/docs/reference/foundations/arguments/#spreading) an
array of strings or content into a grid to populate its cells.

    
    
    #grid(
      columns: 5,
      gutter: 5pt,
      ..range(25).map(str)
    )
    

![Preview](/assets/docs/qtEXI9WWslJNDT0wWvWAggAAAAAAAAAA.png)

##  Styling the grid

The grid's appearance can be customized through different parameters. These
are the most important ones:

  * [ ` fill ` ](/docs/reference/layout/grid/#parameters-fill) to give all cells a background 
  * [ ` align ` ](/docs/reference/layout/grid/#parameters-align) to change how cells are aligned 
  * [ ` inset ` ](/docs/reference/layout/grid/#parameters-inset) to optionally add internal padding to each cell 
  * [ ` stroke ` ](/docs/reference/layout/grid/#parameters-stroke) to optionally enable grid lines with a certain stroke 

If you need to override one of the above options for a single cell, you can
use the [ ` grid.cell ` ](/docs/reference/layout/grid/#definitions-cell)
element. Likewise, you can override individual grid lines with the [ `
grid.hline ` ](/docs/reference/layout/grid/#definitions-hline) and [ `
grid.vline ` ](/docs/reference/layout/grid/#definitions-vline) elements.

Alternatively, if you need the appearance options to depend on a cell's
position (column and row), you may specify a function to ` fill ` or ` align `
of the form ` (column, row) => value ` . You may also use a show rule on [ `
grid.cell ` ](/docs/reference/layout/grid/#definitions-cell) \- see that
element's examples or the examples below for more information.

Locating most of your styling in set and show rules is recommended, as it
keeps the grid's or table's actual usages clean and easy to read. It also
allows you to easily change the grid's appearance in one place.

###  Stroke styling precedence

There are three ways to set the stroke of a grid cell: through [ ` grid  .
cell ` 's ` stroke ` field ](/docs/reference/layout/grid/#definitions-cell-
stroke) , by using [ ` grid  .  hline `
](/docs/reference/layout/grid/#definitions-hline) and [ ` grid  .  vline `
](/docs/reference/layout/grid/#definitions-vline) , or by setting the [ ` grid
` 's ` stroke ` field ](/docs/reference/layout/grid/#parameters-stroke) . When
multiple of these settings are present and conflict, the ` hline ` and ` vline
` settings take the highest precedence, followed by the ` cell ` settings, and
finally the ` grid ` settings.

Furthermore, strokes of a repeated grid header or footer will take precedence
over regular cell strokes.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

grid  (

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

The column sizes.

Either specify a track size array or provide an integer to create a grid with
that many ` auto  ` -sized columns. Note that opposed to rows and gutters,
providing a single track size will only ever create a single column.

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

The row sizes.

If there are more cells than fit the defined rows, the last row is repeated
until there are no more cells.

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

The gaps between rows and columns.

If there are more gutters than defined sizes, the last gutter is repeated.

This is a shorthand to set ` column-gutter ` and ` row-gutter ` to the same
value.

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

The gaps between columns.

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

The gaps between rows.

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
implement striped grids.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #grid(
      fill: (x, y) =>
        if calc.even(x + y) { luma(230) }
        else { white },
      align: center + horizon,
      columns: 4,
      inset: 2pt,
      [X], [O], [X], [O],
      [O], [X], [O], [X],
      [X], [O], [X], [O],
      [O], [X], [O], [X],
    )
    

![Preview](/assets/docs/YWpStHlSHlCZTmUmBJs9XQAAAAAAAAAA.png)

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

You can find an example for this argument at the [ ` table.align `
](/docs/reference/model/table/#parameters-align) parameter.

Default: ` auto  `

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

How to [ stroke ](/docs/reference/visualize/stroke/) the cells.

Grids have no strokes by default, which can be changed by setting this option
to the desired stroke.

If it is necessary to place lines which can cross spacing between cells
produced by the ` gutter ` option, or to override the stroke between multiple
specific cells, consider specifying one or more of [ ` grid.hline `
](/docs/reference/layout/grid/#definitions-hline) and [ ` grid.vline `
](/docs/reference/layout/grid/#definitions-vline) alongside your grid cells.

Default: ` (  :  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(height: 13em, width: 26em)
    
    #let cv(..jobs) = grid(
        columns: 2,
        inset: 5pt,
        stroke: (x, y) => if x == 0 and y > 0 {
          (right: (
            paint: luma(180),
            thickness: 1.5pt,
            dash: "dotted"
          ))
        },
        grid.header(grid.cell(colspan: 2)[
          *Professional Experience*
          #box(width: 1fr, line(length: 100%, stroke: luma(180)))
        ]),
        ..{
          let last = none
          for job in jobs.pos() {
            (
              if job.year != last [*#job.year*],
              [
                *#job.company* - #job.role _(#job.timeframe)_ \
                #job.details
              ]
            )
            last = job.year
          }
        }
      )
    
      #cv(
        (
          year: 2012,
          company: [Pear Seed & Co.],
          role: [Lead Engineer],
          timeframe: [Jul - Dec],
          details: [
            - Raised engineers from 3x to 10x
            - Did a great job
          ],
        ),
        (
          year: 2012,
          company: [Mega Corp.],
          role: [VP of Sales],
          timeframe: [Mar - Jun],
          details: [- Closed tons of customers],
        ),
        (
          year: 2013,
          company: [Tiny Co.],
          role: [CEO],
          timeframe: [Jan - Dec],
          details: [- Delivered 4x more shareholder value],
        ),
        (
          year: 2014,
          company: [Glorbocorp Ltd],
          role: [CTO],
          timeframe: [Jan - Mar],
          details: [- Drove containerization forward],
        ),
      )
    

![Preview](/assets/docs/5kfvlcbAPUFkWJtXr3FdMgAAAAAAAAAA.png)
![Preview](/assets/docs/5kfvlcbAPUFkWJtXr3FdMgAAAAAAAAAB.png)

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

You can find an example for this argument at the [ ` table.inset `
](/docs/reference/model/table/#parameters-inset) parameter.

Default: ` (  :  )  `

###  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The contents of the grid cells, plus any extra grid lines specified with the [
` grid.hline ` ](/docs/reference/layout/grid/#definitions-hline) and [ `
grid.vline ` ](/docs/reference/layout/grid/#definitions-vline) elements.

The cells are populated in row-major order.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` cell ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A cell in the grid. You can use this function in the argument list of a grid
to override grid style properties for an individual cell or manually
positioning it within the grid. You can also use this function in show rules
to apply certain styles to multiple cells at once.

For example, you can override the position and stroke for a single cell:

grid  .  cell  (

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

    
    
    #set text(15pt, font: "Noto Sans Symbols 2")
    #show regex("[â-âï¸]"): set text(fill: rgb("21212A"))
    #show regex("[â-â]"): set text(fill: rgb("111015"))
    
    #grid(
      fill: (x, y) => rgb(
        if calc.odd(x + y) { "7F8396" }
        else { "EFF0F3" }
      ),
      columns: (1em,) * 8,
      rows: 1em,
      align: center + horizon,
    
      [â], [â], [â], [â], [â], [â], [â], [â],
      [â], [â], [â], [â], [],  [â], [â], [â],
      grid.cell(
        x: 4, y: 3,
        stroke: blue.transparentize(60%)
      )[â],
    
      ..(grid.cell(y: 6)[â],) * 8,
      ..([â], [â], [â], [â], [â], [â], [â], [â])
        .map(grid.cell.with(y: 7)),
    )
    

![Preview](/assets/docs/hagMogxzgYo1z-9CqYbmiQAAAAAAAAAA.png)

You may also apply a show rule on ` grid.cell ` to style all cells at once,
which allows you, for example, to apply styles based on a cell's position.
Refer to the examples of the [ ` table.cell `
](/docs/reference/model/table/#definitions-cell) element to learn more about
this.

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

The cell's column (zero-indexed). This field may be used in show rules to
style a cell depending on its column.

You may override this field to pick in which column the cell must be placed.
If no row ( ` y ` ) is chosen, the cell will be placed in the first row
(starting at row 0) with that column available (or a new row if none). If both
` x ` and ` y ` are chosen, however, the cell will be placed in that exact
position. An error is raised if that position is not available (thus, it is
usually wise to specify cells with a custom position before cells with
automatic positions).

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #let circ(c) = circle(
        fill: c, width: 5mm
    )
    
    #grid(
      columns: 4,
      rows: 7mm,
      stroke: .5pt + blue,
      align: center + horizon,
      inset: 1mm,
    
      grid.cell(x: 2, y: 2, circ(aqua)),
      circ(yellow),
      grid.cell(x: 3, circ(green)),
      circ(black),
    )
    

![Preview](/assets/docs/1ClWJM7tWFhsIyNZJlD1owAAAAAAAAAA.png)

####  ` y `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's row (zero-indexed). This field may be used in show rules to style a
cell depending on its row.

You may override this field to pick in which row the cell must be placed. If
no column ( ` x ` ) is chosen, the cell will be placed in the first column
(starting at column 0) available in the chosen row. If all columns in the
chosen row are already occupied, an error is raised.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #let tri(c) = polygon.regular(
      fill: c,
      size: 5mm,
      vertices: 3,
    )
    
    #grid(
      columns: 2,
      stroke: blue,
      inset: 1mm,
    
      tri(black),
      grid.cell(y: 1, tri(teal)),
      grid.cell(y: 1, tri(red)),
      grid.cell(y: 2, tri(orange))
    )
    

![Preview](/assets/docs/KqESjHcjVY-CskMVImXGSAAAAAAAAAAA.png)

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

The cell's [ fill ](/docs/reference/layout/grid/#parameters-fill) override.

Default: ` auto  `

####  ` align `

[ auto ](/docs/reference/foundations/auto/) or  [ alignment
](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The cell's [ alignment ](/docs/reference/layout/grid/#parameters-align)
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

The cell's [ inset ](/docs/reference/layout/grid/#parameters-inset) override.

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

The cell's [ stroke ](/docs/reference/layout/grid/#parameters-stroke)
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

A horizontal line in the grid.

Overrides any per-cell stroke, including stroke specified through the grid's `
stroke ` field. Can cross spacing between cells created through the grid's `
column-gutter ` option.

An example for this function can be found at the [ ` table.hline `
](/docs/reference/model/table/#definitions-hline) element.

grid  .  hline  (

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

####  ` y `

[ auto ](/docs/reference/foundations/auto/) or  [ int
](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The row above which the horizontal line is placed (zero-indexed). If the `
position ` field is set to ` bottom ` , the line is placed below the row with
the given index instead (see that field's docs for details).

Specifying ` auto  ` causes the line to be placed at the row below the last
automatically positioned cell (that is, cell without coordinate overrides)
before the line among the grid's children. If there is no such cell before the
line, it is placed at the top of the grid (row 0). Note that specifying for
this option exactly the total amount of rows in the grid causes this
horizontal line to override the bottom border of the grid, while a value of 0
overrides the top border.

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
Therefore, the horizontal line will be drawn up to and across column ` end - 1
` .

A value equal to ` none  ` or to the amount of columns causes it to extend all
the way towards the end of the grid.

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

A vertical line in the grid.

Overrides any per-cell stroke, including stroke specified through the grid's `
stroke ` field. Can cross spacing between cells created through the grid's `
row-gutter ` option.

grid  .  vline  (

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

The column before which the horizontal line is placed (zero-indexed). If the `
position ` field is set to ` end ` , the line is placed after the column with
the given index instead (see that field's docs for details).

Specifying ` auto  ` causes the line to be placed at the column after the last
automatically positioned cell (that is, cell without coordinate overrides)
before the line among the grid's children. If there is no such cell before the
line, it is placed before the grid's first column (column 0). Note that
specifying for this option exactly the total amount of columns in the grid
causes this vertical line to override the end border of the grid (right in
LTR, left in RTL), while a value of 0 overrides the start border (left in LTR,
right in RTL).

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
Therefore, the vertical line will be drawn up to and across row ` end - 1 ` .

A value equal to ` none  ` or to the amount of rows causes it to extend all
the way towards the bottom of the grid.

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
cause your grid to be inconsistent between left-to-right and right-to-left
documents.

This setting is only relevant when column gutter is enabled (and shouldn't be
used otherwise - prefer just increasing the ` x ` field by one instead), since
then the position after a column becomes different from the position before
the next column due to the spacing between both.

Default: ` start `

###  ` header ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A repeatable grid header.

If ` repeat ` is set to ` true ` , the header will be repeated across pages.
For an example, refer to the [ ` table.header `
](/docs/reference/model/table/#definitions-header) element and the [ `
grid.stroke ` ](/docs/reference/layout/grid/#parameters-stroke) parameter.

grid  .  header  (

repeat  :  [ bool ](/docs/reference/foundations/bool/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

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

A repeatable grid footer.

Just like the [ ` grid.header ` ](/docs/reference/layout/grid/#definitions-
header) element, the footer can repeat itself on every page of the table.

No other grid cells may be placed after the footer.

grid  .  footer  (

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

[ ![â](/assets/icons/16-arrow-right.svg) Fraction  Previous page
](/docs/reference/layout/fraction/) [ ![â](/assets/icons/16-arrow-right.svg)
Hide  Next page  ](/docs/reference/layout/hide/)

