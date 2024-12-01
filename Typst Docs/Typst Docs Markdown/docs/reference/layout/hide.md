  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Hide ](/docs/reference/layout/hide/)

#  ` hide ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Hides content without affecting layout.

The ` hide ` function allows you to hide content while the layout still 'sees'
it. This is useful to create whitespace that is exactly as large as some
content. It may also be useful to redact content because its arguments are not
included in the output.

##  Example

    
    
    Hello Jane \
    #hide[Hello] Joe
    

![Preview](/assets/docs/w0ioP6Ne87hOMXgpgPJirgAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

hide  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to hide.

[ ![â](/assets/icons/16-arrow-right.svg) Grid  Previous page
](/docs/reference/layout/grid/) [ ![â](/assets/icons/16-arrow-right.svg)
Layout  Next page  ](/docs/reference/layout/layout/)

