#  pillar

0.2.0

Faster column specifications for tables.

_Shorthand notations for table column specifications in[ Typst
](https://typst.app/) . _

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fpillar%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/pillar) [ ![Test
Status](https://github.com/Mc-
Zen/pillar/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/pillar/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/pillar/blob/main/LICENSE)

  * [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#introduction)
  * [ Column specification ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#column-specification)
  * [ Number alignment ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#number-alignment)
  * [ ` pillar.cols() ` ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#pillarcols)
  * [ ` pillar.table() ` ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#pillartable)
  * [ ` vline ` customization ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#vline-customization)

##  Introduction

With **pillar** , you can significantly simplify the column setup of tables by
unifying the specification of the number, alignment, and separation of
columns. This package is in particular designed for scientific tables, which
typically have simple styling:

![Table of some piano notes and their names and
frequencies](https://github.com/user-
attachments/assets/c0c60651-c682-4968-9ac9-0fa1e8d85dad)

In order to prepare this table with just the built-in methods, some code like
the following would be required.

    
    
    #table(
      columns: 5,
      align: (center,) * 4 + (right,),
      stroke: none,
    
    
      [Piano Key], table.vline(), [MIDI Number], [Note Name], [Pitch Name], table.vline(), [$f$ in Hz],
      ..
    )
    

Using **pillar** , the same can be achieved with

    
    
    #table(
        ..pillar.cols("c|ccc|r"),
    
        [Piano Key], [MIDI Number], [Note Name], [Pitch Name], [$f$ in Hz], ..
    )
    

or alternatively

    
    
    #pillar.table(
        cols: "c|ccc|r",
    
        [Piano Key], [MIDI Number], [Note Name], [Pitch Name], [$f$ in Hz], ..
    )
    

**Pillar** is designed for interoperability. It uses the powerful standard
tables and provides generated arguments for ` table ` âs ` columns ` , `
align ` , ` stroke ` , and for the specified vertical lines. This means that
all features of the built-in tables (and also ` show ` and ` set ` rules) can
be applied as usual.

##  Column specification

This package works with _column specification strings_ . Each column is
described by its alignment which can be ` l ` (left), ` c ` (center), ` r `
(right), or ` a ` (auto).

The width of a column can optionally be specified by appending a (relative)
length, or fraction in square brackets to the alignment specifier, e.g., `
c[2cm] ` or ` r[1fr] ` .

Vertical lines can be added between columns with a ` | ` character. Double lines can be produced with ` || ` (see [ ` vline ` customization ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#vline-customization) ). The stroke of the vertical line can be changed by appending anything that is usually allowed as a stroke argument in square brackets, e.g., ` |[2pt] ` , ` |[red] ` or ` |[(dash: \"dashed\")] ` . 

A column specification string may contain any number of spaces (e.g., to
improve readability) â all spaces will be ignored.

_If you find yourself writing highly complex column specifications, consider
not using this package and resort to the parameters that the built-in tables
provide. This package is intended for quick and relatively simple column
specifications._

##  Number alignment

Choosing capital letters ` L ` , ` C ` , ` R ` , or ` A ` instead of lower-
case letters activates number alignment at the decimal separator for a
specific column (similar to the column type âSâ of the LaTeX package [
siunitx ](https://github.com/josephwright/siunitx) ). This feature is provided
via the Typst package **Zero** . [ Here ](https://github.com/Mc-Zen/zero) you
can read up on the configuration of number formatting.

    
    
    #let percm = $"cm"^(-1)$
    
    #pillar.table(
      cols: "l|CCCC",
      [], [$Î Î½_0$ in #percm], [$B'_Î½$ in #percm], [$B''_Î½$ in #percm], [$D'_Î½$ in #percm],
      table.hline(),
      [Measurement], [14525.278],   [1.41],    [1.47],    [1.5e-5],
      [Uncertainty], [2],           [0.3],     [0.3],     [4e-6],
      [Ref. [2]],    [14525,74856], [1.37316], [1.43777], [5.401e-6]
    )
    

![Number alignment](https://github.com/user-
attachments/assets/066cd34e-7043-48c7-b067-e3256e942f14)

Non-number entries (e.g., in the header) are automatically recognized in some
cases and will not be aligned. In ambiguous cases, adding a leading or
trailing space tells Zero not to apply alignment to this cell, e.g., `
[Voltage ] ` instead of ` [Voltage] ` .

##  ` pillar.cols() `

This function produces an argument list that may contain arguments for `
columns ` , ` align ` , ` stroke ` , and ` column-gutter ` as well as
instances of ` table.vline() ` . These arguments are intended to be expanded
with the ` .. ` syntax into the argument list of ` table ` as shown in the
examples.

##  ` pillar.table() `

This is a thin wrapper that behaves just like the built-in ` table ` , except
that it extracts the first positional argument if it is a string, and runs it
through ` pillar.cols() ` .

##  ` vline ` customization

In order to customize the default line setting, just use set rules on `
table.vline ` , e.g.,

    
    
    #set table.vline(stroke: .7pt)
    
    #table(..pillar.cols("c|cc"), ..)
    

Double lines are currently experimental and are realized through column
gutters. They could also be realized through patterns, but this can produce
artifacts with some renderers. As it currently is, double lines are not
supported before the first and after the last column. On the other hand, with
the current method, double lines are styled with set rules on ` table.vline `
which is nice and not achievable in the same way with patterns.

##  Examples

###  Double lines

The following example uses a double line for visually separating repeated
table columns.

    
    
    #pillar.table(
      cols: "ccc ||[.7pt] ccc",
      
      ..([\#], [$Î±$ in Â°], [$Î²$ in Â°]) * 2,
      table.hline(),
      [1], [34.3], [11.1],  [6], [34.0], [12.9],
      [2], [34.2], [11.2],  [7], [34.3], [12.8],
      [3], [34.6], [11.4],  [8], [33.9], [11.9],
      [4], [34.7], [10.3],  [9], [34.4], [11.8],
      [5], [34.3], [11.1], [10], [34.4], [11.8],
    )
    

![Demonstration example using double vertical lines](https://github.com/user-
attachments/assets/e05e7bad-61b6-44f9-af34-5e558f338cdc)

###  Further customization

This example shows the codes of the first ten printable ASCII characters,
demonstrating stroke and column width customization.

    
    
    #pillar.table(
      cols: "ccc|ccc|[1.8pt + blue] l[5cm]",
      
      [Dec],[Hex],[Bin],[Symbol], [HTML code], [HTML name], [Description],
      table.hline(),
      [32], [20], [00100000], [&#32;], [],         [SP], [Space],
      [33], [21], [00100001], [&#33;], [&excl;],   [!],  [Exclamation mark],
      [34], [22], [00100010], [&#34;], [&quot;],   ["],  [Double quotes],
      [35], [23], [00100011], [&#35;], [&num;],    [\#], [Number sign],
      [36], [24], [00100100], [&#36;], [&dollar;], [\$], [Dollar sign],
      [37], [25], [00100101], [&#37;], [&percnt;], [%],  [Percent sign],
      [38], [26], [00100110], [&#38;], [&amp;],    [&],  [Ampersand],
      [39], [27], [00100111], [&#39;], [&apos;],   ['],  [Single quote],
      [40], [28], [00101000], [&#40;], [&lparen;], [(],  [Opening parenthesis],
      [41], [29], [00101001], [&#41;], [&rparen;], [)],  [Closing parenthesis],
    )
    

![Demonstration example using double vertical lines](https://github.com/user-
attachments/assets/9fae998e-033d-4d7e-9344-fe3778bbd9e6)

##  Tests

This package uses [ typst-test ](https://github.com/tingerrr/typst-test/) for
running [ tests
](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/tests/)
.

###  How to add

Copy this into your project and use the import as  ` pillar `

    
    
    #import "@preview/pillar:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Mc-Zen ](https://github.com/Mc-Zen)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     August 22, 2024 
First released:

     May 27, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     5.52 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pillar-0.2.0.tar.gz)
Categor  ies  :

    

  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Layout icon](/assets/icons/16-layout.svg) [ Layout ](https://typst.app/universe/search/?category=layout)

###  Where to report issues?

This  package  is a project of  Mc-Zen  .  You can also try to ask for help
with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  August 22, 2024   
[ 0.1.0 ](https://typst.app/universe/package/pillar/0.1.0/) |  May 27, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

