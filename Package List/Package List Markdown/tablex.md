#  tablex

0.0.9

More powerful and customizable tables in Typst.

**More powerful and customizable tables in Typst.**

##  Sponsors â¤ï¸

If youâd like to appear here, [ consider sponsoring the project!
](https://github.com/sponsors/PgBiel)

[ ![felipeacsi](https://github.com/felipeacsi.png)
](https://github.com/felipeacsi) [ ![Fabioni](https://github.com/Fabioni.png)
](https://github.com/Fabioni)

##  Important notice regarding Tablex usage

**Summary: Please use built-in Typst tables instead of tablex.** Most of
tablexâs features were implemented in Typst 0.11.0, see the [ docs
](https://typst.app/docs/reference/model/table/) .

However, **keep an eye for future tablex updates** as there might be some
interesting goodies ahead, including CeTZ support!

**Details:**

A large amount of tablexâs features have successfully been upstreamed by
this packageâs author to Typstâs built-in ` table ` and ` grid ` elements
(see the new Tables Guide, at [ https://typst.app/docs/guides/table-guide/
](https://typst.app/docs/guides/table-guide/) , and the ` table ` elementâs
reference, at [ https://typst.app/docs/reference/model/table/
](https://typst.app/docs/reference/model/table/) , for more information).

This effort was tracked in the following Typst issue: [
https://github.com/typst/typst/issues/3001
](https://github.com/typst/typst/issues/3001)

This means that, starting with Typst 0.11.0, **many advanced table features
can now be used with Typst grids and tables without tablex!** This includes:

  * Per-cell customization (through ` table.cell(inset: ..., align: ..., fill: ...)[body] ` , and ` #show table.cell: it => ... ` instead of ` map-cells ` ); 
  * Merging cells (colspans and rowspans, through ` table.cell(colspan: 2, rowspan: 2)[body] ` ); 
  * Line customization (you can control the ` stroke ` parameter of ` table.cell ` to control the lines around it, and you can use ` table.hline ` and ` table.vline ` which work similarly to their tablex counterparts - the equivalent of ` map-hlines ` and ` map-vlines ` is ` table(stroke: (x, y) => (left: ..., right: ..., top: ..., bottom: ...)) ` ); 
  * Repeatable table headers (through ` table.header(... cells ...) ` ); 
  * The features above are available within ` grid ` as well by replacing ` table ` with ` grid ` where applicable (e.g. ` grid.cell ` instead of ` table.cell ` ). 

Additionally, built-in Typst tables have support for features which werenât
previously available within tablex, such as **repeatable table footers**
(through ` table.footer ` and ` grid.footer ` ).

Therefore, **for the vast majority of use cases, you will no longer need to
use this library.**

There are a few observations:

  1. **Tablex will still receive updates over time** with extra features. In the next version (tablex 0.1.0), there will be **support for CeTZ integration** , which will allow you to easily **annotate your tables** using CeTZ (e.g. draw arrows between cells). If youâre interested in such features, then tablex might still be useful for you in the future! 
  2. **Not _all_ tablex features are present in built-in tables, at least yet. ** Therefore, **if you happen to use the features listed below, you might still have to use tablex** depending on your use case. It is expected, however, that built-in tables will eventually have support for most of the missing features in future Typst releases. Hereâs a non-exhaustive list of them: 
    1. Built-in tables do not yet have the ability to expand table lines by some arbitrary length. 
    2. The tablex ` fit-spans ` option, through which colspans and rowspans donât cause ` auto ` -sized columns and/or rows to expand, is not yet supported in built-in tables. 
    3. Built-in repeatable table headers currently always repeat in all pages, whereas you can define in which pages a tablex header should be repeated. 
  3. **Regarding sponsorships:** Any future sponsorships to the tablex author, [ @PgBiel ](https://github.com/PgBiel) , who was also responsible for upstreaming the various tablex features to built-in tables, will go not only towards extended maintenance of tablex, but also towards other general contributions to the Typst ecosystem and his other open-source contributions! More information here: [ https://github.com/sponsors/PgBiel/ ](https://github.com/sponsors/PgBiel/)

If there any questions, feel free to open a thread in the ` Discussions ` page
of this repository, or ping the author on Discord. Thanks to everyone who
supported me throughout tablexâs development and the upstreaming process. I
hope you enjoy the new update, and have fun with tables! ð

And make sure to keep an eye for future tablex updates. ð

##  Table of Contents

  * [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#usage)
  * [ Features ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#features)
    * [ _Almost_ drop-in replacement for ` #table ` ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#almost-drop-in-replacement-for-table)
    * [ colspanx/rowspanx ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#colspanxrowspanx)
    * [ Repeat header rows ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#repeat-header-rows)
    * [ Customize every single line ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#customize-every-single-line)
    * [ Customize every single cell ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#customize-every-single-cell)
  * [ Known Issues ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#known-issues)
  * [ Reference ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#reference)
    * [ Basic types and functions ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#basic-types-and-functions)
    * [ Gridx and Tablex ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#gridx-and-tablex)
  * [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#changelog)
    * [ v0.0.9 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v009)
    * [ v0.0.8 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v008)
    * [ v0.0.7 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v007)
    * [ v0.0.6 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v006)
    * [ v0.0.5 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v005)
    * [ v0.0.4 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v004)
    * [ v0.0.3 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v003)
    * [ v0.0.2 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v002)
    * [ v0.0.1 ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#v001)
  * [ 0.1.0 Roadmap ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#010-roadmap)
  * [ License ](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#license)

##  Usage

**NOTE: Please use built-in tables instead of this library** (see notice
above). **The rest of the README is kept for reference purposes only.**

To use this library through the Typst package manager **(for Typst v0.6.0+)**
, write for example ` #import "@preview/tablex:0.0.9": tablex, cellx ` at the
top of your Typst file (you may also add whichever other functions you use
from the library to that import list!).

For older Typst versions, download the file ` tablex.typ ` from the latest
release (or directly from the main branch, for the âbleeding edgeâ) at the
tablex repository ( [ https://github.com/PgBiel/typst-tablex
](https://github.com/PgBiel/typst-tablex) ) and place it on the same folder as
your own Typst file. Then, at the top of your file, write for example `
#import "tablex.typ": tablex, cellx ` (plus whichever other functions you use
from the library).

This library should be compatible with Typst versions between v0.2.0 and
v0.12.0 (inclusive). **Using the latest Typst version is always recommended**
in order to make use of the latest optimizations and features available.

Hereâs an example of what ` tablex ` can do:

![image](https://github.com/PgBiel/typst-
tablex/assets/9021226/355c527a-7296-4264-bac7-4ec991b15a18)

Hereâs the code for that table:

    
    
    #import "@preview/tablex:0.0.9": tablex, rowspanx, colspanx
    
    #tablex(
      columns: 4,
      align: center + horizon,
      auto-vlines: false,
    
      // indicate the first two rows are the header
      // (in case we need to eventually
      // enable repeating the header across pages)
      header-rows: 2,
    
      // color the last column's cells
      // based on the written number
      map-cells: cell => {
        if cell.x == 3 and cell.y > 1 {
          cell.content = {
            let value = int(cell.content.text)
            let text-color = if value < 10 {
              red.lighten(30%)
            } else if value < 15 {
              yellow.darken(13%)
            } else {
              green
            }
            set text(text-color)
            strong(cell.content)
          }
        }
        cell
      },
    
      /* --- header --- */
      rowspanx(2)[*Username*], colspanx(2)[*Data*], (), rowspanx(2)[*Score*],
      (),                 [*Location*], [*Height*], (),
      /* -------------- */
    
      [John], [Second St.], [180 cm], [5],
      [Wally], [Third Av.], [160 cm], [10],
      [Jason], [Some St.], [150 cm], [15],
      [Robert], [123 Av.], [190 cm], [20],
      [Other], [Unknown St.], [170 cm], [25],
    )
    

##  Features

###  _Almost_ drop-in replacement for ` #table `

( **Update:** tablexâs syntax was designed to be compatible with Typst
tables created **up to Typst v0.10.0** . The new table features introduced in
Typst v0.11.0 use syntax which isnât compatible with tablex, so it wonât
be a drop-in replacement in that case. However, tablex does have its own
syntax for those features, as will be explained below!)

In most cases, you should be able to replace ` #table ` with ` #tablex ` and
be good to go for a start - it should look _very_ similar (if not identical).
Indeed, the syntax is very similar for the basics:

    
    
    #import "@preview/tablex:0.0.9": tablex
    
    #tablex(
      columns: (auto, 1em, 1fr, 1fr),  // 4 columns
      rows: auto,  // at least 1 row of auto size
      fill: red,
      align: center + horizon,
      stroke: green,
      [a], [b], [c], [d],
      [e], [f], [g], [h],
      [i], [j], [k], [l]
    )
    

![image](https://user-
images.githubusercontent.com/9021226/230818397-2d599324-32a5-4184-973f-2fcfb6b62c84.png)

There are still a few oddities in the library (see [ Known Issues
](https://github.com/typst/packages/raw/main/packages/preview/tablex/0.0.9/#known-
issues) for more info), but, for the vast majority of cases, replacing `
#tablex ` by ` #table ` should work just fine. (Sometimes you can even replace
` #grid ` by ` #gridx ` \- see the line customization section for more -, but
not always, as the behavior is a bit different.)

This is mostly a word of caution in case anything I havenât anticipated
happens, but, based on my tests (and after tons of bug-fixing commits), the
vast majority of tables (that donât face one of the listed known issues)
should work just fine under the library.

**Note:** If your document is written in a right-to-left (RTL) script, you may
wish to enable ` rtl: true ` for your tables so that the order of cells and
lines properly follows your text direction (when combined with ` set text(dir:
rtl) ` ). This is necessary because tablex cannot detect that setting
automatically at the moment (while the native Typst table can and flips itself
horizontally automatically). See the tablex option reference for more
information.

###  colspanx/rowspanx

Your cells can now span more than one column and/or row at once, with `
colspanx ` / ` rowspanx ` :

    
    
    #import "@preview/tablex:0.0.9": tablex, colspanx, rowspanx
    
    #tablex(
      columns: 3,
      colspanx(2)[a], (),  [b],
      [c], rowspanx(2)[d], [ed],
      [f], (),             [g]
    )
    

![image](https://user-
images.githubusercontent.com/9021226/230810720-fbdfdbe5-8568-42ed-b8a2-5eff332a89d6.png)

Note that the empty parentheses there are just for organization, and are
ignored (unless they come before the first cell - more on that later).
Theyâre useful to help us keep track of which cell positions are being used
up by the spans, because, if we try to add an actual cell at these spots, it
will just push the others forward, which might seem unexpected.

Use ` colspanx(2, rowspanx(2)[d]) ` to colspan and rowspan at the same time.
Be careful not to attempt to overwrite other cellsâ spans, as you will get a
nasty error.

**Note (since tablex v0.0.8):** By default, colspans and rowspans can cause
spanned ` auto ` columns and rows to expand to fit their contents (only the
last spanned track - column or row - can expand). If youâd like colspans to
not affect column sizes at all (and thus âfitâ within their spanned
columns), you may specify ` fit-spans: (x: true) ` to the table. Similarly,
you can specify ` fit-spans: (y: true) ` to have rowspans not affect row sizes
at all. To apply both effects, use either ` fit-spans: true ` or ` fit-spans:
(x: true, y: true) ` . You can also apply this to a single colspan (for
example) with ` colspanx(2, fit-spans: (x: true))[a] ` , as this option is
available not only for the whole table but also for each cell. See the
reference section for more information.

###  Repeat header rows

You can now ensure the first row (or, rather, the rows covered by the first
rowspan) in your table repeats across pages. Just use ` repeat-header: true `
(default is ` false ` ).

Note that you may wish to customize this. Use ` repeat-header: 6 ` to repeat
for 6 more pages. Use ` repeat-header: (2, 4) ` to repeat only on the 2nd and
the 4th page (where the 1st page is the one the table starts in).
Additionally, use ` header-rows: 5 ` to ensure the first (e.g.) 5 rows are
part of the header (by default, this is 1 - more rows will be repeated where
necessary if rowspans are used).

Also, note that, by default, the horizontal lines below the header are
transported to other pages, which may be an annoyance if you customize lines
too much (see below). Use ` header-hlines-have-priority: false ` to ensure
that the first row in each page will dictate the appearance of the horizontal
lines above it (and not the header).

**Note:** Depending on the size of your document, repeatable headers might not
behave properly due to certain limitations in Typstâs introspection system
(as observed in [ https://github.com/PgBiel/typst-tablex/issues/43
](https://github.com/PgBiel/typst-tablex/issues/43) ).

Example:

    
    
    #import "@preview/tablex:0.0.9": tablex, hlinex, vlinex, colspanx, rowspanx
    
    #pagebreak()
    #v(80%)
    
    #tablex(
      columns: 4,
      align: center + horizon,
      auto-vlines: false,
      repeat-header: true,
    
      /* --- header --- */
      rowspanx(2)[*Names*], colspanx(2)[*Properties*], (), rowspanx(2)[*Creators*],
      (),                 [*Type*], [*Size*], (),
      /* -------------- */
    
      [Machine], [Steel], [5 $"cm"^3$], [John p& Kate],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Rodbert],
    )
    

![image](https://user-
images.githubusercontent.com/9021226/230810751-776a73c4-9c24-46ba-92cd-76292469ab7d.png)

###  Customize every single line

Every single line in the table is either a ` hlinex ` (horizontal) or ` vlinex
` (vertical) instance. By default, there is one between every column and
between every row - unless you specify a custom line for some column or row,
in which case the automatic line for it will be removed (to allow you to
freely customize it). To disable this behavior, use ` auto-lines: false ` ,
which will remove _all_ automatic lines. You may also remove only automatic
horizontal lines with ` auto-hlines: false ` , and only vertical with ` auto-
vlines: false ` .

**Note:** ` gridx ` is an alias for ` tablex ` with ` auto-lines: false ` .

For your custom lines, write ` hlinex() ` at any position and it will add a
horizontal line below the current cell row (or at the top, if before any
cell). You can use ` hlinex(start: a, end: b) ` to control the cells which
that line spans ( ` a ` is the first column number and ` b ` is the last
column number). You can also specify its stroke (color/thickness) with `
hlinex(stroke: red + 5pt) ` for example. To position it at an arbitrary row,
use ` hlinex(y: 6) ` or similar. (Columns and rows are indexed starting from
0.)

Something similar occurs for ` vlinex() ` , which has ` start ` , ` end `
(first row and last row it spans), and also ` stroke ` . They will, by
default, be placed to the right of the current cell, and will span the entire
table (top to bottom). To override the default placement, use ` vlinex(x: 2) `
or similar.

**Note:** Only one hline or vline with the same span (same start/end) can be
placed at once.

**Note:** You can also place vlines before the first cell, in which case _they
will be placed consecutively, each after the last` vlinex() ` _ . That is, if
you place several of them in a row ( _before the first cell_ only), then it
will not place all of them at one location (which is normally what happens if
you try to place multiple vlines at once), but rather one after the other.
With this behavior, you can also specify ` () ` between each vline to _skip_
certain positions (again, only before the first cell - afterwards, all ` () `
are ignored). Note that you can also just ignore this entirely and use `
vlinex(x: 0) ` , ` vlinex(x: 1) ` , â¦, ` vlinex(x: columns.len()) ` for full
control.

Hereâs some sample usage:

    
    
    #import "@preview/tablex:0.0.9": tablex, gridx, hlinex, vlinex, colspanx, rowspanx
    
    #tablex(
      columns: 4,
      auto-lines: false,
    
      // skip a column here         vv
      vlinex(), vlinex(), vlinex(), (), vlinex(),
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[d], [e], [K],
      [f], (),             [g], [L],
      //   ^^ '()' after the first cell are 100% ignored
    )
    
    #tablex(
      columns: 4,
      auto-vlines: false,
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[d], [e], [K],
      [f], (),             [g], [L],
    )
    
    #gridx(
      columns: 4,
      (), (), vlinex(end: 2),
      hlinex(stroke: yellow + 2pt),
      colspanx(2)[a], (),  [b], [J],
      hlinex(start: 0, end: 1, stroke: yellow + 2pt),
      hlinex(start: 1, end: 2, stroke: green + 2pt),
      hlinex(start: 2, end: 3, stroke: red + 2pt),
      hlinex(start: 3, end: 4, stroke: blue.lighten(50%) + 2pt),
      [c], rowspanx(2)[d], [e], [K],
      hlinex(start: 2),
      [f], (),             [g], [L],
    )
    

![image](https://user-
images.githubusercontent.com/9021226/230817335-8a908d44-77be-45d2-b98f-89e9ccf07dc7.png)

####  Bulk line customization

You can also _bulk-customize lines_ by specifying ` map-hlines: h => new_hline
` and ` map-vlines: v => new_vline ` . This includes any automatically
generated lines. For example:

    
    
    #import "@preview/tablex:0.0.9": tablex, colspanx, rowspanx
    
    #tablex(
      columns: 3,
      map-hlines: h => (..h, stroke: blue),
      map-vlines: v => (..v, stroke: green + 2pt),
      colspanx(2)[a], (),  [b],
      [c], rowspanx(2)[d], [ed],
      [f], (),             [g]
    )
    

![image](https://user-
images.githubusercontent.com/9021226/235371652-48e7e526-1eb0-43c3-a6f4-3ed81840cffc.png)

###  Customize every single cell

Cells can be customized entirely. Instead of specifying content (e.g. ` [text]
` ) as a table item, you can specify ` cellx(property: a, property: b,
...)[text] ` , which allows you to customize properties, such as:

  * ` colspan: 2 ` (same as using ` colspanx(2, ...)[...] ` ) 
  * ` rowspan: 3 ` (same as using ` rowspanx(3, ...)[...] ` ) 
  * ` align: center ` (override whole-table alignment for this cell) 
  * ` fill: blue ` (fill just this cell with that color) 
  * ` inset: 0pt ` (override inset/internal padding for this cell - note that this can look off unless you use auto columns and rows) 
  * ` x: 5 ` (arbitrarily place the cell at the given column, beginning at 0 - may error if conflicts occur) 
  * ` y: 6 ` (arbitrarily place the cell at the given row, beginning at 0 - may error if conflicts occur) 

Additionally, instead of specifying content to the cell, you can specify a
function ` (column, row) => content ` , allowing each cell to be aware of
where itâs positioned. (Note that positions are recorded in the cellâs `
.x ` and ` .y ` attributes, and start as ` auto ` unless you specify
otherwise.)

For example:

    
    
    #import "@preview/tablex:0.0.9": tablex, cellx, colspanx, rowspanx
    
    #tablex(
      columns: 3,
      fill: red,
      align: right,
      colspanx(2)[a], (),  [beeee],
      [c], rowspanx(2)[d], cellx(fill: blue, align: left)[e],
      [f], (),             [g],
    
      // place this cell at the first column, seventh row
      cellx(colspan: 3, align: center, x: 0, y: 6)[hi I'm down here]
    )
    

![image](https://user-images.githubusercontent.com/9021226/230818283-b3b636db-
dbd0-47b8-bdd5-f61a07d58749.png)

####  Bulk customization of cells

To customize multiple cells at once, you have a few options:

  1. ` map-cells: cell => cell ` (given a cell, returns a new cell). You can use this to customize the cellâs attributes, but also to change its positions (however, avoid doing that as it can easily generate conflicts). You can access the cellâs position with ` cell.x ` and ` cell.y ` . All other attributes are also accessible and changeable (see the ` Reference ` further below for a list). Return something like ` (..cell, fill: blue) ` , for example, to ensure the other properties (including the cell type marker) are kept. (Calling ` cellx ` here is not necessary. If overriding the cellâs content, use ` content: [whatever] ` ). This is useful if you want to, for example, customize a cellâs fill color based on its contents, or add some content to every cell, or something similar. 

  2. ` map-rows: (row_index, cells) => cells ` (given a row index and all cells in it, return a new array of cells). Allows customizing entire rows, but note that the cells in the ` cells ` parameter can be ` none ` if theyâre some position occupied by a colspan or rowspan of another cell. Ensure you return the cells in the order you were given, including the ` none ` s, for best results. Also, you cannot move cells here to another row. You can change the cellsâ columns (by changing their ` x ` property), but that will certainly generate conflicts if any col/rowspans are involved (in general, you cannot bulk-change col/rowspans without ` map-cells ` ). 

  3. ` map-cols: (col_index, cells) => cells ` (given a column index and all cells in it, return a new array of cells). Similar to ` map-rows ` , but for customizing columns. You cannot change the column of any cell here. (To do that, ` map-cells ` is required.) You can, however, change its row (with ` y ` , but do that sparingly), and, of course, all other properties. 

**Note:** Execution order is ` map-cells ` => ` map-rows ` => ` map-cols ` .

Example:

    
    
    #import "@preview/tablex:0.0.9": tablex, colspanx, rowspanx
    
    #tablex(
      columns: 4,
      auto-vlines: true,
    
      // make all cells italicized
      map-cells: cell => {
        (..cell, content: emph(cell.content))
      },
    
      // add some arbitrary content to entire rows
      map-rows: (row, cells) => cells.map(c =>
        if c == none {
          c  // keeping 'none' is important
        } else {
          (..c, content: [#c.content\ *R#row*])
        }
      ),
    
      // color cells based on their columns
      // (using 'fill: (column, row) => color' also works
      // for this particular purpose)
      map-cols: (col, cells) => cells.map(c =>
        if c == none {
          c
        } else {
          (..c, fill: if col < 2 { blue } else { yellow })
        }
      ),
    
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[dd], [e], [K],
      [f], (),             [g], [L],
    )
    

![image](https://user-
images.githubusercontent.com/9021226/230818347-30b49154-f444-4744-9415-dd4030b29393.png)

Another example (summing columns):

    
    
    #gridx(
      columns: 3,
      rows: 6,
      fill: (col, row) => (blue, red, green).at(calc.rem(row + col - 1, 3)),
      map-cols: (col, cells) => {
        let last = cells.last()
        last.content = [
          #cells.slice(0, cells.len() - 1).fold(0, (acc, c) => if c != none { acc + eval(c.content.text) } else { acc })
        ]
        last.fill = aqua
        cells.last() = last
        cells
      },
      [0], [5], [10],
      [1], [6], [11],
      [2], [7], [12],
      [3], [8], [13],
      [4], [9], [14],
      [s], [s], [s]
    )
    

![image](https://user-
images.githubusercontent.com/9021226/231343813-bf06872b-59ac-4221-b6ed-940d73e6a9c4.png)

##  Known Issues

  * Filled cells will partially overlap with horizontal lines above them (see [ https://github.com/PgBiel/typst-tablex/issues/4 ](https://github.com/PgBiel/typst-tablex/issues/4) ). 

    * To be fixed in a future rework of the table drawing process. 
  * Table lines donât play very well with column and row gutter when a colspan or rowspan is used. They may be missing or be cut off by gutters. 

  * Repeatable table headers might not behave properly depending on the size of your document or other factors ( [ https://github.com/PgBiel/typst-tablex/issues/43 ](https://github.com/PgBiel/typst-tablex/issues/43) ). 

  * Using tablex (especially when using repeatable header rows) may cause a warning, âlayout did not converge within 5 attemptsâ, to appear on recent Typst versions ( [ https://github.com/PgBiel/typst-tablex/issues/38 ](https://github.com/PgBiel/typst-tablex/issues/38) ). This warning is due to how tablex works internally **and is not your fault** (in principle), so donât worry too much about it (unless youâre sure itâs not tablex that is causing this). 

  * Rows with fractional height (such as ` 2fr ` ) have zero height if the table spans more than one page. This is because fractional row heights are calculated on the available height of the first page of the table, which is something that the default ` #table ` can circumvent using internal code. This wonât be fixed for now. (Columns with fractional width work fine, provided all pages the table is in have the same width, **and the page width isnât` auto ` ** (which forces fractional columns to be 0pt, even in the default ` #table ` ).) 

  * Rotation (via Typstâs ` #rotate ` ) of text only affects the visual appearance of the text on the page, but does not change its dimensions as they factor into the layout. This leads to certain visual issues, such as rotated text potentially overflowing the cell height without being hyphenated or, inversely, being hyphenated even though there is enough space vertically ( [ https://github.com/PgBiel/typst-tablex/issues/59 ](https://github.com/PgBiel/typst-tablex/issues/59) ). This is a [ known issue ](https://github.com/typst/typst/issues/528) with Typst (perhaps, in the future, ` #rotate ` [ may ](https://github.com/typst/typst/issues/528#issuecomment-1494123195) get a setting to affect layout). As a workaround for the text hyphenation problem, the content can be boxed (and thus grouped together) with ` #box ` (e.g., ` rowspanx(7, box(rotate(-90deg, [*donothyphenatethis*]))) ` ), or hyphenation can be prevented by setting ` #text(hyphenate: false, ...) ` (e.g., ` colspanx(2, text(hyphenate: false, rotate(-90deg, [*donothyphenatethis*]))) ` ), as also discussed in [ https://github.com/PgBiel/typst-tablex/issues/59 ](https://github.com/PgBiel/typst-tablex/issues/59) ; another alternative is to use ` #place ` , e.g. aligning to ` center + horizon ` : ` cellx(place(center + horizon, rotate(-90deg, [*donothyphenatethis*]))) ` , which probably allows the most control over the in-cell layout, since it simply draws the rotated content without having it occupy any space (letting you define that by yourself, e.g. using ` box(width: 1em, height: 2em, place(...)) ` ). 

    * Alternatively, you may attempt to use the solution proposed at [ https://github.com/typst/typst/issues/528#issuecomment-1494318510 ](https://github.com/typst/typst/issues/528#issuecomment-1494318510) to define a ` rotatex ` function which produces a rotated element with the appropriate sizes, such that tablex may recognize its size accordingly and avoid visual glitches. 
  * ` tablex ` can potentially be slower and/or take longer to compile than the default ` table ` (especially when the table spans a lot of pages). **Please use the latest Typst version to reduce this problem** (each version has been bringing further improvements in this sense). Still, we are looking for ways to better optimize the library (see more discussion at [ https://github.com/PgBiel/typst-tablex/issues/5 ](https://github.com/PgBiel/typst-tablex/issues/5) \- feel free to give some input!). However, re-compilation is usually fine thanks to Typstâs built-in memoization. 

  * The internals of the library still arenât very well documented; I plan on adding more info about this eventually. 

  * **Please open a GitHub issue for anything weird you come across** (make sure others havenât reported it first). 

##  Reference

###  Basic types and functions

  1. ` cellx ` : Represents a table cell, and is initialized as follows: 
    
        #let cellx(content,
      x: auto, y: auto,
      rowspan: 1, colspan: 1,
      fill: auto, align: auto,
      inset: auto,
      fit-spans: auto
    ) = (
      tablex-dict-type: "cell",
      content: content,
      rowspan: rowspan,
      colspan: colspan,
      align: align,
      fill: fill,
      inset: inset,
      fit-spans: fit-spans,
      x: x,
      y: y,
    )
    

where:

     * ` tablex-dict-type ` is the type marker 
     * ` content ` is the cellâs content (either ` content ` or a function with ` (col, row) => content ` ) 
     * ` rowspan ` is how many rows this cell spans (default 1) 
     * ` colspan ` is how many columns this cell spans (default 1) 
     * ` align ` is this cellâs align override, such as âcenterâ (default ` auto ` to follow the rest of the table) 
     * ` fill ` is this cellâs fill override, such as âblueâ (default ` auto ` to follow the rest of the table) 
     * ` inset ` is this cellâs inset override, such as ` 5pt ` (default ` auto ` to follow the rest of the table) 
     * ` fit-spans ` allows overriding the table-wide ` fit-spans ` setting for this specific cell (e.g. if this cell has a ` colspan ` greater than 1, ` fit-spans: (x: true) ` will cause it to not affect the sizes of ` auto ` columns). 
     * ` x ` is the cellâs column index (0â¦len-1) - ` auto ` indicates it wasnât assigned yet 
     * ` y ` is the cellâs row index (0â¦len-1) - ` auto ` indicates it wasnât assigned yet 
  2. ` hlinex ` : represents a horizontal line: 
    
        #let hlinex(
      start: 0, end: auto, y: auto,
      stroke: auto,
      stop-pre-gutter: auto, gutter-restrict: none,
      stroke-expand: true,
      expand: none
    ) = (
      tablex-dict-type: "hline",
      start: start,
      end: end,
      y: y,
      stroke: stroke,
      stop-pre-gutter: stop-pre-gutter,
      gutter-restrict: gutter-restrict,
      stroke-expand: stroke-expand,
      expand: expand,
      parent: none,
    )
    

where:

     * ` tablex-dict-type ` is the type marker 
     * ` start ` is the column index where the hline starts from (default ` 0 ` , a.k.a. the beginning) 
     * ` end ` is the last column the hline touches (default ` auto ` , a.k.a. all the way to the end) 
       * Note that hlines will _not_ be drawn over cells with ` colspan ` larger than 1, even if their spans ( ` start ` \- ` end ` ) include that cell. 
     * ` y ` is the index of the row at the top of which the hline is drawn. (Defaults to ` auto ` , a.k.a. depends on where you placed the ` hline ` among the table items - itâs always on the top of the row below the current one.) 
     * ` stroke ` is the hlineâs stroke override (defaults to ` auto ` , a.k.a. follow the rest of the table). 
     * ` stop-pre-gutter ` : When ` true ` , the hline will not be drawn over gutter (which is the default behavior of tables). Defaults to ` auto ` which is essentially ` false ` (draw over gutter). 
     * ` gutter-restrict ` : Either ` top ` , ` bottom ` , or ` none ` . Has no effect if ` row-gutter ` is set to ` none ` . Otherwise, defines if this ` hline ` should be drawn only on the top of the row gutter ( ` top ` ); on the bottom ( ` bottom ` ); or on both the top and the bottom ( ` none ` , the default). Note that ` top ` and ` bottom ` are alignment values (not strings). 
     * ` stroke-expand ` : When ` true ` , the hline will be extended as necessary to cover the stroke of the vlines going through either end of the line. Defaults to ` true ` . 
     * ` expand ` : Optionally extend the hline by an arbitrary length. When ` none ` , it is not expanded. When a length (such as ` 5pt ` ), it is expanded by that length on both ends. When an array of two lengths (such as ` (5pt, 10pt) ` ), it is expanded to the left by the first length (in this case, ` 5pt ` ) and to the right by the second (in this case, ` 10pt ` ). Defaults to ` none ` . 
     * ` parent ` : An internal attribute determined when splitting lines among cells. (It should always be ` none ` on user-facing interfaces.) 
  3. ` vlinex ` : represents a vertical line: 
    
        #let vlinex(
      start: 0, end: auto, x: auto,
      stroke: auto,
      stop-pre-gutter: auto, gutter-restrict: none,
      stroke-expand: true,
      expand: none
    ) = (
      tablex-dict-type: "vline",
      start: start,
      end: end,
      x: x,
      stroke: stroke,
      stop-pre-gutter: stop-pre-gutter,
      gutter-restrict: gutter-restrict,
      stroke-expand: stroke-expand,
      expand: expand,
      parent: none,
    )
    

where:

     * ` tablex-dict-type ` is the type marker 
     * ` start ` is the row index where the vline starts from (default ` 0 ` , a.k.a. the top) 
     * ` end ` is the last row the vline touches (default ` auto ` , a.k.a. all the way to the bottom) 
       * Note that vlines will _not_ be drawn over cells with ` rowspan ` larger than 1, even if their spans ( ` start ` \- ` end ` ) include that cell. 
     * ` x ` is the index of the column to the left of which the vline is drawn. (Defaults to ` auto ` , a.k.a. depends on where you placed the ` vline ` among the table items.) 
       * For a ` vline ` to be placed after all columns, its ` x ` value will be equal to the amount of columns (which isnât a valid column index, but itâs what is used here). 
     * ` stroke ` is the vlineâs stroke override (defaults to ` auto ` , a.k.a. follow the rest of the table). 
     * ` stop-pre-gutter ` : When ` true ` , the vline will not be drawn over gutter (which is the default behavior of tables). Defaults to ` auto ` which is essentially ` false ` (draw over gutter). 
     * ` gutter-restrict ` : Either ` left ` , ` right ` , or ` none ` . Has no effect if ` column-gutter ` is set to ` none ` . Otherwise, defines if this ` vline ` should be drawn only to the left of the column gutter ( ` left ` ); to the right ( ` right ` ); or on both the left and the right ( ` none ` , the default). Note that ` left ` and ` right ` are alignment values (not strings). 
     * ` stroke-expand ` : When ` true ` , the vline will be extended as necessary to cover the stroke of the hlines going through either end of the line. Defaults to ` true ` . 
     * ` expand ` : Optionally extend the vline by an arbitrary length. When ` none ` , it is not expanded. When a length (such as ` 5pt ` ), it is expanded by that length on both ends. When an array of two lengths (such as ` (5pt, 10pt) ` ), it is expanded towards the top by the first length (in this case, ` 5pt ` ) and towards the bottom by the second (in this case, ` 10pt ` ). Defaults to ` none ` . 
     * ` parent ` : An internal attribute determined when splitting lines among cells. (It should always be ` none ` on user-facing interfaces.) 
  4. The ` occupied ` type is an internal type used to represent cell positions occupied by cells with ` colspan ` or ` rowspan ` greater than 1. 

  5. Use ` is-tablex-cell ` , ` is-tablex-hline ` , ` is-tablex-vline ` and ` is-tablex-occupied ` to check if a particular object has the corresponding type marker. 

  6. ` colspanx ` and ` rowspanx ` are shorthands for setting the ` colspan ` and ` rowspan ` attributes of ` cellx ` . They can also be nested (one given as an argument to the other) to combine their properties (e.g., ` colspanx(2)(rowspanx(3)[a]) ` ). They accept all other cell properties with named arguments. For example, ` colspanx(2, align: center)[b] ` is equivalent to ` cellx(colspan: 2, align: center)[b] ` . 

###  Gridx and Tablex

  1. ` gridx ` is equivalent to ` tablex ` with ` auto-lines: false ` ; see below. 

  2. ` tablex: ` The main function for creating a table with this library: 
    
        #let tablex(
      columns: auto, rows: auto,
      inset: 5pt,
      align: auto,
      fill: none,
      stroke: auto,
      column-gutter: auto, row-gutter: auto,
      gutter: none,
      repeat-header: false,
      header-rows: 1,
      header-hlines-have-priority: true,
      auto-lines: true,
      auto-hlines: auto,
      auto-vlines: auto,
      map-cells: none,
      map-hlines: none,
      map-vlines: none,
      map-rows: none,
      map-cols: none,
      ..items
    ) = {
    // ...
    }
    

**Parameters:**

     * ` columns ` : The sizes (widths) of each column. They work just like regular ` table ` âs columns, and can be: 

       * an array of lengths ( ` 1pt ` , ` 2em ` , ` 100% ` , â¦), including fractional ( ` 2fr ` ), to specify the width of each column 
         * For instance, ` columns: (2pt, 3em) ` will give you two columns: one with a width of ` 2pt ` and another with the width of ` 3em ` (3 times the font size). 
           * Note that percentages, such as ` 49% ` , **are considered fixed widths** as they are **always multiplied by the full page width** (minus margins) for columns. Thus, a column with a size of ` 100% ` would span your whole page (even if there are other columns). 
         * ` auto ` may be specified to automatically resize the column based on the largest width of its contents, if possible - **this is the most common column width choice,** as it just delegates the column sizing job to tablex! 
           * For example, if your ` auto ` -sized column contains two cells with ` Hello world! ` and ` Bye! ` as contents, tablex will try to make the column large enough for ` Hello world! ` (the cell with largest _potential_ width) to fit in a single line. 
           * However, note that often enough thatâs not possible, as increasing the columnâs size too much would result in the table going over the pageâs margin - perhaps even beyond the documentâs total width. Therefore, **tablex will automatically reduce the size of your` auto ` columns ** when they would otherwise cause the table to overrun the pageâs normal width (i.e. the width between the pageâs lateral margins). 
             * Fixed width columns (such as ` 2pt ` , ` 3em ` or ` 49% ` ) are not subject to this size reduction; thus, if you specify all columnsâ widths with fixed lengths, your table _could_ become larger than the pageâs width! (In such a case, **` auto ` columns would be reduced to a size of zero, ** as there would be no available space anymore!) 
         * when specifying fractional widths ( ` 1fr ` , ` 2fr ` â¦) for columns, the available space (remaining page width, after calculating all other columnsâ sizes) is divided between them, weighted on the fraction value of each column. 
           * For example, with ` (1fr, 2fr) ` , the available space will be divided by 3 (1 + 2), and the first column will have 1/3 of the space, while the second will have 2/3. 
             * ` (1fr, 1fr) ` would cause both columns to have equal length (1/2 and 1/2 of the available space). 
           * This is useful when you want some columns to just occupy all the remaining horizontal space in the page. 
             * **Note:** If only one column has a fractional width (e.g. a single column with ` 1fr ` ), it will occupy the entire available space. 
           * **Warning:** fractional columns in tablex (much like in Typstâs default tables) **will not work properly in pages with` auto ` width ** (the columns will have width zero) - this is because those pages theoretically have infinite width (they can expand indefinitely), so having columns spanning the entire available width is then impossible! 
       * a single length like above, to indicate the width of a single column (equivalent to just placing it inside a unit array) 
         * For instance, ` columns: 2pt ` is equivalent to ` columns: (2pt,) ` , which translates to a single column of width ` 2pt ` . 
       * an integer (such as ` 4 ` ), as a shorthand for ` (auto,) * 4 ` (that many ` auto ` columns) 
         * Useful if you just want to quickly set the amount of columns without worrying about their sizes ( ` columns: 4 ` will give you four ` auto ` columns). 
     * ` rows ` : The sizes (heights) of each row. They follow the exact same format as ` columns ` , except that the âavailable spaceâ is infinite (auto rows can expand as much as is needed, as the table can add rows over multiple pages). 

       * **Note:** For rows, percentages (such as ` 49% ` ) are fixed width lengths, like in ` columns ` ; however, here, they are **multiplied by the pageâs full height** (minus margins), and not width. 
       * **Note:** If more rows than specified are added, the height for the **last row** will be the one assigned to all extra rows. (If the last row is ` auto ` , the extra ones will also be ` auto ` , for example.) 
         * Your table can have more rows than expected by simply having more cells than ` (# columns) ` multiplied by ` (# rows) ` . In this case, you will have an extra row for each ` (# columns) ` cells after the limit. In other words, **the amount of columns is always fixed** (determined by the amount of widths in the array given to ` columns ` ), but the amount of rows can vary depending on your input of cells to the table. 
         * Adding a cell at an arbitrary ` y ` coordinate can also cause your table to have extra rows (enough rows to reach the cell at that coordinate). 
       * **Warning:** support for fractional sizes for rows is still rudimentary - they only work properly on the tableâs first page; on the second page and onwards, they will not behave properly, differently from the default ` #table ` . 
     * ` inset ` : Inset/internal padding to give to each cell. Can be either a length (same inset from the top, bottom, left and right of the cell), or a dictionary (e.g. ` (left: 5pt, right: 10pt, bottom: 2pt, top: 4pt) ` , or even ` (left: 5pt, rest: 10pt) ` to apply the same value to the remaining sides). Defaults to ` 5pt ` (the ` #table ` default). 

     * ` align ` : How to align text in the cells. Defaults to ` auto ` , which inherits alignment from the outer context. Must be either ` auto ` , an ` alignment ` (such as ` left ` or ` top ` ), a ` 2d alignment ` (such as ` left + top ` ), an ` array ` of alignment/2d alignment (one for each column in the table - if there are more columns than alignment values, they will alternate); or a function ` (column, row) => alignment/2d alignment ` (to customize for each individual cell). 

     * ` fill ` : Color with which to fill cellsâ backgrounds. Defaults to ` none ` , or no fill. Must be either a ` color ` , such as ` blue ` ; an ` array ` of colors (one for each column in the table - if there are more columns than colors, they will alternate); or a function ` (column, row) => color ` (to customize for each individual cell). 

     * ` stroke ` : Indicates how to draw the table lines. Defaults to the current line styles in the document. For example: ` 5pt + red ` to change the color and the thickness. 

     * ` column-gutter ` : optional separation (length) between columns (such as ` 5pt ` ). Defaults to ` none ` (disable). At the moment, looks a bit ugly if your table has a ` hline ` attempting to cross a ` colspan ` . 

     * ` row-gutter ` : optional separation (length) between rows. Defaults to ` none ` (disable). At the moment, looks a bit ugly if your table has a ` vline ` attempting to cross a ` rowspan ` . 

     * ` gutter ` : Sets a length to both ` column- ` and ` row-gutter ` at the same time (overridable by each). 

     * ` repeat-header ` : Controls header repetition. If set to ` true ` , the first row (or the amount of rows specified in ` header-rows ` ), including its rowspans, is repeated across all pages this table spans. If set to ` false ` (default), the aforementioned header row is not repeated in any page. If set to an integer (such as ` 4 ` ), repeats for that many pages after the first, then stops. If set to an array of integers (such as ` (3, 4) ` ), repeats only on those pages _relative to the tableâs first page_ (page 1 here is where the table is, so adding ` 1 ` to said array has no effect). 

     * ` header-rows ` : minimum amount of rows for the repeatable header. 1 by default. Automatically increases if one of the cells is a rowspan that would go beyond the given amount of rows. For example, if 3 is given, then at least the first 3 rows will repeat. 

     * ` header-hlines-have-priority ` : if ` true ` , the horizontal lines below the header being repeated take priority over the rows they appear atop of on further pages. If ` false ` , they draw their own horizontal lines. Defaults to ` true ` . 

       * For example, if your header has a blue hline under it, that blue hline will display on all pages it is repeated on if this option is ` true ` . If this option is ` false ` , the header will repeat, but the blue hline will not. 
     * ` rtl ` : if true, the table is horizontally flipped. That is, cells and lines are placed in the opposite order (starting from the right), and horizontal lines are flipped. This is meant to simulate the behavior of default Typst tables when ` set text(dir: rtl) ` is used, and is useful when writing in a language with a RTL (right-to-left) script. Defaults to ` false ` . 

     * ` auto-lines ` : Shorthand to apply a boolean to both ` auto-hlines ` and ` auto-vlines ` at the same time (overridable by each). Defaults to ` true ` . 

     * ` auto-hlines ` : If ` true ` , draw a horizontal line on every line where you did not manually draw one; if ` false ` , no hlines other than the ones you specify (via ` hlinex ` ) are drawn. Defaults to ` auto ` (follows ` auto-lines ` , which in turn defaults to ` true ` ). 

     * ` auto-vlines ` : If ` true ` , draw a vertical line on every line where you did not manually draw one; if ` false ` , no vlines other than the ones you specify (via ` vlinex ` ) are drawn. Defaults to ` auto ` (follows ` auto-lines ` , which in turn defaults to ` true ` ). 

     * ` map-cells ` : A function which takes a single ` cellx ` and returns another ` cellx ` , or a ` content ` which is converted to ` cellx ` by ` cellx[#content] ` . You can customize the cell in pretty much any way using this function; just take care to avoid conflicting with already-placed cells if you move it. 

     * ` map-hlines ` : A function which takes each horizontal line object ( ` hlinex ` ) and returns another, optionally modifying its properties. You may also change its row position ( ` y ` ). Note that this is also applied to lines generated by ` auto-hlines ` . 

     * ` map-vlines ` : A function which takes each horizontal line object ( ` vlinex ` ) and returns another, optionally modifying its properties. You may also change its column position ( ` x ` ). Note that this is also applied to lines generated by ` auto-vlines ` . 

     * ` map-rows ` : A function mapping each row of cells to new values or modified properties. Takes ` (row_num, cell_array) ` and returns the modified ` cell_array ` . Note that, with your function, they cannot be sent to another row. Also, please preserve the order of the cells. This is especially important given that cells may be ` none ` if theyâre actually a position taken by another cell with colspan/rowspan. Make sure the ` none ` values are in the same indexes when the array is returned. 

     * ` map-cols ` : A function mapping each column of cells to new values or modified properties. Takes ` (col_num, cell_array) ` and returns the modified ` cell_array ` . Note that, with your function, they cannot be sent to another column. Also, please preserve the order of the cells. This is especially important given that cells may be ` none ` if theyâre actually a position taken by another cell with colspan/rowspan. Make sure the ` none ` values are in the same indexes when the array is returned. 

     * ` fit-spans ` : either a dictionary ` (x: bool, y: bool) ` or just ` bool ` (e.g. just ` true ` is converted to ` (x: true, y: true) ` ). When given ` (x: true) ` , colspans wonât affect the sizes of ` auto ` columns. When given ` (y: true) ` , rowspans wonât affect the sizes of ` auto ` rows. By default, this is equal to ` (x: false, y: false) ` (equivalent to just ` false ` ), which means that colspans will cause the last spanned ` auto ` column to expand (depending on the contents of the cell) and rowspans will cause the last spanned ` auto ` row to expand similarly. 

       * This is usually used as ` (x: true) ` to prevent unexpected expansion of ` auto ` columns after using a colspan, which can happen when a colspan spans both a fractional-size column (e.g. ` 1fr ` ) and an ` auto ` -sized column. Can be applied to rows too through ` (y: true) ` or ` (x: true, y: true) ` , if needed, however. 
       * The point of this option is to have colspans and rowspans not affect the size of the table at all, and just âfitâ within the columns and rows they span. Therefore, this option does not have any effect upon colspans and rowspans which donât span columns or rows with automatic size. 

##  Changelog

###  v0.0.9

**NOTE:** Please use Typstâs built-in tables instead of tablex (starting
with Typst 0.11.0). Most of tablexâs features were implemented in Typstâs
tables by the author of tablex.

  * Added compatibility with Typst v0.12.0 ( [ https://github.com/PgBiel/typst-tablex/issues/135 ](https://github.com/PgBiel/typst-tablex/issues/135) ) 
  * Added library usage notice to README 
  * Tablex is now dual-licensed under MIT/Apache-2.0 ( [ https://github.com/PgBiel/typst-tablex/issues/134 ](https://github.com/PgBiel/typst-tablex/issues/134) ) 

###  v0.0.8

  * Added ` fit-spans ` option to ` tablex ` and ` cellx ` ( [ https://github.com/PgBiel/typst-tablex/pull/111 ](https://github.com/PgBiel/typst-tablex/pull/111) ) 
    * Accepts ` (x: bool, y: bool) ` . When set to ` (x: true) ` , colspans wonât affect the sizes of ` auto ` columns. When set to ` (y: true) ` , rowspans wonât affect the sizes of ` auto ` rows. 
    * Defaults to ` false ` , equivalent to ` (x: false, y: false) ` , that is, colspans and rowspans affect the sizes of ` auto ` tracks (columns and rows) by default (expanding the last spanned track if the colspan/rowspan is too large). 
    * Useful when you want merged cells (or a specific merged cell) to âfitâ within their spanned columns and rows. May help when adding a colspan or rowspan causes an ` auto ` -sized track to inadvertently expand. 
  * ` auto ` column sizing received multiple improvements and bug fixes. Tables should now have more natural column widths. ( [ https://github.com/PgBiel/typst-tablex/pull/109 ](https://github.com/PgBiel/typst-tablex/pull/109) , [ https://github.com/PgBiel/typst-tablex/pull/116 ](https://github.com/PgBiel/typst-tablex/pull/116) ) 
    * Fixes some problems with overflowing cells ( [ https://github.com/PgBiel/typst-tablex/issues/48 ](https://github.com/PgBiel/typst-tablex/issues/48) , [ https://github.com/PgBiel/typst-tablex/issues/75 ](https://github.com/PgBiel/typst-tablex/issues/75) ) 
    * Fixes ` auto ` columns being needlessly expanded in some cases ( [ https://github.com/PgBiel/typst-tablex/issues/56 ](https://github.com/PgBiel/typst-tablex/issues/56) , [ https://github.com/PgBiel/typst-tablex/issues/78 ](https://github.com/PgBiel/typst-tablex/issues/78) ) 
      * For similar problems not fixed by this, please use the new ` fit-spans ` option as needed, or use fixed-size columns instead. 
  * Several performance optimizations and other internal code improvements were made ( [ https://github.com/PgBiel/typst-tablex/pull/113 ](https://github.com/PgBiel/typst-tablex/pull/113) , [ https://github.com/PgBiel/typst-tablex/pull/114 ](https://github.com/PgBiel/typst-tablex/pull/114) , [ https://github.com/PgBiel/typst-tablex/pull/115 ](https://github.com/PgBiel/typst-tablex/pull/115) ). 
    * Documents with lots of ` tablex ` tables might now become **up to 20% faster** to cold compile. Give it a shot! 
  * Fixed extra fixed-height rows appearing to have ` auto ` height ( [ https://github.com/PgBiel/typst-tablex/pull/108 ](https://github.com/PgBiel/typst-tablex/pull/108) ). 
  * Fixed rows without any visible cells being drawn with zero height ( [ https://github.com/PgBiel/typst-tablex/pull/107 ](https://github.com/PgBiel/typst-tablex/pull/107) ). 
    * Fixes some rowspans causing cells to overlap ( [ https://github.com/PgBiel/typst-tablex/issues/82 ](https://github.com/PgBiel/typst-tablex/issues/82) , [ https://github.com/PgBiel/typst-tablex/issues/105 ](https://github.com/PgBiel/typst-tablex/issues/105) ). 

###  v0.0.7

I have begun [ work on bringing many tablex improvements to built-in Typst
tables ](https://github.com/PgBiel/typst-improv-tables-planning) ! In that
regard, [ you can now sponsor my work on tablex and improving Typst tables via
GitHub Sponsors! Consider taking a look :)
](https://github.com/sponsors/PgBiel)

  * Allow gradients and patterns in fills ( [ https://github.com/PgBiel/typst-tablex/pull/87 ](https://github.com/PgBiel/typst-tablex/pull/87) ) 
  * Fixed a critical bug where ` line ` in tablex cells would misbehave ( [ https://github.com/PgBiel/typst-tablex/issues/80 ](https://github.com/PgBiel/typst-tablex/issues/80) ) 
    * CeTZ and drawing in general should now work properly within tablex cells (see [ https://github.com/johannes-wolf/cetz/issues/345 ](https://github.com/johannes-wolf/cetz/issues/345) ). 
    * Also fixes a problem with nested tables ( [ https://github.com/PgBiel/typst-tablex/issues/34 ](https://github.com/PgBiel/typst-tablex/issues/34) ) 
  * Fixed negative line expansion within a single cell ( [ https://github.com/PgBiel/typst-tablex/pull/84 ](https://github.com/PgBiel/typst-tablex/pull/84) ) 
    * Negative line expansion across multiple cells isnât yet supported. 
    * Thanks GitHub user @dixslyf for the great work on fixing and testing this! 
  * Made internal length calculation procedures more robust ( [ https://github.com/PgBiel/typst-tablex/issues/92 ](https://github.com/PgBiel/typst-tablex/issues/92) , [ https://github.com/PgBiel/typst-tablex/issues/94 ](https://github.com/PgBiel/typst-tablex/issues/94) ) 
    * Fixes a potential incompatibility with (currently unreleased) Typst 0.11.0 
  * Added missing support for boolean types in Typst 0.8.0+ ( [ https://github.com/PgBiel/typst-tablex/issues/73 ](https://github.com/PgBiel/typst-tablex/issues/73) ) 
  * Added some keywords to tablexâs ` typst.toml ` for better discoverability ( [ https://github.com/PgBiel/typst-tablex/issues/91 ](https://github.com/PgBiel/typst-tablex/issues/91) ) 

###  v0.0.6

  * Added support for RTL tables with ` rtl: true ` ( [ https://github.com/PgBiel/typst-tablex/issues/58 ](https://github.com/PgBiel/typst-tablex/issues/58) ). 
    * Default Typst tables are automatically flipped horizontally when using ` set text(dir: rtl) ` , however we canât detect that setting from tablex at this moment (it isnât currently possible to fetch set rules in Typst). 
    * Therefore, as a way around that, you can now specify ` #tablex(rtl: true, ...) ` to flip your table horizontally if youâre writing a document in RTL (right-to-left) script. (You can use e.g. ` #let old-tablex = tablex ` followed by ` #let tablex(..args) = old-tablex(rtl: true, ..args) ` to not have to repeat the ` rtl ` parameter every time.) 
  * Added support for ` box ` âs dictionary inset syntax on tablex ( [ https://github.com/PgBiel/typst-tablex/issues/54 ](https://github.com/PgBiel/typst-tablex/issues/54) ). 
    * For instance, you can now do ` #tablex(inset: (left: 5pt, top: 10pt, rest: 2pt), ...) ` . 
  * Fixed errors when using floating point strokes or other more complex strokes ( [ https://github.com/PgBiel/typst-tablex/issues/55 ](https://github.com/PgBiel/typst-tablex/issues/55) ). 
  * Added full compatibility with the new Typst 0.8.0 type system ( [ https://github.com/PgBiel/typst-tablex/issues/69 ](https://github.com/PgBiel/typst-tablex/issues/69) ). 
  * Added info about ` #rotate ` problems to âKnown Issuesâ in the README ( [ https://github.com/PgBiel/typst-tablex/pull/60 ](https://github.com/PgBiel/typst-tablex/pull/60) ). 
  * Improved docs for tablex options ` columns ` and ` rows ` ( [ https://github.com/PgBiel/typst-tablex/issues/53 ](https://github.com/PgBiel/typst-tablex/issues/53) ). 

###  v0.0.5

  * â ï¸ **Minimum Typst version raised to v0.2.0**
  * Improved calculation of page/container dimensions by using the ` layout() ` function. 
    * Fixes tables with fractional columns not displaying properly in blocks with ` auto ` width ( [ https://github.com/PgBiel/typst-tablex/issues/44 ](https://github.com/PgBiel/typst-tablex/issues/44) ; [ https://github.com/PgBiel/typst-tablex/issues/39 ](https://github.com/PgBiel/typst-tablex/issues/39) ) 
    * Fixes some nested tables overflowing the page width ( [ https://github.com/PgBiel/typst-tablex/issues/41 ](https://github.com/PgBiel/typst-tablex/issues/41) ) 
    * Fixes bad interaction between tables with fractional columns and nested tables ( [ https://github.com/PgBiel/typst-tablex/issues/28 ](https://github.com/PgBiel/typst-tablex/issues/28) ) 
    * Fixes table rotation messing up table size calculation ( [ https://github.com/PgBiel/typst-tablex/issues/52 ](https://github.com/PgBiel/typst-tablex/issues/52) ) 
    * Probably fixes other issues not listed here as well. 
  * Added some guards for infinite lengths and ` auto ` -sized pages ( [ https://github.com/PgBiel/typst-tablex/issues/47 ](https://github.com/PgBiel/typst-tablex/issues/47) ). 
  * Fixed tablex crashes/improper behavior with ` em ` strokes and other types of strokes ( [ https://github.com/PgBiel/typst-tablex/issues/49 ](https://github.com/PgBiel/typst-tablex/issues/49) ). 
  * Added the tablex version number as a comment in the source file (as requested in [ https://github.com/PgBiel/typst-tablex/issues/25 ](https://github.com/PgBiel/typst-tablex/issues/25) ). 

###  v0.0.4

  * Added ` typst.toml ` to support Typst v0.6.0âs soon-to-be-released package manager (see [ https://github.com/PgBiel/typst-tablex/issues/22 ](https://github.com/PgBiel/typst-tablex/issues/22) ). 
  * Fixed a division by zero regression from v0.0.3 ( [ https://github.com/PgBiel/typst-tablex/issues/19 ](https://github.com/PgBiel/typst-tablex/issues/19) ). 
  * Fixed a bug where cells placed in arbitrary positions could force an extra empty row to appear ( [ https://github.com/PgBiel/typst-tablex/issues/16 ](https://github.com/PgBiel/typst-tablex/issues/16) ). 
  * Fixed ` hlinex(gutter-restrict: top) ` causing the hline to just disappear ( [ https://github.com/PgBiel/typst-tablex/issues/20 ](https://github.com/PgBiel/typst-tablex/issues/20) ). 
  * Fixed certain ` gutter-restrict ` lines disappearing when thereâs no gutter ( [ https://github.com/PgBiel/typst-tablex/issues/21 ](https://github.com/PgBiel/typst-tablex/issues/21) ). 
  * Fixed row gutter lines not properly splitting across pages ( [ https://github.com/PgBiel/typst-tablex/issues/23 ](https://github.com/PgBiel/typst-tablex/issues/23) ). 

###  v0.0.3

  * Added support for Typst v0.4.0 and v0.5.0. 
    * The tablex options ` fill: ` and ` align: ` now accept arrays of values for each column ( [ https://github.com/PgBiel/typst-tablex/issues/13 ](https://github.com/PgBiel/typst-tablex/issues/13) ). 
      * For example, ` fill: (red, blue) ` would fill the first column with red, the second column with blue, and any further columns would alternate between the two fill colors. 
  * Fixed the calculation of the size of ` auto ` rows and columns when a rowspan or colspan was used ( [ https://github.com/PgBiel/typst-tablex/issues/11 ](https://github.com/PgBiel/typst-tablex/issues/11) ). 
  * Fixed the calculation of the size of the last ` auto ` column when it was too long ( [ https://github.com/PgBiel/typst-tablex/issues/6 ](https://github.com/PgBiel/typst-tablex/issues/6) ). 

###  v0.0.2

  * Added support for Typst v0.3.0. 
  * Fixed strokes - now lines will expand to not look weird when strokes are larger. 
    * You can disable this behavior by setting ` stroke-expand: false ` on your lines. 
  * You can now arbitrarily change your linesâ sizes at either end with the option ` expand: (length, length) ` ; e.g. ` expand: (5pt, 10pt) ` will increase your horizontal line 5pt to the left and 10pt to the right (or, for a vertical line, 5pt to the top and 10pt to the bottom). 
    * Support for negative expand lengths is limited (so far, only reduces length in the first cell the line spans). 
  * Added some gutter fixes (not all gutter issues were fixed yet). 

###  v0.0.1

Initial release.

  * Added types ` tablex ` , ` cellx ` , ` hlinex ` , ` vlinex `
  * Added type aliases ` gridx ` , ` rowspanx ` , ` colspanx `

##  0.1.0 Roadmap

  * [ ] General 
    * [X] More docs 
    * [ ] Code cleanup 
    * [ ] Table drawing rework 
  * [ ] ` #table ` parity 
    * [X] ` columns: ` , ` rows: `
      * [X] Basic support 
      * [X] Accept a single size to mean a single column 
      * [X] Adjust ` auto ` columns and rows 
      * [X] Accept integers to mean multiple ` auto `
      * [X] Basic unit conversion (em -> pt, etc.) 
      * [X] Ratio unit conversion (100% -> page widthâ¦) 
      * [X] Fractional unit conversion based on available space (1fr, 2fr -> 1/3, 2/3) 
      * [X] Shrink ` auto ` columns based on available space 
    * [X] ` fill `
      * [X] Basic support ( ` color ` for general fill) 
      * [X] Accept a function ( ` (column, row) => color ` ) 
      * [X] Accept an array of colors (one for each column) 
    * [X] ` align `
      * [X] Basic support ( ` alignment ` and ` 2d alignment ` apply to all cells) 
      * [X] Accept a function ( ` (column, row) => alignment/2d alignment ` ) 
      * [X] Accept an array of alignment values (one for each column) 
    * [X] ` inset `
    * [ ] ` gutter `
      * [X] Basic support 
        * [X] ` column-gutter `
        * [X] ` row-gutter `
      * [ ] Hline, vline adaptations 
        * [X] ` stop-pre-gutter ` : Makes the hline/vline not transpose gutter boundaries 
        * [X] ` gutter-restrict ` : Makes the hline/vline not draw on both sides of a gutter boundary, and instead pick one (top/bottom; left/right) 
        * [ ] Properly work with gutters after colspanxs/rowspanxs 
    * [X] ` stroke `
      * [X] Basic support (change all lines, vline or hline, without override) 
      * [X] ` none ` for no stroke 
    * [X] Default to lines on every row and column 
  * [ ] New features for ` #tablex `
    * [X] Basic types ( ` cellx ` , ` hlinex ` , ` vlinex ` ) 
    * [X] ` hlinex ` , ` vlinex `
      * [X] Auto-positioning when placed among cells 
      * [X] Arbitrary positioning 
      * [X] Allow customizing ` stroke `
    * [X] ` colspanx ` , ` rowspanx `
      * [X] Interrupt ` hlinex ` and ` vlinex ` with ` end: auto `
      * [X] Support simultaneous col/rowspan with ` cellx(colspanx:, rowspanx:) `
      * [X] Support nesting colspan/rowspan ( ` colspanx(rowspanx()) ` ) 
      * [X] Support cell attributes (e.g. ` colspanx(2, align: left)[a] ` ) 
      * [X] Reliably detect conflicts 
    * [ ] Repeating headers 
      * [X] Basic support (first row group repeats on every page) 
      * [ ] Work with different page sizes 
      * [X] ` repeat-header ` : Control header repetition 
        * [X] ` true ` : Repeat on all pages 
        * [X] integer: Repeat for the next ânâ pages 
        * [X] array of integers: Repeat on those (relative) pages 
        * [X] ` false ` (default): Do not repeat 
      * [X] ` header-rows ` : Indicate what to consider as a âheaderâ 
        * [X] integer: At least first ânâ rows are a header (plus whatever rowspanxs show up there) 
          * [X] Defaults to 1 
        * [X] ` none ` or ` 0 ` : no header (disables header repetition regardless of ` repeat-header ` ) 
    * [X] ` cellx `
      * [X] Auto-positioning based on order and columns 
      * [X] Place empty cells when there are too many 
      * [X] Allow arbitrary positioning with ` cellx(x:, y:) `
      * [X] Allow ` align ` override 
      * [X] Allow ` fill ` override 
      * [X] Allow ` inset ` override 
        * [X] Works properly only with ` auto ` cols/rows 
      * [X] Dynamic content (maybe shortcut for ` map-cells ` on a single cell) 
    * [X] Auto-lines 
      * [X] ` auto-hlines ` \- ` true ` to place on all lines without hlines, ` false ` otherwise 
      * [X] ` auto-vlines ` \- similar 
      * [X] ` auto-lines ` \- controls both simultaneously (defaults to ` true ` ) 
    * [X] Iteration attributes 
      * [X] ` map-cells ` \- Customize every single cell 
      * [X] ` map-hlines ` \- Customize each horizontal line 
      * [X] ` map-vlines ` \- Customize each vertical line 
      * [X] ` map-rows ` \- Customize entire rows of cells 
      * [X] ` map-cols ` \- Customize entire columns of cells 

##  License

Tablex is licensed under MIT or Apache-2.0, at your option (see the files `
LICENSE-MIT ` and ` LICENSE-APACHE ` ).

###  How to add

Copy this into your project and use the import as  ` tablex `

    
    
    #import "@preview/tablex:0.0.9"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ PgBiel ](https://github.com/PgBiel)
License:

     MIT OR Apache-2.0 
Current version:

     0.0.9 
Last updated:

     October 25, 2024 
First released:

     June 29, 2023 
Archive size:

     48.1 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tablex-0.0.9.tar.gz)
Repository:

     [ GitHub ](https://github.com/PgBiel/typst-tablex)

###  Where to report issues?

This  package  is a project of  PgBiel  .  Report issues on  [ their
repository ](https://github.com/PgBiel/typst-tablex) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.0.9  |  October 25, 2024   
[ 0.0.8 ](https://typst.app/universe/package/tablex/0.0.8/) |  January 12, 2024   
[ 0.0.7 ](https://typst.app/universe/package/tablex/0.0.7/) |  December 19, 2023   
[ 0.0.6 ](https://typst.app/universe/package/tablex/0.0.6/) |  October 21, 2023   
[ 0.0.5 ](https://typst.app/universe/package/tablex/0.0.5/) |  August 19, 2023   
[ 0.0.4 ](https://typst.app/universe/package/tablex/0.0.4/) |  June 29, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

