  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Foundations ](/docs/reference/foundations/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Function ](/docs/reference/foundations/function/)

#  function

A mapping from argument values to a return value.

You can call a function by writing a comma-separated list of function
_arguments_ enclosed in parentheses directly after the function name.
Additionally, you can pass any number of trailing content blocks arguments to
a function _after_ the normal argument list. If the normal argument list would
become empty, it can be omitted. Typst supports positional and named
arguments. The former are identified by position and type, while the latter
are written as ` name: value ` .

Within math mode, function calls have special behaviour. See the [ math
documentation ](/docs/reference/math/) for more details.

##  Example

    
    
    // Call a function.
    #list([A], [B])
    
    // Named arguments and trailing
    // content blocks.
    #enum(start: 2)[A][B]
    
    // Version without parentheses.
    #list[A][B]
    

![Preview](/assets/docs/h8ulslRsTYE05Pu4qy5C6AAAAAAAAAAA.png)

Functions are a fundamental building block of Typst. Typst provides functions
for a variety of typesetting tasks. Moreover, the markup you write is backed
by functions and all styling happens through functions. This reference lists
all available functions and how you can use them. Please also refer to the
documentation about [ set ](/docs/reference/styling/#set-rules) and [ show
](/docs/reference/styling/#show-rules) rules to learn about additional ways
you can work with functions in Typst.

##  Element functions

Some functions are associated with _elements_ like [ headings
](/docs/reference/model/heading/) or [ tables ](/docs/reference/model/table/)
. When called, these create an element of their respective kind. In contrast
to normal functions, they can further be used in [ set rules
](/docs/reference/styling/#set-rules) , [ show rules
](/docs/reference/styling/#show-rules) , and [ selectors
](/docs/reference/foundations/selector/) .

##  Function scopes

Functions can hold related definitions in their own scope, similar to a [
module ](/docs/reference/scripting/#modules) . Examples of this are [ `
assert.eq ` ](/docs/reference/foundations/assert/#definitions-eq) or [ `
list.item ` ](/docs/reference/model/list/#definitions-item) . However, this
feature is currently only available for built-in functions.

##  Defining functions

You can define your own function with a [ let binding
](/docs/reference/scripting/#bindings) that has a parameter list after the
binding's name. The parameter list can contain mandatory positional
parameters, named parameters with default values and [ argument sinks
](/docs/reference/foundations/arguments/) .

The right-hand side of a function binding is the function body, which can be a
block or any other expression. It defines the function's return value and can
depend on the parameters. If the function body is a [ code block
](/docs/reference/scripting/#blocks) , the return value is the result of
joining the values of each expression in the block.

Within a function body, the ` return ` keyword can be used to exit early and
optionally specify a return value. If no explicit return value is given, the
body evaluates to the result of joining all expressions preceding the ` return
` .

Functions that don't return any meaningful value return [ ` none `
](/docs/reference/foundations/none/ "`none`") instead. The return type of such
functions is not explicitly specified in the documentation. (An example of
this is [ ` array.push ` ](/docs/reference/foundations/array/#definitions-push
"`array.push`") ).

    
    
    #let alert(body, fill: red) = {
      set text(white)
      set align(center)
      rect(
        fill: fill,
        inset: 8pt,
        radius: 4pt,
        [*Warning:\ #body*],
      )
    }
    
    #alert[
      Danger is imminent!
    ]
    
    #alert(fill: blue)[
      KEEP OFF TRACKS
    ]
    

![Preview](/assets/docs/56wK4TQtzRt7_B3OQOxb7QAAAAAAAAAA.png)

##  Importing functions

Functions can be imported from one file ( [ ` module `
](/docs/reference/scripting/#modules) ) into another using ` import  ` . For
example, assume that we have defined the ` alert ` function from the previous
example in a file called ` foo.typ ` . We can import it into another file by
writing ` import  "foo.typ"  :  alert ` .

##  Unnamed functions

You can also created an unnamed function without creating a binding by
specifying a parameter list followed by ` => ` and the function body. If your
function has just one parameter, the parentheses around the parameter list are
optional. Unnamed functions are mainly useful for show rules, but also for
settable properties that take functions like the page function's [ ` footer `
](/docs/reference/layout/page/#parameters-footer) property.

    
    
    #show "once?": it => [#it #it]
    once?
    

![Preview](/assets/docs/yXee-w_McX_Uho7Ghovc-QAAAAAAAAAA.png)

##  Note on function purity

In Typst, all functions are _pure._ This means that for the same arguments,
they always return the same result. They cannot "remember" things to produce
another value when they are called a second time.

The only exception are built-in methods like [ ` array.push(value) `
](/docs/reference/foundations/array/#definitions-push) . These can modify the
values they are called on.

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` with `

Returns a new function that has the given arguments pre-applied.

self  .  with  (

..  any

)  -> [ function ](/docs/reference/foundations/function/)

####  ` arguments `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The arguments to apply to the function.

###  ` where `

Returns a selector that filters for elements belonging to this function whose
fields have the values of the given arguments.

self  .  where  (

..  any

)  -> [ selector ](/docs/reference/foundations/selector/)

    
    
    #show heading.where(level: 2): set text(blue)
    = Section
    == Subsection
    === Sub-subsection
    

![Preview](/assets/docs/VOR4DpWIitR8ukDkDB2RigAAAAAAAAAA.png)

####  ` fields `

any

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Variadic

Question mark

Variadic parameters can be specified multiple times.

The fields to filter for.

[ ![â](/assets/icons/16-arrow-right.svg) Float  Previous page
](/docs/reference/foundations/float/) [ ![â](/assets/icons/16-arrow-
right.svg) Integer  Next page  ](/docs/reference/foundations/int/)

