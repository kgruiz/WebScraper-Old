  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Accent ](/docs/reference/math/accent/)

#  ` accent ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Attaches an accent to a base.

##  Example

    
    
    $grave(a) = accent(a, `)$ \
    $arrow(a) = accent(a, arrow)$ \
    $tilde(a) = accent(a, \u{0303})$
    

![Preview](/assets/docs/wdLZED2cvtXKAU75vKtAKwAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

math  .  accent  (

[ content ](/docs/reference/foundations/content/) ,  [ str
](/docs/reference/foundations/str/) [ content
](/docs/reference/foundations/content/) ,  size  :  [ auto
](/docs/reference/foundations/auto/) [ relative
](/docs/reference/layout/relative/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` base `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The base to which the accent is applied. May consist of multiple letters.

![](/assets/icons/16-arrow-right.svg) View example

    
    
    $arrow(A B C)$
    

![Preview](/assets/docs/aVpZuZcTglBCvF8kbjxN7AAAAAAAAAAA.png)

###  ` accent `

[ str ](/docs/reference/foundations/str/) or  [ content
](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The accent to apply to the base.

Supported accents include:

Accent  |  Name  |  Codepoint   
---|---|---  
Grave  |  ` grave ` |  ` ` `  
Acute  |  ` acute ` |  ` Â´ `  
Circumflex  |  ` hat ` |  ` ^ `  
Tilde  |  ` tilde ` |  ` ~ `  
Macron  |  ` macron ` |  ` Â¯ `  
Dash  |  ` dash ` |  ` â¾ `  
Breve  |  ` breve ` |  ` Ë `  
Dot  |  ` dot ` |  ` . `  
Double dot, Diaeresis  |  ` dot.double ` , ` diaer ` |  ` Â¨ `  
Triple dot  |  ` dot.triple ` |  ` â `  
Quadruple dot  |  ` dot.quad ` |  ` â `  
Circle  |  ` circle ` |  ` â `  
Double acute  |  ` acute.double ` |  ` Ë `  
Caron  |  ` caron ` |  ` Ë `  
Right arrow  |  ` arrow ` , ` -> ` |  ` â `  
Left arrow  |  ` arrow.l ` , ` <- ` |  ` â `  
Left/Right arrow  |  ` arrow.l.r ` |  ` â `  
Right harpoon  |  ` harpoon ` |  ` â `  
Left harpoon  |  ` harpoon.lt ` |  ` â¼ `  
  
###  ` size `

[ auto ](/docs/reference/foundations/auto/) or  [ relative
](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The size of the accent, relative to the width of the base.

Default: ` auto  `

[ ![â](/assets/icons/16-arrow-right.svg) Math  Previous page
](/docs/reference/math/) [ ![â](/assets/icons/16-arrow-right.svg) Attach
Next page  ](/docs/reference/math/attach/)

