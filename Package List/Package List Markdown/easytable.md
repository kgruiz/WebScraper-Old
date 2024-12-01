#  easytable

0.1.0

Simple Table Package

A Typst library for writing simple tables.

##  Usage

    
    
    #import "@preview/easytable:0.1.0": easytable, elem
    #import elem: *
    

##  Manual

  * You can create a table by specifying data or layout elements as arguments to the ` easytable ` function. 
  * The following elements are provided in the ` elem ` module. 
    * ` elem.tr ` : a data row 
    * ` elem.th ` : a header row 
    * ` elem.hline ` : a horizontal line 
    * ` elem.vline ` : a vertical line 
    * ` elem.cwidth ` : a column-width specifier 
    * ` elem.cstyle ` : a column-style (font, alignment, etc.) specifier 

See [ manual
](https://github.com/typst/packages/raw/main/packages/preview/easytable/0.1.0/manual.pdf)
in detail.

##  Examples

###  A Simple Table

    
    
    #easytable({
      th[Header 1 ][Header 2][Header 3  ]
      tr[How      ][I       ][want      ]
      tr[a        ][drink,  ][alcoholic ]
      tr[of       ][course, ][after     ]
      tr[the      ][heavy   ][lectures  ]
      tr[involving][quantum ][mechanics.]
    })
    

![image](https://github.com/monaqa/typst-
easytable/assets/48883418/690b466b-56d9-4660-8ca5-25cc25e379f9)

###  Setting Column Alignment and Width

    
    
    #easytable({
      cwidth(100pt, 1fr, 20%)
      cstyle(left, center, right)
      th[Header 1 ][Header 2][Header 3  ]
      tr[How      ][I       ][want      ]
      tr[a        ][drink,  ][alcoholic ]
      tr[of       ][course, ][after     ]
      tr[the      ][heavy   ][lectures  ]
      tr[involving][quantum ][mechanics.]
    })
    

![image](https://github.com/monaqa/typst-
easytable/assets/48883418/8ff574b4-bf1f-46ca-8a2d-584ab701a989)

###  Customizing Styles

    
    
    #easytable({
      let tr = tr.with(trans: pad.with(x: 3pt))
    
      th[Header 1][Header 2][Header 3]
      tr[How][I][want]
      tr[a][drink,][alcoholic]
      tr[of][course,][after]
      tr[the][heavy][lectures]
      tr[involving][quantum][mechanics.]
    })
    

![image](https://github.com/monaqa/typst-
easytable/assets/48883418/8a1ed0d0-4a9e-4a28-a0ff-b8f7a09cb8a8)

    
    
    #easytable({
      let th = th.with(trans: emph)
      let tr = tr.with(
        cell_style: (x: none, y: none)
          => (fill: if calc.even(y) {
            luma(95%)
          } else {
            none
          })
      )
    
      th[Header 1][Header 2][Header 3]
      tr[How][I][want]
      tr[a][drink,][alcoholic]
      tr[of][course,][after]
      tr[the][heavy][lectures]
      tr[involving][quantum][mechanics.]
    })
    

![image](https://github.com/monaqa/typst-
easytable/assets/48883418/5f8bf796-b2bd-41c4-a79e-fd97c2824ecd)

    
    
    #easytable({
      th[Header 1][Header 2][Header 3]
      tr[How][I][want]
      hline(stroke: red)
      tr[a][drink,][alcoholic]
      tr[of][course,][after]
      tr[the][heavy][lectures]
      tr[involving][quantum][mechanics.]
    
      // Specifying the insertion point directly
      hline(stroke: 2pt + green, y: 4)
      vline(
        stroke: (paint: blue, thickness: 1pt, dash: "dashed"),
        x: 2,
        start: 1,
        end: 5,
      )
    })
    

![image](https://github.com/monaqa/typst-
easytable/assets/48883418/cf400dad-a7fc-4f3a-991d-9611adab41c6)

###  How to add

Copy this into your project and use the import as  ` easytable `

    
    
    #import "@preview/easytable:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     monaqa 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     February 24, 2024 
First released:

     February 24, 2024 
Archive size:

     3.36 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/easytable-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/monaqa/typst-easytable)

###  Where to report issues?

This  package  is a project of  monaqa  .  Report issues on  [ their
repository ](https://github.com/monaqa/typst-easytable) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  February 24, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

