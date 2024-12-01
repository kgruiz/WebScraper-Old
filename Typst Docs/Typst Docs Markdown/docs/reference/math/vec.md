  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Vector ](/docs/reference/math/vec/)

#  ` vec ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A column vector.

Content in the vector's elements can be aligned with the [ ` align `
](/docs/reference/math/vec/#parameters-align) parameter, or the ` & ` symbol.

##  Example

    
    
    $ vec(a, b, c) dot vec(1, 2, 3)
        = a + 2b + 3c $
    

![Preview](/assets/docs/LnRm06lLMggD8fCQZdA66QAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

math  .  vec  (

delim  :  [ none ](/docs/reference/foundations/none/) [ str
](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) [ symbol
](/docs/reference/symbols/symbol/) ,  align  :  [ alignment
](/docs/reference/layout/alignment/) ,  gap  :  [ relative
](/docs/reference/layout/relative/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` delim `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/) or  [ symbol
](/docs/reference/symbols/symbol/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The delimiter to use.

Can be a single character specifying the left delimiter, in which case the
right delimiter is inferred. Otherwise, can be an array containing a left and
a right delimiter.

Default: ` (  "("  ,  ")"  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set math.vec(delim: "[")
    $ vec(1, 2) $
    

![Preview](/assets/docs/5LFZJ9d25bljXFp6kARHcgAAAAAAAAAA.png)

###  ` align `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The horizontal alignment that each element should have.

Default: ` center `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set math.vec(align: right)
    $ vec(-1, 1, -1) $
    

![Preview](/assets/docs/ZtHlp9Y4zEtz53Ydf5unLAAAAAAAAAAA.png)

###  ` gap `

[ relative ](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The gap between elements.

Default: ` 0%  +  0.2em  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set math.vec(gap: 1em)
    $ vec(1, 2) $
    

![Preview](/assets/docs/uiK2bQUKjIzcO3IGp7RZPwAAAAAAAAAA.png)

###  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The elements of the vector.

[ ![â](/assets/icons/16-arrow-right.svg) Variants  Previous page
](/docs/reference/math/variants/) [ ![â](/assets/icons/16-arrow-right.svg)
Symbols  Next page  ](/docs/reference/symbols/)

