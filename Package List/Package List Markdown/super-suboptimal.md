#  super-suboptimal

0.1.0

Unicode super- and subscripts in equations.

A Typst package enabling support for Unicode super- and subscript characters
in equations.

##  Usage

The package exposes the template-function ` super-subscripts ` . It affects
all ` math.equation ` s by attaching every superscript- and subscript-
character to the first non-space-element on its left.

    
    
    #import "@preview/super-suboptimal:0.1.0": *
    #show: super-subscripts
    
    For all $(x,y)ââÂ²$:
    $
      q := norm((x,y))â < 1
      ==> âáµ¢âââ¿ q â± < â
    $
    

![Rendering of above
code](https://github.com/typst/packages/raw/main/packages/preview/super-
suboptimal/0.1.0/assets/example0.svg)

Because code like ` $x+yá¶»$ ` throws an âunknown variableâ error, the
package also exposes the function ` eq ` , which inserts spaces before every
superscript- and subscript-character and passing it on to ` math.equation ` .
This comes at the cost of missing syntax-highlighting and code-suggestions in
your IDE.

` eq ` accepts a ` raw ` string as a positional parameter, and an argument-
sink thatâs passed onto ` math.equation ` . Unless specified otherwise in
the argument-sink, the resulting equation is typeset with ` block: true ` if
and only if the ` raw ` also satisfied ` block: true ` . ` eq ` is
automatically applied to every ` raw ` with ` lang: "eq" ` .

    
    
    #eq(`0 = aáµ`)
    
    #eq(```
      1 = x+yá¶»
    ```)
    
    #eq(`2 = aáµ`, block: true, numbering: "(1)")
    
    ```eq
      3 = aáµá¶âºáµâââ½á¶ â»áµâ¾âáµ¢
    ```
    

![Rendering of above
code](https://github.com/typst/packages/raw/main/packages/preview/super-
suboptimal/0.1.0/assets/example1.svg)

Sometimes in mathematical writing, variables are decorated with an asterisk,
e.g. ` $x^*$ ` . The character ` ê³ ` can now be used, as well: ` $xê³ =
x^*$ ` .

##  Known issues

  * As mentioned above, ` $aáµ$ ` leads to an âunknown variableâ error. As a workaround, ` $a áµ$ ` produces the same output, or you can use the ` eq ` function described above. 

    * The first workaround also means I canât reasonably implement top-left and bottom-left attachments. For example, ` $a Â³b$ ` is rendered like ` $attach(a, t: 3) b$ ` , rather than ` $a attach(b, tl: 3)$ ` . 
  * Multiple attachments are concatenated into one content without another pass of ` equation ` . For example, ` #eq(`0Ë¢â±â¿â½áµâ¾`) ` is equivalent to ` $0^(s i n "(" k ")")$ ` , rather than ` $0^sin(k)$ ` . I wonât fix this, because: 

    * Another pass of ` equation ` would cause performance issues at best, and infinite loops at worst. 
    * If this were fixed, code such as ` $e Ë£ Ê¸$ ` would undesirably produce an âunknown variable ` xy ` â error. 
  * Letâs call a piece of content âsmallâ if it consists of only a single non-separated sequence of characters in Typst (internally, this is the distinction between the content-functions ` sequence ` and ` text ` ). For instance, ` $1234$ ` and ` $a$ ` constitute âsmallâ content, but ` $a b$ ` and ` $3a$ ` and ` $1+2+3+4+5$ ` do not. 

This package only runs on non-âsmallâ pieces of content. For example, `
$sqrt(35Â²)$ ` still renders with the default-Unicode-character and will look
different from ` $sqrt(35^2)$ ` . On the other hand, ` $sqrt(aâ¶)$ ` _is_
rendered correctly. This is because ` 35Â² ` constitutes âsmallâ content,
but ` aâ¶ ` does not.

A workaround is implemented for âsmallâ content immediately within an
equation, i.e. not nested within another content-function. For example, `
$7Â²$ ` renders the same as ` $7^2$ ` , even though itâs âsmallâ
content.

  * Equations within other content-elements might trigger multiple show-rule-passes, possibly causing performance-issues. 

###  How to add

Copy this into your project and use the import as  ` super-suboptimal `

    
    
    #import "@preview/super-suboptimal:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     Eric Biedert  & Lumi 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     January 29, 2024 
First released:

     January 29, 2024 
Archive size:

     6.15 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/super-suboptimal-0.1.0.tar.gz)

###  Where to report issues?

This  package  is a project of  Eric Biedert and Lumi  .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  January 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

