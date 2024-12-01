  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Stretch ](/docs/reference/math/stretch/)

#  ` stretch ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Stretches a glyph.

This function can also be used to automatically stretch the base of an
attachment, so that it fits the top and bottom attachments.

Note that only some glyphs can be stretched, and which ones can depend on the
math font being used. However, most math fonts are the same in this regard.

    
    
    $ H stretch(=)^"define" U + p V $
    $ f : X stretch(->>, size: #150%)_"surjective" Y $
    $ x stretch(harpoons.ltrb, size: #3em) y
        stretch(\[, size: #150%) z $
    

![Preview](/assets/docs/s6743QhH3-etZ1y_QW-bLAAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

math  .  stretch  (

[ content ](/docs/reference/foundations/content/) ,  size  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The glyph to stretch.

###  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The size to stretch to, relative to the maximum size of the glyph and its
attachments.

Default: ` auto  `

[ ![â](/assets/icons/16-arrow-right.svg) Sizes  Previous page
](/docs/reference/math/sizes/) [ ![â](/assets/icons/16-arrow-right.svg)
Styles  Next page  ](/docs/reference/math/styles/)

