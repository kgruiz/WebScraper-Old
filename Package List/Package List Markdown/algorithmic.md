#  algorithmic

0.1.0

Algorithm pseudocode typesetting for Typst, inspired by algorithmicx in LaTeX

This is a package inspired by the LaTeX [ ` algorithmicx `
](https://ctan.org/pkg/algorithmicx) package for Typst. Itâs useful for
writing pseudocode and typesetting it all nicely.

![screenshot of the typst-algorithmic output, showing line numbers, automatic

indentation, bolded keywords, and
such](https://github.com/typst/packages/raw/main/packages/preview/algorithmic/0.1.0/docs/assets/demo-
rendered.png)

Example:

    
    
    #import "@preview/algorithmic:0.1.0"
    #import algorithmic: algorithm
    
    #algorithm({
      import algorithmic: *
      Function("Binary-Search", args: ("A", "n", "v"), {
        Cmt[Initialize the search range]
        Assign[$l$][$1$]
        Assign[$r$][$n$]
        State[]
        While(cond: $l <= r$, {
          Assign([mid], FnI[floor][$(l + r)/2$])
          If(cond: $A ["mid"] < v$, {
            Assign[$l$][$m + 1$]
          })
          ElsIf(cond: [$A ["mid"] > v$], {
            Assign[$r$][$m - 1$]
          })
          Else({
            Return[$m$]
          })
        })
        Return[*null*]
      })
    })
    

This DSL is implemented using the same trick as [ CeTZ
](https://github.com/johannes-wolf/typst-canvas) uses: a code block of arrays
gets those arrays joined together.

Currently this library is not really customizable. Please vendor it and hack
it up as needed then file an issue for the customization option youâre
missing.

##  Reference

####  stmt

Statement-level contexts in ` algorithmic ` generally accept the type ` body `
in the following:

    
    
    body = (ast|content)[] | ast | content
    ast = (change_indent: int, body: body)
    

####  inline

Inline functions will generate plain content.

####  ` algorithmic(..bits) `

Takes one or more lists of ` ast ` and creates an algorithmic block with line
numbers.

###  Control flow

####  ` Function ` / ` Procedure ` (stmt)

Defined as ` f(name: string|content, args: content[]?, ..body) ` . Body can be
one or more ` body ` values.

####  ` If ` / ` ElseIf ` / ` Else ` / ` For ` / ` While ` (stmt)

Defined as ` f(cond: string|content, ..body) ` . Body can be one or more `
body ` values.

Generates an indented block with the body, and the specified ` cond ` between
the two keywords as condition.

###  Statements

####  ` Assign ` (stmt)

Defined as ` Assign(var: content, val: content) ` .

Generates ` #var <- #val ` .

####  ` CallI ` (inline), ` Call ` (stmt)

Defined as ` f(name, args: content|content[]) ` .

Calls a function with the function name styled in smallcaps and the args
joined by commas.

####  ` Cmt ` (stmt)

Defined as ` Cmt(body: content) ` .

Makes a line comment.

####  ` FnI ` (inline), ` Fn ` (stmt)

Defined as ` f(name, args: content|content[]) ` .

Calls a function with the function name styled in bold and the args joined by
commas.

####  ` Ic ` (inline)

Defined as ` Ic(body: content) -> content ` .

Makes an inline comment.

####  ` Return ` (stmt)

Defined as ` Return(arg: content) ` .

Generates ` return #arg ` .

####  ` State ` (stmt)

Defined as ` State(body: content) ` .

Turns any content into a line.

###  How to add

Copy this into your project and use the import as  ` algorithmic `

    
    
    #import "@preview/algorithmic:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Jade Lovelace 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     August 19, 2023 
First released:

     August 19, 2023 
Archive size:

     3.29 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/algorithmic-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/lf-/typst-algorithmic)

###  Where to report issues?

This  package  is a project of  Jade Lovelace  .  Report issues on  [ their
repository ](https://github.com/lf-/typst-algorithmic) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  August 19, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

