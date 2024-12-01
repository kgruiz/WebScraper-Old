  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Small Capitals ](/docs/reference/text/smallcaps/)

#  ` smallcaps ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Displays text in small capitals.

##  Example

    
    
    Hello \
    #smallcaps[Hello]
    

![Preview](/assets/docs/2GDSP4AltxmHWBvxVXZrwQAAAAAAAAAA.png)

##  Smallcaps fonts

By default, this enables the OpenType ` smcp ` feature for the font. Not all
fonts support this feature. Sometimes smallcaps are part of a dedicated font.
This is, for example, the case for the _Latin Modern_ family of fonts. In
those cases, you can use a show-set rule to customize the appearance of the
text in smallcaps:

    
    
    #show smallcaps: set text(font: "Latin Modern Roman Caps")
    

In the future, this function will support synthesizing smallcaps from normal
letters, but this is not yet implemented.

##  Smallcaps headings

You can use a [ show rule ](/docs/reference/styling/#show-rules) to apply
smallcaps formatting to all your headings. In the example below, we also
center-align our headings and disable the standard bold font.

    
    
    #set par(justify: true)
    #set heading(numbering: "I.")
    
    #show heading: smallcaps
    #show heading: set align(center)
    #show heading: set text(
      weight: "regular"
    )
    
    = Introduction
    #lorem(40)
    

![Preview](/assets/docs/f0e4HVzW7NKFp4uqk6LvqgAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

smallcaps  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to display in small capitals.

[ ![â](/assets/icons/16-arrow-right.svg) Raw Text / Code  Previous page
](/docs/reference/text/raw/) [ ![â](/assets/icons/16-arrow-right.svg)
Smartquote  Next page  ](/docs/reference/text/smartquote/)

