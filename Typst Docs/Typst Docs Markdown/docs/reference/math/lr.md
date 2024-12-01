  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Left/Right ](/docs/reference/math/lr)

#  Left/Right

Delimiter matching.

The ` lr ` function allows you to match two delimiters and scale them with the
content they contain. While this also happens automatically for delimiters
that match syntactically, ` lr ` allows you to match two arbitrary delimiters
and control their size exactly. Apart from the ` lr ` function, Typst provides
a few more functions that create delimiter pairings for absolute, ceiled, and
floored values as well as norms.

##  Example

    
    
    $ [a, b/2] $
    $ lr(]sum_(x=1)^n], size: #50%) x $
    $ abs((x + y) / 2) $
    

![Preview](/assets/docs/ftGuzhHsliOe05r2qFQMwQAAAAAAAAAA.png)

##  Functions

###  ` lr ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Scales delimiters.

While matched delimiters scale by default, this can be used to scale unmatched
delimiters and to control the delimiter scaling more precisely.

math  .  lr  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The size of the brackets, relative to the height of the wrapped content.

Default: ` auto  `

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The delimited content, including the delimiters.

###  ` mid ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Scales delimiters vertically to the nearest surrounding ` lr  (  )  ` group.

math  .  mid  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ { x mid(|) sum_(i=1)^n w_i|f_i (x)| < 1 } $
    

![Preview](/assets/docs/op-SkIh83R9BuQA_mC41YAAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to be scaled.

###  ` abs `

Takes the absolute value of an expression.

math  .  abs  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ abs(x/2) $
    

![Preview](/assets/docs/WJLuRK0YgTAAKX7q_RtueAAAAAAAAAAA.png)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The size of the brackets, relative to the height of the wrapped content.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to take the absolute value of.

###  ` norm `

Takes the norm of an expression.

math  .  norm  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ norm(x/2) $
    

![Preview](/assets/docs/YC6RjZ5CBxOUd9-0Ud9TzQAAAAAAAAAA.png)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The size of the brackets, relative to the height of the wrapped content.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to take the norm of.

###  ` floor `

Floors an expression.

math  .  floor  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ floor(x/2) $
    

![Preview](/assets/docs/PDEHlUdVGIVhIYs9pZubiAAAAAAAAAAA.png)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The size of the brackets, relative to the height of the wrapped content.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to floor.

###  ` ceil `

Ceils an expression.

math  .  ceil  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ ceil(x/2) $
    

![Preview](/assets/docs/8M0cDo0mVWiDmMeZvIBqOAAAAAAAAAAA.png)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The size of the brackets, relative to the height of the wrapped content.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to ceil.

###  ` round `

Rounds an expression.

math  .  round  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ round(x/2) $
    

![Preview](/assets/docs/tF8zASmAKWpzYdWTOE8zPAAAAAAAAAAA.png)

####  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

The size of the brackets, relative to the height of the wrapped content.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The expression to round.

[ ![â](/assets/icons/16-arrow-right.svg) Fraction  Previous page
](/docs/reference/math/frac/) [ ![â](/assets/icons/16-arrow-right.svg)
Matrix  Next page  ](/docs/reference/math/mat/)

