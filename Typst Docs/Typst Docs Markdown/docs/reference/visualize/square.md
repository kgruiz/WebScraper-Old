  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Visualize ](/docs/reference/visualize/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Square ](/docs/reference/visualize/square/)

#  ` square ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A square with optional content.

##  Example

    
    
    // Without content.
    #square(size: 40pt)
    
    // With content.
    #square[
      Automatically \
      sized to fit.
    ]
    

![Preview](/assets/docs/DjWoCmaGrn_miIIjOqjv7gAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

square  (

size  :  [ auto ](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) ,  width  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  height  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  fill  :  [ none
](/docs/reference/foundations/none/) [ color
](/docs/reference/visualize/color/) [ gradient
](/docs/reference/visualize/gradient/) [ pattern
](/docs/reference/visualize/pattern/) ,  stroke  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  radius  :  [ relative
](/docs/reference/layout/relative/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  inset  :  [ relative
](/docs/reference/layout/relative/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  outset  :  [ relative
](/docs/reference/layout/relative/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The square's side length. This is mutually exclusive with ` width ` and `
height ` .

Default: ` auto  `

###  ` width `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The square's width. This is mutually exclusive with ` size ` and ` height ` .

In contrast to ` size ` , this can be relative to the parent container's
width.

Default: ` auto  `

###  ` height `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The square's height. This is mutually exclusive with ` size ` and ` width ` .

In contrast to ` size ` , this can be relative to the parent container's
height.

Default: ` auto  `

###  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ pattern
](/docs/reference/visualize/pattern/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to fill the square. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-fill) for more details.

Default: ` none  `

###  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to stroke the square. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-stroke) for more details.

Default: ` auto  `

###  ` radius `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to round the square's corners. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-radius) for more details.

Default: ` (  :  )  `

###  ` inset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to pad the square's content. See the [ box's documentation
](/docs/reference/layout/box/#parameters-inset) for more details.

Default: ` 0%  +  5pt  `

###  ` outset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to expand the square's size without affecting the layout. See the [
box's documentation ](/docs/reference/layout/box/#parameters-outset) for more
details.

Default: ` (  :  )  `

###  ` body `

[ none ](/docs/reference/foundations/none/) or  [ content
](/docs/reference/foundations/content/)

Positional

Question mark

Positional parameters are specified in order, without names.

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The content to place into the square. The square expands to fit this content,
keeping the 1-1 aspect ratio.

When this is omitted, the square takes on a default size of at most ` 30pt  `
.

Default: ` none  `

[ ![â](/assets/icons/16-arrow-right.svg) Rectangle  Previous page
](/docs/reference/visualize/rect/) [ ![â](/assets/icons/16-arrow-right.svg)
Stroke  Next page  ](/docs/reference/visualize/stroke/)

