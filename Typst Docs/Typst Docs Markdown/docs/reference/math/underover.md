  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Under/Over ](/docs/reference/math/underover)

#  Under/Over

Delimiters above or below parts of an equation.

The braces and brackets further allow you to add an optional annotation below
or above themselves.

##  Functions

###  ` underline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal line under content.

math  .  underline  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ underline(1 + 2 + ... + 5) $
    

![Preview](/assets/docs/kPv2rkuOYqE5xrS9gynyqwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content above the line.

###  ` overline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal line over content.

math  .  overline  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ overline(1 + 2 + ... + 5) $
    

![Preview](/assets/docs/brbtze6pYcbdDHZXqYtX4QAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content below the line.

###  ` underbrace ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal brace under content, with an optional annotation below.

math  .  underbrace  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ underbrace(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/CQPrguDXpL2KqqF50rooNAAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content above the brace.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content below the brace.

Default: ` none  `

###  ` overbrace ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal brace over content, with an optional annotation above.

math  .  overbrace  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ overbrace(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/kkBGSVxyTk5_L1k_EG8I3gAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content below the brace.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content above the brace.

Default: ` none  `

###  ` underbracket ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal bracket under content, with an optional annotation below.

math  .  underbracket  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ underbracket(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/gOJp15FKm4cOEOHbW4H-OwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content above the bracket.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content below the bracket.

Default: ` none  `

###  ` overbracket ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal bracket over content, with an optional annotation above.

math  .  overbracket  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ overbracket(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/1FDacJmC0p-s0HOdRor7WgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content below the bracket.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content above the bracket.

Default: ` none  `

###  ` underparen ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal parenthesis under content, with an optional annotation below.

math  .  underparen  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ underparen(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/L9b8yvtULgB5qqliYqLlbAAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content above the parenthesis.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content below the parenthesis.

Default: ` none  `

###  ` overparen ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal parenthesis over content, with an optional annotation above.

math  .  overparen  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ overparen(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/0O_PdeP9aD4IdbiAFPLHcwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content below the parenthesis.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content above the parenthesis.

Default: ` none  `

###  ` undershell ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal tortoise shell bracket under content, with an optional annotation
below.

math  .  undershell  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ undershell(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/qJR4zaGYtEbCSgwj0kBzVgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content above the tortoise shell bracket.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content below the tortoise shell bracket.

Default: ` none  `

###  ` overshell ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A horizontal tortoise shell bracket over content, with an optional annotation
above.

math  .  overshell  (

[ content ](/docs/reference/foundations/content/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ overshell(1 + 2 + ... + 5, "numbers") $
    

![Preview](/assets/docs/vPA0v0E_JXwsC1BpaClcEgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content below the tortoise shell bracket.

####  ` annotation `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The optional content above the tortoise shell bracket.

Default: ` none  `

[ ![â](/assets/icons/16-arrow-right.svg) Text Operator  Previous page
](/docs/reference/math/op/) [ ![â](/assets/icons/16-arrow-right.svg)
Variants  Next page  ](/docs/reference/math/variants/)

