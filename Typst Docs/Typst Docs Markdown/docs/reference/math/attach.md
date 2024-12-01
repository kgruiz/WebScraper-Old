  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Attach ](/docs/reference/math/attach)

#  Attach

Subscript, superscripts, and limits.

Attachments can be displayed either as sub/superscripts, or limits. Typst
automatically decides which is more suitable depending on the base, but you
can also control this manually with the ` scripts ` and ` limits ` functions.

If you want the base to stretch to fit long top and bottom attachments (for
example, an arrow with text above it), use the [ ` stretch `
](/docs/reference/math/stretch/) function.

##  Example

    
    
    $ sum_(i=0)^n a_i = 2^(1+i) $
    

![Preview](/assets/docs/QRQ31w2n3rdGvD8KZ-ysUQAAAAAAAAAA.png)

##  Syntax

This function also has dedicated syntax for attachments after the base: Use
the underscore ( ` _ ` ) to indicate a subscript i.e. bottom attachment and
the hat ( ` ^ ` ) to indicate a superscript i.e. top attachment.

##  Functions

###  ` attach ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A base with optional attachments.

math  .  attach  (

[ content ](/docs/reference/foundations/content/) ,  t  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  b  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  tl  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  bl  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  tr  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,  br  :  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ attach(
      Pi, t: alpha, b: beta,
      tl: 1, tr: 2+3, bl: 4+5, br: 6,
    ) $
    

![Preview](/assets/docs/hP1S-FGMSbXQwhVNN2LoxQAAAAAAAAAA.png)

####  ` base `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base to which things are attached.

####  ` t `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The top attachment, smartly positioned at top-right or above the base.

You can wrap the base in ` limits  (  )  ` or ` scripts  (  )  ` to override
the smart positioning.

Default: ` none  `

####  ` b `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The bottom attachment, smartly positioned at the bottom-right or below the
base.

You can wrap the base in ` limits  (  )  ` or ` scripts  (  )  ` to override
the smart positioning.

Default: ` none  `

####  ` tl `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The top-left attachment (before the base).

Default: ` none  `

####  ` bl `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The bottom-left attachment (before base).

Default: ` none  `

####  ` tr `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The top-right attachment (after the base).

Default: ` none  `

####  ` br `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The bottom-right attachment (after the base).

Default: ` none  `

###  ` scripts ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Forces a base to display attachments as scripts.

math  .  scripts  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ scripts(sum)_1^2 != sum_1^2 $
    

![Preview](/assets/docs/yVmcJ82GwTKFuNMU4shSjAAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base to attach the scripts to.

###  ` limits ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Forces a base to display attachments as limits.

math  .  limits  (

[ content ](/docs/reference/foundations/content/) ,  inline  :  [ bool
](/docs/reference/foundations/bool/) ,

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ limits(A)_1^2 != A_1^2 $
    

![Preview](/assets/docs/_7kc3fTt948a-U1_9wdyzgAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base to attach the limits to.

####  ` inline `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to also force limits in inline equations.

When applying limits globally (e.g., through a show rule), it is typically a
good idea to disable this.

Default: ` true  `

[ ![â](/assets/icons/16-arrow-right.svg) Accent  Previous page
](/docs/reference/math/accent/) [ ![â](/assets/icons/16-arrow-right.svg)
Binomial  Next page  ](/docs/reference/math/binom/)

