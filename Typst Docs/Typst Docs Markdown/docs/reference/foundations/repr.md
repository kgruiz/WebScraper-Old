  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Representation ](/docs/reference/foundations/repr/)

#  ` repr `

Returns the string representation of a value.

When inserted into content, most values are displayed as this representation
in monospace with syntax-highlighting. The exceptions are ` none  ` ,
integers, floats, strings, content, and functions.

**Note:** This function is for debugging purposes. Its output should not be
considered stable and may change at any time!

##  Example

    
    
    #none vs #repr(none) \
    #"hello" vs #repr("hello") \
    #(1, 2) vs #repr((1, 2)) \
    #[*Hi*] vs #repr([*Hi*])
    

![Preview](/assets/docs/hOvQAQDTPr3WAVu4x8HkgwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

repr  (

any

)  -> [ str ](/docs/reference/foundations/str/)

###  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value whose string representation to produce.

[ ![â](/assets/icons/16-arrow-right.svg) Regex  Previous page
](/docs/reference/foundations/regex/) [ ![â](/assets/icons/16-arrow-
right.svg) Selector  Next page  ](/docs/reference/foundations/selector/)

