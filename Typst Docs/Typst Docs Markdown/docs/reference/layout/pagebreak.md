  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Page Break ](/docs/reference/layout/pagebreak/)

#  ` pagebreak ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A manual page break.

Must not be used inside any containers.

##  Example

    
    
    The next page contains
    more details on compound theory.
    #pagebreak()
    
    == Compound Theory
    In 1984, the first ...
    

![Preview](/assets/docs/MJju6am_GVBgtJWStEY3AwAAAAAAAAAA.png)
![Preview](/assets/docs/MJju6am_GVBgtJWStEY3AwAAAAAAAAAB.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

pagebreak  (

weak  :  [ bool ](/docs/reference/foundations/bool/) ,  to  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` weak `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

If ` true  ` , the page break is skipped if the current page is already empty.

Default: ` false  `

###  ` to `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

If given, ensures that the next page will be an even/odd page, with an empty
page in between if necessary.

Variant  |  Details   
---|---  
` "  even  " ` |  Next page will be an even page.   
` "  odd  " ` |  Next page will be an odd page.   
  
Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(height: 30pt)
    
    First.
    #pagebreak(to: "odd")
    Third.
    

![Preview](/assets/docs/_4CDe0eaU4eyZtVUd1ArigAAAAAAAAAA.png)
![Preview](/assets/docs/_4CDe0eaU4eyZtVUd1ArigAAAAAAAAAB.png)
![Preview](/assets/docs/_4CDe0eaU4eyZtVUd1ArigAAAAAAAAAC.png)

[ ![â](/assets/icons/16-arrow-right.svg) Page  Previous page
](/docs/reference/layout/page/) [ ![â](/assets/icons/16-arrow-right.svg)
Place  Next page  ](/docs/reference/layout/place/)

