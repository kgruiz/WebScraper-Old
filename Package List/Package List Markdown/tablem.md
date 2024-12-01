#  tablem

0.1.0

Write markdown-like tables easily.

Write markdown-like tables easily.

##  Example

Have a look at the source [ here
](https://github.com/typst/packages/raw/main/packages/preview/tablem/0.1.0/examples/example.typ)
.

![Example](https://github.com/typst/packages/raw/main/packages/preview/tablem/0.1.0/examples/example.png)

##  Usage

You can simply copy the markdown table and paste it in ` tablem ` function.

    
    
    #import "@preview/tablem:0.1.0": tablem
    
    #tablem[
      | *Name* | *Location* | *Height* | *Score* |
      | ------ | ---------- | -------- | ------- |
      | John   | Second St. | 180 cm   |  5      |
      | Wally  | Third Av.  | 160 cm   |  10     |
    ]
    

And you can use custom render function.

    
    
    #import "@preview/tablex:0.0.6": tablex, hlinex
    #import "@preview/tablem:0.1.0": tablem
    
    #let three-line-table = tablem.with(
      render: (columns: auto, ..args) => {
        tablex(
          columns: columns,
          auto-lines: false,
          align: center + horizon,
          hlinex(y: 0),
          hlinex(y: 1),
          ..args,
          hlinex(),
        )
      }
    )
    
    #three-line-table[
      | *Name* | *Location* | *Height* | *Score* |
      | ------ | ---------- | -------- | ------- |
      | John   | Second St. | 180 cm   |  5      |
      | Wally  | Third Av.  | 160 cm   |  10     |
    ]
    

![Example](https://github.com/typst/packages/raw/main/packages/preview/tablem/0.1.0/examples/example.png)

##  ` tablem ` function

    
    
    #let tablem(
      render: table,
      ignore-second-row: true,
      ..args,
      body
    ) = { .. }
    

**Arguments:**

  * ` render ` : [ ` (columns: int, ..args) => { .. } ` ] â Custom render function, default to be ` table ` , receiving a integer-type columns, which is the count of first row. ` ..args ` is the combination of ` args ` of ` tablem ` function and children genenerated from ` body ` . 
  * ` ignore-second-row ` : [ ` boolean ` ] â Whether to ignore the second row (something like ` |---| ` ). 
  * ` args ` : [ ` any ` ] â Some arguments you want to pass to ` render ` function. 
  * ` body ` : [ ` content ` ] â The markdown-like table. There should be no extra line breaks in it. 

##  Limitations

Cell merging has not yet been implemented.

##  License

This project is licensed under the MIT License.

###  How to add

Copy this into your project and use the import as  ` tablem `

    
    
    #import "@preview/tablem:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     OrangeX4 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     November 18, 2023 
First released:

     November 18, 2023 
Archive size:

     2.37 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/tablem-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/OrangeX4/typst-tablem)

###  Where to report issues?

This  package  is a project of  OrangeX4  .  Report issues on  [ their
repository ](https://github.com/OrangeX4/typst-tablem) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  November 18, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

