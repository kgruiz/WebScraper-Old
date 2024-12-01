  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Superscript ](/docs/reference/text/super/)

#  ` super ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Renders text in superscript.

The text is rendered smaller and its baseline is raised.

##  Example

    
    
    1#super[st] try!
    

![Preview](/assets/docs/052zwKrkvVHtZVzW65WFdQAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

super  (

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

Whether to prefer the dedicated superscript characters of the font.

If this is enabled, Typst first tries to transform the text to superscript
codepoints. If that fails, it falls back to rendering raised and shrunk normal
letters.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    N#super(typographic: true)[1]
    N#super(typographic: false)[1]
    

![Preview](/assets/docs/1_zKQkbZObDWVLT4k-2LKQAAAAAAAAAA.png)

###  ` baseline `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The baseline shift for synthetic superscripts. Does not apply if ` typographic
` is true and the font has superscript codepoints for the given ` body ` .

Default: ` -  0.5em  `

###  ` size `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The font size for synthetic superscripts. Does not apply if ` typographic ` is
true and the font has superscript codepoints for the given ` body ` .

Default: ` 0.6em  `

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The text to display in superscript.

[ ![â](/assets/icons/16-arrow-right.svg) Subscript  Previous page
](/docs/reference/text/sub/) [ ![â](/assets/icons/16-arrow-right.svg) Text
Next page  ](/docs/reference/text/text/)

