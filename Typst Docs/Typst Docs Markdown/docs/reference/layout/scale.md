  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Scale ](/docs/reference/layout/scale/)

#  ` scale ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Scales content without affecting layout.

Lets you mirror content by specifying a negative scale on a single axis.

##  Example

    
    
    #set align(center)
    #scale(x: -100%)[This is mirrored.]
    #scale(x: -100%, reflow: true)[This is mirrored.]
    

![Preview](/assets/docs/ShH8NomqhuEYrrdUbApjaAAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

scale  (

[ auto ](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) [ ratio ](/docs/reference/layout/ratio/) ,
x  :  [ auto ](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) [ ratio ](/docs/reference/layout/ratio/) ,
y  :  [ auto ](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) [ ratio ](/docs/reference/layout/ratio/) ,
origin  :  [ alignment ](/docs/reference/layout/alignment/) ,  reflow  :  [
bool ](/docs/reference/foundations/bool/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` factor `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/) or  [ ratio ](/docs/reference/layout/ratio/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The scaling factor for both axes, as a positional argument. This is just an
optional shorthand notation for setting ` x ` and ` y ` to the same value.

Default: ` 100%  `

###  ` x `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/) or  [ ratio ](/docs/reference/layout/ratio/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The horizontal scaling factor.

The body will be mirrored horizontally if the parameter is negative.

Default: ` 100%  `

###  ` y `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/) or  [ ratio ](/docs/reference/layout/ratio/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The vertical scaling factor.

The body will be mirrored vertically if the parameter is negative.

Default: ` 100%  `

###  ` origin `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The origin of the transformation.

Default: ` center  +  horizon `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B
    

![Preview](/assets/docs/dT49GhvKfj-Kj_N_KdtBqQAAAAAAAAAA.png)

###  ` reflow `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the scaling impacts the layout.

If set to ` false  ` , the scaled content will be allowed to overlap other
content. If set to ` true  ` , it will compute the new size of the scaled
content and adjust the layout accordingly.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    Hello #scale(x: 20%, y: 40%, reflow: true)[World]!
    

![Preview](/assets/docs/8qEVgn4pU_8oLmlhe4cX2QAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to scale.

[ ![â](/assets/icons/16-arrow-right.svg) Rotate  Previous page
](/docs/reference/layout/rotate/) [ ![â](/assets/icons/16-arrow-right.svg)
Skew  Next page  ](/docs/reference/layout/skew/)

