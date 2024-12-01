  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Layout ](/docs/reference/layout/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Direction ](/docs/reference/layout/direction/)

#  direction

The four directions into which content can be laid out.

Possible values are:

  * ` ltr ` : Left to right. 
  * ` rtl ` : Right to left. 
  * ` ttb ` : Top to bottom. 
  * ` btt ` : Bottom to top. 

These values are available globally and also in the direction type's scope, so
you can write either of the following two:

    
    
    #stack(dir: rtl)[A][B][C]
    #stack(dir: direction.rtl)[A][B][C]
    

![Preview](/assets/docs/43rZPR36KLZcf8RLRLjX0wAAAAAAAAAA.png)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` axis `

The axis this direction belongs to, either ` "horizontal"  ` or ` "vertical"
` .

self  .  axis  (

)

    
    
    #ltr.axis() \
    #ttb.axis()
    

![Preview](/assets/docs/JrNsSPuIGz5d-HyvpKlmRAAAAAAAAAAA.png)

###  ` start `

The start point of this direction, as an alignment.

self  .  start  (

)  -> [ alignment ](/docs/reference/layout/alignment/)

    
    
    #ltr.start() \
    #rtl.start() \
    #ttb.start() \
    #btt.start()
    

![Preview](/assets/docs/N9RQCkuykNN4FsJgRg06GgAAAAAAAAAA.png)

###  ` end `

The end point of this direction, as an alignment.

self  .  end  (

)  -> [ alignment ](/docs/reference/layout/alignment/)

    
    
    #ltr.end() \
    #rtl.end() \
    #ttb.end() \
    #btt.end()
    

![Preview](/assets/docs/NDjcpeKFmKqoCGermlx1dAAAAAAAAAAA.png)

###  ` inv `

The inverse direction.

self  .  inv  (

)  -> [ direction ](/docs/reference/layout/direction/)

    
    
    #ltr.inv() \
    #rtl.inv() \
    #ttb.inv() \
    #btt.inv()
    

![Preview](/assets/docs/kBDvCk2AJ9dPd5ZUJjxcOgAAAAAAAAAA.png)

[ ![â](/assets/icons/16-arrow-right.svg) Columns  Previous page
](/docs/reference/layout/columns/) [ ![â](/assets/icons/16-arrow-right.svg)
Fraction  Next page  ](/docs/reference/layout/fraction/)

