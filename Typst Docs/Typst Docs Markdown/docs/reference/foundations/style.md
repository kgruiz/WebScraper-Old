  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Style ](/docs/reference/foundations/style/)

#  ` style `

Provides access to active styles.

**Deprecation planned.** Use [ context ](/docs/reference/context/ "context")
instead.

    
    
    #let thing(body) = style(styles => {
      let size = measure(body, styles)
      [Width of "#body" is #size.width]
    })
    
    #thing[Hey] \
    #thing[Welcome]
    

![Preview](/assets/docs/B9BBPtfgbYihKwTWFPTllQAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

style  (

[ function ](/docs/reference/foundations/function/)

)  -> [ content ](/docs/reference/foundations/content/)

###  ` func `

[ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

A function to call with the styles. Its return value is displayed in the
document.

This function is called once for each time the content returned by ` style `
appears in the document. That makes it possible to generate content that
depends on the style context it appears in.

[ ![â](/assets/icons/16-arrow-right.svg) String  Previous page
](/docs/reference/foundations/str/) [ ![â](/assets/icons/16-arrow-right.svg)
System  Next page  ](/docs/reference/foundations/sys/)

