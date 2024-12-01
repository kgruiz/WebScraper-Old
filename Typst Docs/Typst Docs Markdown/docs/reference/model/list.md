  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Bullet List ](/docs/reference/model/list/)

#  ` list ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A bullet list.

Displays a sequence of items vertically, with each item introduced by a
marker.

##  Example

    
    
    Normal list.
    - Text
    - Math
    - Layout
    - ...
    
    Multiple lines.
    - This list item spans multiple
      lines because it is indented.
    
    Function call.
    #list(
      [Foundations],
      [Calculate],
      [Construct],
      [Data Loading],
    )
    

![Preview](/assets/docs/dGd96M9aTTHo-jKJ9y73kwAAAAAAAAAA.png)

##  Syntax

This functions also has dedicated syntax: Start a line with a hyphen, followed
by a space to create a list item. A list item can contain multiple paragraphs
and other block-level content. All content that is indented more than an
item's marker becomes part of that item.

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

list  (

tight  :  [ bool ](/docs/reference/foundations/bool/) ,  marker  :  [ content
](/docs/reference/foundations/content/) [ array
](/docs/reference/foundations/array/) [ function
](/docs/reference/foundations/function/) ,  indent  :  [ length
](/docs/reference/layout/length/) ,  body-indent  :  [ length
](/docs/reference/layout/length/) ,  spacing  :  [ auto
](/docs/reference/foundations/auto/) [ length
](/docs/reference/layout/length/) ,  ..  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` tight `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Defines the default [ spacing ](/docs/reference/model/list/#parameters-
spacing) of the list. If it is ` false  ` , the items are spaced apart with [
paragraph spacing ](/docs/reference/model/par/#parameters-spacing) . If it is
` true  ` , they use [ paragraph leading
](/docs/reference/model/par/#parameters-leading) instead. This makes the list
more compact, which can look better if the items are short.

In markup mode, the value of this parameter is determined based on whether
items are separated with a blank line. If items directly follow each other,
this is set to ` true  ` ; if items are separated by a blank line, this is set
to ` false  ` . The markup-defined tightness cannot be overridden with set
rules.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    - If a list has a lot of text, and
      maybe other inline content, it
      should not be tight anymore.
    
    - To make a list wide, simply insert
      a blank line between the items.
    

![Preview](/assets/docs/4FUPGE5Zxz4-Z1S-m_IFCQAAAAAAAAAA.png)

###  ` marker `

[ content ](/docs/reference/foundations/content/) or  [ array
](/docs/reference/foundations/array/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The marker which introduces each item.

Instead of plain content, you can also pass an array with multiple markers
that should be used for nested lists. If the list nesting depth exceeds the
number of markers, the markers are cycled. For total control, you may pass a
function that maps the list's nesting depth (starting from ` 0  ` ) to a
desired marker.

Default: ` (  [  â¢  ]  ,  [  â£  ]  ,  [  â  ]  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set list(marker: [--])
    - A more classic list
    - With en-dashes
    
    #set list(marker: ([â¢], [--]))
    - Top-level
      - Nested
      - Items
    - Items
    

![Preview](/assets/docs/rGFZOVIfGIEORB3iENBotQAAAAAAAAAA.png)

###  ` indent `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The indent of each item.

Default: ` 0pt  `

###  ` body-indent `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between the marker and the body of each item.

Default: ` 0.5em  `

###  ` spacing `

[ auto ](/docs/reference/foundations/auto/) or  [ length
](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The spacing between the items of the list.

If set to ` auto  ` , uses paragraph [ ` leading `
](/docs/reference/model/par/#parameters-leading) for tight lists and paragraph
[ ` spacing ` ](/docs/reference/model/par/#parameters-spacing) for wide (non-
tight) lists.

Default: ` auto  `

###  ` children `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The bullet list's children.

When using the list syntax, adjacent items are automatically collected into
lists, even through constructs like for loops.

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #for letter in "ABC" [
      - Letter #letter
    ]
    

![Preview](/assets/docs/scttBXkLjYOvlJchbuo00wAAAAAAAAAA.png)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` item ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A bullet list item.

list  .  item  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The item's body.

[ ![â](/assets/icons/16-arrow-right.svg) Bibliography  Previous page
](/docs/reference/model/bibliography/) [ ![â](/assets/icons/16-arrow-
right.svg) Cite  Next page  ](/docs/reference/model/cite/)

