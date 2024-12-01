#  dining-table

0.1.0

Column-wise table definitions for big data

Version 0.1.0

Implements a layer on top of table to allow the user to define a table by
column rather than by row, to automatically handle headers and footers, to
implement table footnotes, to handle nested column quirks for you, to handle
rendering nested data structures.

Basically, if you are tabulating data where each row is an observation, and
some features (columns) are to be grouped (a common case for scientific data)
then this package might be worth checking out. Another use case is where you
have multiple tables with identical layouts, and you wish to keep them all
consistent with one another.

![Light](https://github.com/typst/packages/raw/main/packages/preview/dining-
table/0.1.0/examples/ledger.png)

##  Usage

See the manual for in-depth usage, but for a quick reference, here is the
ledger example (which is fully featured)

    
    
    #import "@preview/dining-table:0.1.0"
    
    #let data = (
      (
        date: datetime.today(),
        particulars: lorem(05),
        ledger: [JRS123] + dining-table.note.make[Hello World],
        amount: (unit: $100$, decimal: $00$),
        total: (unit: $99$, decimal: $00$),
      ),
    )*7 
    
    #import "@preview/typpuccino:0.1.0"
    #let bg-fill-1 = typpuccino.latte.base
    #let bg-fill-2 = typpuccino.latte.mantle
    
    #let example = (
      (
        key: "date",
        header: align(left)[Date],
        display: (it)=>it.display(auto),
        fill: bg-fill-1,
        align: start,
        gutter: 0.5em,
      ),
      (
        key: "particulars",
        header: text(tracking: 5pt)[Particulars],
        width: 1fr,
        gutter: 0.5em,
      ),
      (
        key: "ledger",
        header: [Ledger],
        fill: bg-fill-2,
        width: 2cm,
        gutter: 0.5em,
      ),
      (
        header: align(center)[Amount],
        fill: bg-fill-1,
        gutter: 0.5em,
        hline: arguments(stroke: dining-table.lightrule),
        children: (
          (
            key: "amount.unit", 
            header: align(left)[Â£], 
            width: 5em, 
            align: right,
            vline: arguments(stroke: dining-table.lightrule),
            gutter: 0em,
          ),
          (
            key: "amount.decimal",
            header: align(right, text(number-type: "old-style")[.00]), 
            align: left
          ),
        )
      ),
      (
        header: align(center)[Total],
        gutter: 0.5em,
        hline: arguments(stroke: dining-table.lightrule),
        children: (
          (
            key: "total.unit", 
            header: align(left)[Â£], 
            width: 5em, 
            align: right,
            vline: arguments(stroke: dining-table.lightrule),
            gutter: 0em,
          ),
          (
            key: "total.decimal",
            header: align(right, text(number-type: "old-style")[.00]), 
            align: left
          ),
        )
      ),
    )
    
    #set text(size: 11pt)
    #set page(height: auto, margin: 1em)
    #dining-table.make(columns: example, 
      data: data, 
      notes: dining-table.note.display-list
    )
    

###  How to add

Copy this into your project and use the import as  ` dining-table `

    
    
    #import "@preview/dining-table:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     James R. Swift 
License:

     Unlicense 
Current version:

     0.1.0 
Last updated:

     July 10, 2024 
First released:

     July 10, 2024 
Archive size:

     598 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/dining-table-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/JamesxX/dining-table)
Discipline  s  :

    

  * [ Agriculture ](https://typst.app/universe/search/?discipline=agriculture)
  * [ Biology ](https://typst.app/universe/search/?discipline=biology)
  * [ Chemistry ](https://typst.app/universe/search/?discipline=chemistry)
  * [ Communication ](https://typst.app/universe/search/?discipline=communication)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Economics ](https://typst.app/universe/search/?discipline=economics)
  * [ Physics ](https://typst.app/universe/search/?discipline=physics)

Categor  ies  :

    

  * ![Components icon](/assets/icons/16-package.svg) [ Components ](https://typst.app/universe/search/?category=components)
  * ![Visualization icon](/assets/icons/16-chart.svg) [ Visualization ](https://typst.app/universe/search/?category=visualization)
  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)

###  Where to report issues?

This  package  is a project of  James R. Swift  .  Report issues on  [ their
repository ](https://github.com/JamesxX/dining-table) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 10, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

