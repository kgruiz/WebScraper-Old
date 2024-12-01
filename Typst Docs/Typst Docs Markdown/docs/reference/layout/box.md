  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Box ](/docs/reference/layout/box/)

#  ` box ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

An inline-level container that sizes content.

All elements except inline math, text, and boxes are block-level and cannot
occur inside of a paragraph. The box function can be used to integrate such
elements into a paragraph. Boxes take the size of their contents by default
but can also be sized explicitly.

##  Example

    
    
    Refer to the docs
    #box(
      height: 9pt,
      image("docs.svg")
    )
    for more information.
    

![Preview](/assets/docs/eB9NAzu2xk-O1miffozwKQAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

box  (

width  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  height  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  baseline  :  [ relative
](/docs/reference/layout/relative/) ,  fill  :  [ none
](/docs/reference/foundations/none/) [ color
](/docs/reference/visualize/color/) [ gradient
](/docs/reference/visualize/gradient/) [ pattern
](/docs/reference/visualize/pattern/) ,  stroke  :  [ none
](/docs/reference/foundations/none/) [ length
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
](/docs/reference/foundations/dictionary/) ,  clip  :  [ bool
](/docs/reference/foundations/bool/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` width `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The width of the box.

Boxes can have [ fractional ](/docs/reference/layout/fraction/) widths, as the
example below demonstrates.

_Note:_ Currently, only boxes and only their widths might be fractionally
sized within paragraphs. Support for fractionally sized images, shapes, and
more might be added in the future.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    Line in #box(width: 1fr, line(length: 100%)) between.
    

![Preview](/assets/docs/dzJroqkPcQ8j1yD6nZSE0AAAAAAAAAAA.png)

###  ` height `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The height of the box.

Default: ` auto  `

###  ` baseline `

[ relative ](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

An amount to shift the box's baseline by.

Default: ` 0%  +  0pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    Image: #box(baseline: 40%, image("tiger.jpg", width: 2cm)).
    

![Preview](/assets/docs/jNZmXcLZQWKojb5Yhz3uEQAAAAAAAAAA.png)

###  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ pattern
](/docs/reference/visualize/pattern/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The box's background color. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-fill) for more details.

Default: ` none  `

###  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
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

The box's border color. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-stroke) for more details.

Default: ` (  :  )  `

###  ` radius `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to round the box's corners. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-radius) for more details.

Default: ` (  :  )  `

###  ` inset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to pad the box's content.

_Note:_ When the box contains text, its exact size depends on the current [
text edges ](/docs/reference/text/text/#parameters-top-edge) .

Default: ` (  :  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #rect(inset: 0pt)[Tight]
    

![Preview](/assets/docs/GVDpvIL_te6KlSASD3i2EQAAAAAAAAAA.png)

###  ` outset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to expand the box's size without affecting the layout.

This is useful to prevent padding from affecting line layout. For a
generalized version of the example below, see the documentation for the [ raw
text's block parameter ](/docs/reference/text/raw/#parameters-block) .

Default: ` (  :  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    An inline
    #box(
      fill: luma(235),
      inset: (x: 3pt, y: 0pt),
      outset: (y: 3pt),
      radius: 2pt,
    )[rectangle].
    

![Preview](/assets/docs/68KQkm_HskMy1aDAbQWYdwAAAAAAAAAA.png)

###  ` clip `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to clip the content inside the box.

Clipping is useful when the box's content is larger than the box itself, as
any content that exceeds the box's bounds will be hidden.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #box(
      width: 50pt,
      height: 50pt,
      clip: true,
      image("tiger.jpg", width: 100pt, height: 100pt)
    )
    

![Preview](/assets/docs/RAY1IirASCSdH0pM4209bwAAAAAAAAAA.png)

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

The contents of the box.

Default: ` none  `

[ ![â](/assets/icons/16-arrow-right.svg) Block  Previous page
](/docs/reference/layout/block/) [ ![â](/assets/icons/16-arrow-right.svg)
Column Break  Next page  ](/docs/reference/layout/colbreak/)

