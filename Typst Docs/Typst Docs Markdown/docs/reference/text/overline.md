  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Overline ](/docs/reference/text/overline/)

#  ` overline ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Adds a line over text.

##  Example

    
    
    #overline[A line over text.]
    

![Preview](/assets/docs/BQmJqK4pMIkZOu3QEFxsZAAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

overline  (

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

    
    
    #set text(fill: olive)
    #overline(
      stroke: green.darken(20%),
      offset: -12pt,
      [The Forest Theme],
    )
    

![Preview](/assets/docs/jXEAZxd9NFnCtgcbDVlzIQAAAAAAAAAA.png)

###  ` offset `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The position of the line relative to the baseline. Read from the font tables
if ` auto  ` .

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #overline(offset: -1.2em)[
      The Tale Of A Faraway Line II
    ]
    

![Preview](/assets/docs/AUBIhMOFPefmpe2mV6TTrgAAAAAAAAAA.png)

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

    
    
    #set overline(extent: 4pt)
    #set underline(extent: 4pt)
    #overline(underline[Typography Today])
    

![Preview](/assets/docs/11dFhng73-PPcouY1kGuxAAAAAAAAAAA.png)

###  ` evade `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the line skips sections in which it would collide with the glyphs.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #overline(
      evade: false,
      offset: -7.5pt,
      stroke: 1pt,
      extent: 3pt,
      [Temple],
    )
    

![Preview](/assets/docs/4typb8n1rt84GcGKwEvmQAAAAAAAAAAA.png)

###  ` background `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the line is placed behind the content it overlines.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set overline(stroke: (thickness: 1em, paint: maroon, cap: "round"))
    #overline(background: true)[This is stylized.] \
    #overline(background: false)[This is partially hidden.]
    

![Preview](/assets/docs/J1qF0GrkgS3hBoWTovrZ_AAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to add a line over.

[ ![â](/assets/icons/16-arrow-right.svg) Lowercase  Previous page
](/docs/reference/text/lower/) [ ![â](/assets/icons/16-arrow-right.svg) Raw
Text / Code  Next page  ](/docs/reference/text/raw/)

