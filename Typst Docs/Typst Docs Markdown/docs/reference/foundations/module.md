  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Module ](/docs/reference/foundations/module/)

#  module

An evaluated module, either built-in or resulting from a file.

You can access definitions from the module using [ field access notation
](/docs/reference/scripting/#fields) and interact with it using the [ import
and include syntaxes ](/docs/reference/scripting/#modules) . Alternatively, it
is possible to convert a module to a dictionary, and therefore access its
contents dynamically, using the [ dictionary constructor
](/docs/reference/foundations/dictionary/#constructor) .

##  Example

    
    
    #import "utils.typ"
    #utils.add(2, 5)
    
    #import utils: sub
    #sub(1, 4)
    

![Preview](/assets/docs/itOPaialNOb62A81RHFv_wAAAAAAAAAA.png)

[ ![â](/assets/icons/16-arrow-right.svg) Label  Previous page
](/docs/reference/foundations/label/) [ ![â](/assets/icons/16-arrow-
right.svg) None  Next page  ](/docs/reference/foundations/none/)

