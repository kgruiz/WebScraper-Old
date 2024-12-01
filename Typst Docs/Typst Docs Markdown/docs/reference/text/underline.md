  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Underline ](/docs/reference/text/underline/)

#  ` underline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Underlines text.

##  Example

    
    
    This is #underline[important].
    

![Preview](/assets/docs/xV-Fy8zwdVIfyHyOpdk_9AAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

underline  (

stroke  :  [ auto ](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  offset  :  [ auto
](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) ,  extent  :  [ length
](/docs/reference/layout/length/) ,  evade  :  [ bool
](/docs/reference/foundations/bool/) ,  background  :  [ bool
](/docs/reference/foundations/bool/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` stroke `

[ auto ](/docs/reference/foundations/auto/) or  [ length
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

How to [ stroke ](/docs/reference/visualize/stroke/ "stroke") the line.

If set to ` auto  ` , takes on the text's color and a thickness defined in the
current font.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    Take #underline(
      stroke: 1.5pt + red,
      offset: 2pt,
      [care],
    )
    

![Preview](/assets/docs/tbLKc9iYaghdhC9NcJaJOQAAAAAAAAAA.png)

###  ` offset `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The position of the line relative to the baseline, read from the font tables
if ` auto  ` .

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #underline(offset: 5pt)[
      The Tale Of A Faraway Line I
    ]
    

![Preview](/assets/docs/p2tUWXcYq-E_ZbDtwzCDrAAAAAAAAAAA.png)

###  ` extent `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The amount by which to extend the line beyond (or within if negative) the
content.

Default: ` 0pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #align(center,
      underline(extent: 2pt)[Chapter 1]
    )
    

![Preview](/assets/docs/tbT2BOLPtcXW-alQPb8q6wAAAAAAAAAA.png)

###  ` evade `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the line skips sections in which it would collide with the glyphs.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    This #underline(evade: true)[is great].
    This #underline(evade: false)[is less great].
    

![Preview](/assets/docs/PaJc2qUpoh1s97E6NZYz0QAAAAAAAAAA.png)

###  ` background `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the line is placed behind the content it underlines.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set underline(stroke: (thickness: 1em, paint: maroon, cap: "round"))
    #underline(background: true)[This is stylized.] \
    #underline(background: false)[This is partially hidden.]
    

![Preview](/assets/docs/W98M7AlnFoSVnlt9g5bIsAAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to underline.

[ ![â](/assets/icons/16-arrow-right.svg) Text  Previous page
](/docs/reference/text/text/) [ ![â](/assets/icons/16-arrow-right.svg)
Uppercase  Next page  ](/docs/reference/text/upper/)

