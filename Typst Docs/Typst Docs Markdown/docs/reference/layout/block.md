  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Block ](/docs/reference/layout/block/)

#  ` block ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A block-level container.

Such a container can be used to separate content, size it, and give it a
background or border.

##  Examples

With a block, you can give a background to content while still allowing it to
break across multiple pages.

    
    
    #set page(height: 100pt)
    #block(
      fill: luma(230),
      inset: 8pt,
      radius: 4pt,
      lorem(30),
    )
    

![Preview](/assets/docs/ANNbdXVxvjEeHE66qUzAcwAAAAAAAAAA.png)
![Preview](/assets/docs/ANNbdXVxvjEeHE66qUzAcwAAAAAAAAAB.png)

Blocks are also useful to force elements that would otherwise be inline to
become block-level, especially when writing show rules.

    
    
    #show heading: it => it.body
    = Blockless
    More text.
    
    #show heading: it => block(it.body)
    = Blocky
    More text.
    

![Preview](/assets/docs/oxrD9vHAqcb-9gLEkFF_PQAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

block  (

width  :  [ auto ](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,  height  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  breakable  :  [ bool
](/docs/reference/foundations/bool/) ,  fill  :  [ none
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
](/docs/reference/foundations/dictionary/) ,  spacing  :  [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  above  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  below  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) [ fraction
](/docs/reference/layout/fraction/) ,  clip  :  [ bool
](/docs/reference/foundations/bool/) ,  sticky  :  [ bool
](/docs/reference/foundations/bool/) ,  [ none
](/docs/reference/foundations/none/) [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` width `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The block's width.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set align(center)
    #block(
      width: 60%,
      inset: 8pt,
      fill: silver,
      lorem(10),
    )
    

![Preview](/assets/docs/rmTSlZT-FzVZcPQGVLOIiwAAAAAAAAAA.png)

###  ` height `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The block's height. When the height is larger than the remaining space on a
page and [ ` breakable ` ](/docs/reference/layout/block/#parameters-breakable)
is ` true  ` , the block will continue on the next page with the remaining
height.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(height: 80pt)
    #set align(center)
    #block(
      width: 80%,
      height: 150%,
      fill: aqua,
    )
    

![Preview](/assets/docs/lezx_tGBIjN0y72kerj7yQAAAAAAAAAA.png)
![Preview](/assets/docs/lezx_tGBIjN0y72kerj7yQAAAAAAAAAB.png)

###  ` breakable `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the block can be broken and continue on the next page.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(height: 80pt)
    The following block will
    jump to its own page.
    #block(
      breakable: false,
      lorem(15),
    )
    

![Preview](/assets/docs/I4HMzOAjAUbW-RK0a_YVHAAAAAAAAAAA.png)
![Preview](/assets/docs/I4HMzOAjAUbW-RK0a_YVHAAAAAAAAAAB.png)

###  ` fill `

[ none ](/docs/reference/foundations/none/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ pattern
](/docs/reference/visualize/pattern/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The block's background color. See the [ rectangle's documentation
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

The block's border color. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-stroke) for more details.

Default: ` (  :  )  `

###  ` radius `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to round the block's corners. See the [ rectangle's documentation
](/docs/reference/visualize/rect/#parameters-radius) for more details.

Default: ` (  :  )  `

###  ` inset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to pad the block's content. See the [ box's documentation
](/docs/reference/layout/box/#parameters-inset) for more details.

Default: ` (  :  )  `

###  ` outset `

[ relative ](/docs/reference/layout/relative/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How much to expand the block's size without affecting the layout. See the [
box's documentation ](/docs/reference/layout/box/#parameters-outset) for more
details.

Default: ` (  :  )  `

###  ` spacing `

[ relative ](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing around the block. When ` auto  ` , inherits the paragraph [ `
spacing ` ](/docs/reference/model/par/#parameters-spacing) .

For two adjacent blocks, the larger of the first block's ` above ` and the
second block's ` below ` spacing wins. Moreover, block spacing takes
precedence over paragraph [ ` spacing `
](/docs/reference/model/par/#parameters-spacing) .

Note that this is only a shorthand to set ` above ` and ` below ` to the same
value. Since the values for ` above ` and ` below ` might differ, a [ context
](/docs/reference/context/ "context") block only provides access to ` block  .
above ` and ` block  .  below ` , not to ` block  .  spacing ` directly.

This property can be used in combination with a show rule to adjust the
spacing around arbitrary block-level elements.

Default: ` 1.2em  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set align(center)
    #show math.equation: set block(above: 8pt, below: 16pt)
    
    This sum of $x$ and $y$:
    $ x + y = z $
    A second paragraph.
    

![Preview](/assets/docs/-Z0A6wte5TbEZ6mEwTPvngAAAAAAAAAA.png)

###  ` above `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between this block and its predecessor.

Default: ` auto  `

###  ` below `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/) or  [ fraction
](/docs/reference/layout/fraction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between this block and its successor.

Default: ` auto  `

###  ` clip `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to clip the content inside the block.

Clipping is useful when the block's content is larger than the block itself,
as any content that exceeds the block's bounds will be hidden.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #block(
      width: 50pt,
      height: 50pt,
      clip: true,
      image("tiger.jpg", width: 100pt, height: 100pt)
    )
    

![Preview](/assets/docs/VV4XHW5eLH_lso6MwHK6pQAAAAAAAAAA.png)

###  ` sticky `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether this block must stick to the following one, with no break in between.

This is, by default, set on heading blocks to prevent orphaned headings at the
bottom of the page.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    // Disable stickiness of headings.
    #show heading: set block(sticky: false)
    #lorem(20)
    
    = Chapter
    #lorem(10)
    

![Preview](/assets/docs/9rTrIlbIWN6fRV2-gOoijQAAAAAAAAAA.png)
![Preview](/assets/docs/9rTrIlbIWN6fRV2-gOoijQAAAAAAAAAB.png)

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

The contents of the block.

Default: ` none  `

[ ![â](/assets/icons/16-arrow-right.svg) Angle  Previous page
](/docs/reference/layout/angle/) [ ![â](/assets/icons/16-arrow-right.svg)
Box  Next page  ](/docs/reference/layout/box/)

