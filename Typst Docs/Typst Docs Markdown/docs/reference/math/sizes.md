  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Sizes ](/docs/reference/math/sizes)

#  Sizes

Forced size styles for expressions within formulas.

These functions allow manual configuration of the size of equation elements to
make them look as in a display/inline equation or as if used in a root or
sub/superscripts.

##  Functions

###  ` display `

Forced display style in math.

This is the normal size for block equations.

math  .  display  (

[ content ](/docs/reference/foundations/content/) ,  cramped  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $sum_i x_i/2 = display(sum_i x_i/2)$
    

![Preview](/assets/docs/Kw_xKFEpG79sGcim5bh7SgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to size.

####  ` cramped `

[ bool ](/docs/reference/foundations/bool/)

Whether to impose a height restriction for exponents, like regular sub- and
superscripts do.

Default: ` false  `

###  ` inline `

Forced inline (text) style in math.

This is the normal size for inline equations.

math  .  inline  (

[ content ](/docs/reference/foundations/content/) ,  cramped  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ sum_i x_i/2
        = inline(sum_i x_i/2) $
    

![Preview](/assets/docs/yhhyiAgPa8_SZLz7nNtNqAAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to size.

####  ` cramped `

[ bool ](/docs/reference/foundations/bool/)

Whether to impose a height restriction for exponents, like regular sub- and
superscripts do.

Default: ` false  `

###  ` script `

Forced script style in math.

This is the smaller size used in powers or sub- or superscripts.

math  .  script  (

[ content ](/docs/reference/foundations/content/) ,  cramped  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $sum_i x_i/2 = script(sum_i x_i/2)$
    

![Preview](/assets/docs/UAO0CCEy42RrRJk6xg_ljgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to size.

####  ` cramped `

[ bool ](/docs/reference/foundations/bool/)

Whether to impose a height restriction for exponents, like regular sub- and
superscripts do.

Default: ` true  `

###  ` sscript `

Forced second script style in math.

This is the smallest size, used in second-level sub- and superscripts (script
of the script).

math  .  sscript  (

[ content ](/docs/reference/foundations/content/) ,  cramped  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $sum_i x_i/2 = sscript(sum_i x_i/2)$
    

![Preview](/assets/docs/EpmDoJiJrfbN7kA0Km7ujwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to size.

####  ` cramped `

[ bool ](/docs/reference/foundations/bool/)

Whether to impose a height restriction for exponents, like regular sub- and
superscripts do.

Default: ` true  `

[ ![â](/assets/icons/16-arrow-right.svg) Roots  Previous page
](/docs/reference/math/roots/) [ ![â](/assets/icons/16-arrow-right.svg)
Stretch  Next page  ](/docs/reference/math/stretch/)

