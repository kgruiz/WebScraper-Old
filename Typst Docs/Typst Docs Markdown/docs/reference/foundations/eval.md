  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Evaluate ](/docs/reference/foundations/eval/)

#  ` eval `

Evaluates a string as Typst code.

This function should only be used as a last resort.

##  Example

    
    
    #eval("1 + 1") \
    #eval("(1, 2, 3, 4)").len() \
    #eval("*Markup!*", mode: "markup") \
    

![Preview](/assets/docs/KZfqDZ_7V1ElK4um94vvjwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

eval  (

[ str ](/docs/reference/foundations/str/) ,  mode  :  [ str
](/docs/reference/foundations/str/) ,  scope  :  [ dictionary
](/docs/reference/foundations/dictionary/) ,

)  -> any

###  ` source `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

A string of Typst code to evaluate.

###  ` mode `

[ str ](/docs/reference/foundations/str/)

The [ syntactical mode ](/docs/reference/syntax/#modes) in which the string is
parsed.

Variant  |  Details   
---|---  
` "  code  " ` |  Evaluate as code, as after a hash.   
` "  markup  " ` |  Evaluate as markup, like in a Typst file.   
` "  math  " ` |  Evaluate as math, as in an equation.   
  
Default: ` "code"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #eval("= Heading", mode: "markup")
    #eval("1_2^3", mode: "math")
    

![Preview](/assets/docs/4OYmfbro6ZT1td5j4R5wyAAAAAAAAAAA.png)

###  ` scope `

[ dictionary ](/docs/reference/foundations/dictionary/)

A scope of definitions that are made available.

Default: ` (  :  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #eval("x + 1", scope: (x: 2)) \
    #eval(
      "abc/xyz",
      mode: "math",
      scope: (
        abc: $a + b + c$,
        xyz: $x + y + z$,
      ),
    )
    

![Preview](/assets/docs/0vD-OzSZwxX0Gqmm8_Sk9AAAAAAAAAAA.png)

[ ![â](/assets/icons/16-arrow-right.svg) Duration  Previous page
](/docs/reference/foundations/duration/) [ ![â](/assets/icons/16-arrow-
right.svg) Float  Next page  ](/docs/reference/foundations/float/)

