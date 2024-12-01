#  structogrammer

0.1.1

Draw Nassi-Shneiderman diagrams (or structograms)

Draw Nassi-Shneiderman diagrams, also called structograms, in Typst.

##  Basic Usage

Import with:

    
    
    #import "@preview/structogrammer:0.1.0": structogram
    

You can then draw structograms, like so:

    
    
    #structogram(
      width: 30em,
      title: "merge_sort(list)",
      (
        (If: "list empty", Then: (Break: "exit (return list)")),
        "left = []",
        "right = []",
        (For: "element with index i", In: "list", Do: (
          (If: "i < list.length / 2", Then: (
            "left.add(element)"
          ), Else: (
            "right.add(element)"
          ))
        )),
        "left = merge_sort(left)",
        "right = merge_sort(right)",
        (Break: "return with merge(left, right)")
      )
    )
    

which yields:  
![The structogram specified by the code
above](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/merge-
sort.svg)

If ` text.lang ` is set to another language, this package will try to match
inserted text to it. Currently, only ` "en" ` and ` "de" ` are supported

##  Advanced usage

` structogram() ` takes the following named arguments:

  * ` columns ` : If you already allocated wide and narrow columns, ` to-elements ` can use them. Useful for sub-specs, as youâd usually generate allocations first and then do another recursive pass to fill them.   
The default, ` auto ` does exactly this on the highest recursion level.

  * ` stroke ` : The stroke to use between cells, or for control blocks. Note: to avoid duplicate strokes, every cell only adds strokes to its top and left side. Put the resulting cells in a container with bottom and right strokes for a finished diagram. See ` structogram() ` .   
Default: ` 0.5pt + black `

  * ` inset ` : How much to pad each cell.   
Default: ` 0.5em `

  * ` segment-height ` : How high each row should be.   
Default: ` 2em `

  * ` narrow-width ` : The width that narrow columns will be. Needed for diagonals in conditional blocks.   
Default: 1em

A ` spec ` (the positional argument to ` structogram() ` ) can be one of the
following:

  * ` none ` or an emtpy [ ` array ` ](https://typst.app/docs/reference/foundations/array/) ` () ` : An empty cell, taking up at least a narrow column 
  * a [ ` string ` ](https://typst.app/docs/reference/foundations/str/) or [ ` content ` ](https://typst.app/docs/reference/foundations/content/) : A cell containing that string or content, taking up at least a wide column 
  * A [ ` dictionary ` ](https://typst.app/docs/reference/foundations/dictionary/) : Control block ( [ see below ](https://github.com/typst/packages/raw/main/packages/preview/structogrammer/0.1.1/#control-blocks) ) 
  * An [ ` array ` ](https://typst.app/docs/reference/foundations/array/) of specs: The cells that each element produced, stacked on top of each other. Wide columns are aligned to wide columns of other element specs and narrow columns consumed as needed. 

###  Control blocks

Specs can contain the following control blocks, as dictionaries:

####  1\. ` If ` / ` Then ` / ` Else ` :

A conditional with the following keys:

  * ` If ` : The condition on which to branch 
  * ` Then ` : A diagram spec for the âyesâ-branch 
  * ` Else ` : A diagram spec for the ânoâ-branch 

` Then ` and ` Else ` are both optional, but at least one must be present

Examples:

  * ` (If: "debug mode", Then: ("print debug message")) ` ![Structogram with an if-branch that prints a debug message if the condition debug mode is met](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/if-then.svg)
  * ` (If: "x > 5", Then: ("x = x - 1", "print x"), Else: "print x") ` ![Structogram with an if-branch that decrements and prints x if x is smaller than 5 or else just prints x](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/if-then-else.svg)

Columns: Takes up columns according to its contents next to one another,
inserting narrow columns for empty branches

####  2\. ` For ` / ` Do ` , ` For ` / ` To ` / ` Do ` , ` For ` / ` In ` / `
Do ` , ` While ` / ` Do ` , ` Do ` / ` While ` :

A loop, with the loop control either at the top or bottom.

  * ` For ` / ` Do ` formats the control as âFor $Forâ, 
  * ` For ` / ` To ` / ` Do ` as âFor $For to $Toâ, 
  * ` For ` / ` In ` / ` Do ` as âFor each $For in $Inâ, 
  * ` While ` / ` Do ` and ` Do ` / ` While ` as âWhile $Whileâ. 

Order of specified keys matters.

Examples:

  * ` (While: "true", Do: "print \"endless loop\"") ` ![Structogram that prints "endless loop" forever \(while condition true\). This is an entry-controlled loop](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/while-do.svg)
  * ` (Do: "print \"endless loop\"", While: "true") ` ![Structogram that does the same but with an exit-controlled loop](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/do-while.svg)
  * ` (For: "item", In: "Container", Do: "print item.name") ` ![Structogram that iterates over each item in a container and prints the item name](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/for-in.svg)

Columns: Inserts a narrow column left to its content.

####  3\. Method call ( ` Call ` )

A block indicating that a subroutine is executed here. Only accepts the key `
Call ` , which is the string name

Example:

  * ` (Call: "func()") ` ![Structogram that calls the "func" function](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/call.svg)

Columns: One wide column

####  4\. Break/Return ( ` Break ` )

A block indicating that a subroutine is executed here. Only accepts the key `
Break ` , which is the target to break to

Examples:

  * ` (Break: "") ` ![Structogram that indicates interrupting the control flow](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/break.svg)
  * ` (Break: "to enclosing loop") ` ![Structogram that indicates interrupting the control flow, returning to the enclosing loop](https://raw.githubusercontent.com/genericusername3/structogrammer/master/examples/break-to.svg)

Columns: One wide column

###  How to add

Copy this into your project and use the import as  ` structogrammer `

    
    
    #import "@preview/structogrammer:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Charlotte ](https://cza.li)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     May 14, 2024 
First released:

     May 13, 2024 
Archive size:

     8.68 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/structogrammer-0.1.1.tar.gz)

###  Where to report issues?

This  package  is a project of  Charlotte  .  You can also try to ask for help
with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  May 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/structogrammer/0.1.0/) |  May 13, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

