  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Subscript ](/docs/reference/text/sub/)

#  ` sub ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Renders text in subscript.

The text is rendered smaller and its baseline is lowered.

##  Example

    
    
    Revenue#sub[yearly]
    

![Preview](/assets/docs/q6m3B3bVOLKPuJFIogqIMwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

sub  (

typographic  :  [ bool ](/docs/reference/foundations/bool/) ,  baseline  :  [
length ](/docs/reference/layout/length/) ,  size  :  [ length
](/docs/reference/layout/length/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` typographic `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to prefer the dedicated subscript characters of the font.

If this is enabled, Typst first tries to transform the text to subscript
codepoints. If that fails, it falls back to rendering lowered and shrunk
normal letters.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    N#sub(typographic: true)[1]
    N#sub(typographic: false)[1]
    

![Preview](/assets/docs/eGuJ4coPHcIbozTvGKvULAAAAAAAAAAA.png)

###  ` baseline `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The baseline shift for synthetic subscripts. Does not apply if ` typographic `
is true and the font has subscript codepoints for the given ` body ` .

Default: ` 0.2em  `

###  ` size `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The font size for synthetic subscripts. Does not apply if ` typographic ` is
true and the font has subscript codepoints for the given ` body ` .

Default: ` 0.6em  `

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The text to display in subscript.

[ ![â](/assets/icons/16-arrow-right.svg) Strikethrough  Previous page
](/docs/reference/text/strike/) [ ![â](/assets/icons/16-arrow-right.svg)
Superscript  Next page  ](/docs/reference/text/super/)

