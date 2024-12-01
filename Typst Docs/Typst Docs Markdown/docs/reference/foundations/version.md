  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Version ](/docs/reference/foundations/version/)

#  version

A version with an arbitrary number of components.

The first three components have names that can be used as fields: ` major ` ,
` minor ` , ` patch ` . All following components do not have names.

The list of components is semantically extended by an infinite list of zeros.
This means that, for example, ` 0.8 ` is the same as ` 0.8.0 ` . As a special
case, the empty version (that has no components at all) is the same as ` 0 ` ,
` 0.0 ` , ` 0.0.0 ` , and so on.

The current version of the Typst compiler is available as ` sys.version ` .

You can convert a version to an array of explicitly given components using the
[ ` array ` ](/docs/reference/foundations/array/ "`array`") constructor.

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Creates a new version.

It can have any number of components (even zero).

version  (

..  [ int ](/docs/reference/foundations/int/) [ array
](/docs/reference/foundations/array/)

)  -> [ version ](/docs/reference/foundations/version/)

    
    
    #version() \
    #version(1) \
    #version(1, 2, 3, 4) \
    #version((1, 2, 3, 4)) \
    #version((1, 2), 3)
    

![Preview](/assets/docs/Fx1_6ds8kbJ35Werk0qIqQAAAAAAAAAA.png)

####  ` components `

[ int ](/docs/reference/foundations/int/) or  [ array
](/docs/reference/foundations/array/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The components of the version (array arguments are flattened)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` at `

Retrieves a component of a version.

The returned integer is always non-negative. Returns ` 0 ` if the version
isn't specified to the necessary length.

self  .  at  (

[ int ](/docs/reference/foundations/int/)

)  -> [ int ](/docs/reference/foundations/int/)

####  ` index `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The index at which to retrieve the component. If negative, indexes from the
back of the explicitly given components.

[ ![â](/assets/icons/16-arrow-right.svg) Type  Previous page
](/docs/reference/foundations/type/) [ ![â](/assets/icons/16-arrow-
right.svg) Model  Next page  ](/docs/reference/model/)

