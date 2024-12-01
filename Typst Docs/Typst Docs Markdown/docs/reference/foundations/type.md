  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Type ](/docs/reference/foundations/type/)

#  type

Describes a kind of value.

To style your document, you need to work with values of different kinds:
Lengths specifying the size of your elements, colors for your text and shapes,
and more. Typst categorizes these into clearly defined _types_ and tells you
where it expects which type of value.

Apart from basic types for numeric values and [ typical
](/docs/reference/foundations/int/) [ types
](/docs/reference/foundations/float/) [ known
](/docs/reference/foundations/str/) [ from
](/docs/reference/foundations/array/) [ programming
](/docs/reference/foundations/dictionary/) languages, Typst provides a special
type for [ _content._ ](/docs/reference/foundations/content/) A value of this
type can hold anything that you can enter into your document: Text, elements
like headings and shapes, and style information.

##  Example

    
    
    #let x = 10
    #if type(x) == int [
      #x is an integer!
    ] else [
      #x is another value...
    ]
    
    An image is of type
    #type(image("glacier.jpg")).
    

![Preview](/assets/docs/dTjHaEMO5150e0-XVg1OzwAAAAAAAAAA.png)

The type of ` 10 ` is ` int ` . Now, what is the type of ` int ` or even `
type ` ?

    
    
    #type(int) \
    #type(type)
    

![Preview](/assets/docs/HqIgZy_wqBbnboRlZ-Iv4AAAAAAAAAAA.png)

##  Compatibility

In Typst 0.7 and lower, the ` type ` function returned a string instead of a
type. Compatibility with the old way will remain for a while to give package
authors time to upgrade, but it will be removed at some point.

  * Checks like ` int  ==  "integer"  ` evaluate to ` true  `
  * Adding/joining a type and string will yield a string 
  * The ` in ` operator on a type and a dictionary will evaluate to ` true  ` if the dictionary has a string key matching the type's name 

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Determines a value's type.

type  (

any

)  -> [ type ](/docs/reference/foundations/type/)

    
    
    #type(12) \
    #type(14.7) \
    #type("hello") \
    #type(<glacier>) \
    #type([Hi]) \
    #type(x => x + 1) \
    #type(type)
    

![Preview](/assets/docs/A7_wGHgPK0Jhrp3CDC6IegAAAAAAAAAA.png)

####  ` value `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The value whose type's to determine.

[ ![â](/assets/icons/16-arrow-right.svg) System  Previous page
](/docs/reference/foundations/sys/) [ ![â](/assets/icons/16-arrow-right.svg)
Version  Next page  ](/docs/reference/foundations/version/)

