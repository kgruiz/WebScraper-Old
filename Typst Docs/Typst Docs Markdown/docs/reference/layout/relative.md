  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Relative Length ](/docs/reference/layout/relative/)

#  relative

A length in relation to some known length.

This type is a combination of a [ length ](/docs/reference/layout/length/
"length") with a [ ratio ](/docs/reference/layout/ratio/ "ratio") . It results
from addition and subtraction of a length and a ratio. Wherever a relative
length is expected, you can also use a bare length or ratio.

##  Example

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio
    

![Preview](/assets/docs/eMTS_wIJ-8rLzP6A-A6wPAAAAAAAAAAA.png)

A relative length has the following fields:

  * ` length ` : Its length component. 
  * ` ratio ` : Its ratio component. 

[ ![â](/assets/icons/16-arrow-right.svg) Ratio  Previous page
](/docs/reference/layout/ratio/) [ ![â](/assets/icons/16-arrow-right.svg)
Repeat  Next page  ](/docs/reference/layout/repeat/)

