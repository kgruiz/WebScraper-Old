  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Introspection ](/docs/reference/introspection/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ State ](/docs/reference/introspection/state/)

#  state

Manages stateful parts of your document.

Let's say you have some computations in your document and want to remember the
result of your last computation to use it in the next one. You might try
something similar to the code below and expect it to output 10, 13, 26, and
21. However this **does not work** in Typst. If you test this code, you will
see that Typst complains with the following error message: _Variables from
outside the function are read-only and cannot be modified._

    
    
    // This doesn't work!
    #let x = 0
    #let compute(expr) = {
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x. ]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    

##  State and document markup

Why does it do that? Because, in general, this kind of computation with side
effects is problematic in document markup and Typst is upfront about that. For
the results to make sense, the computation must proceed in the same order in
which the results will be laid out in the document. In our simple example,
that's the case, but in general it might not be.

Let's look at a slightly different, but similar kind of state: The heading
numbering. We want to increase the heading counter at each heading. Easy
enough, right? Just add one. Well, it's not that simple. Consider the
following example:

    
    
    #set heading(numbering: "1.")
    #let template(body) = [
      = Outline
      ...
      #body
    ]
    
    #show: template
    
    = Introduction
    ...
    

![Preview](/assets/docs/OC8Yphz4-mFQhH6Mm9lwwAAAAAAAAAAA.png)

Here, Typst first processes the body of the document after the show rule, sees
the ` Introduction ` heading, then passes the resulting content to the `
template ` function and only then sees the ` Outline ` . Just counting up
would number the ` Introduction ` with ` 1 ` and the ` Outline ` with ` 2 ` .

##  Managing state in Typst

So what do we do instead? We use Typst's state management system. Calling the
` state ` function with an identifying string key and an optional initial
value gives you a state value which exposes a few functions. The two most
important ones are ` get ` and ` update ` :

  * The [ ` get ` ](/docs/reference/introspection/state/#definitions-get) function retrieves the current value of the state. Because the value can vary over the course of the document, it is a _contextual_ function that can only be used when [ context ](/docs/reference/context/) is available. 

  * The [ ` update ` ](/docs/reference/introspection/state/#definitions-update) function modifies the state. You can give it any value. If given a non-function value, it sets the state to that value. If given a function, that function receives the previous state and has to return the new state. 

Our initial example would now look like this:

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    

![Preview](/assets/docs/TvB3cSxy6XwQVp0EXZ9-ewAAAAAAAAAA.png)

State managed by Typst is always updated in layout order, not in evaluation
order. The ` update ` method returns content and its effect occurs at the
position where the returned content is inserted into the document.

As a result, we can now also store some of the computations in variables, but
they still show the correct results:

    
    
    ...
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more
    

![Preview](/assets/docs/leSHwxlkl8fBohZKt4lM4AAAAAAAAAAA.png)

This example is of course a bit silly, but in practice this is often exactly
what you want! A good example are heading counters, which is why Typst's [
counting system ](/docs/reference/introspection/counter/) is very similar to
its state system.

##  Time Travel

By using Typst's state management system you also get time travel
capabilities! We can find out what the value of the state will be at any
position in the document from anywhere else. In particular, the ` at ` method
gives us the value of the state at any particular location and the ` final `
methods gives us the value of the state at the end of the document.

    
    
    ...
    
    Value at `<here>` is
    #context s.at(<here>)
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")
    

![Preview](/assets/docs/FSbY2IZskPNKeQtPqbjroAAAAAAAAAAA.png)

##  A word of caution

To resolve the values of all states, Typst evaluates parts of your code
multiple times. However, there is no guarantee that your state manipulation
can actually be completely resolved.

For instance, if you generate state updates depending on the final value of a
state, the results might never converge. The example below illustrates this.
We initialize our state with ` 1 ` and then update it to its own final value
plus 1. So it should be ` 2 ` , but then its final value is ` 2 ` , so it
should be ` 3 ` , and so on. This example displays a finite value because
Typst simply gives up after a few attempts.

    
    
    // This is bad!
    #let s = state("x", 1)
    #context s.update(s.final() + 1)
    #context s.get()
    

![Preview](/assets/docs/4ABrNAaHVbvzCF9JEmUebAAAAAAAAAAA.png)

In general, you should try not to generate state updates from within context
expressions. If possible, try to express your updates as non-contextual values
or functions that compute the new value from the previous value. Sometimes, it
cannot be helped, but in those cases it is up to you to ensure that the result
converges.

##  Constructor

Question mark

If a type has a constructor, you can call it like a function to create a new
value of the type.

Create a new state identified by a key.

state  (

[ str ](/docs/reference/foundations/str/) ,  any  ,

)  -> [ state ](/docs/reference/introspection/state/)

####  ` key `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The key that identifies this state.

####  ` init `

any

Positional

Question mark

Positional parameters are specified in order, without names.

The initial value of the state.

Default: ` none  `

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` get ` Contextual

Question mark

Contextual functions can only be used when the context is known

Retrieves the value of the state at the current location.

This is equivalent to ` state  .  at  (  here  (  )  )  ` .

self  .  get  (

)  -> any

###  ` at ` Contextual

Question mark

Contextual functions can only be used when the context is known

Retrieves the value of the state at the given selector's unique match.

The ` selector ` must match exactly one element in the document. The most
useful kinds of selectors for this are [ labels
](/docs/reference/foundations/label/) and [ locations
](/docs/reference/introspection/location/) .

_Compatibility:_ For compatibility with Typst 0.10 and lower, this function
also works without a known context if the ` selector ` is a location. This
behaviour will be removed in a future release.

self  .  at  (

[ label ](/docs/reference/foundations/label/) [ selector
](/docs/reference/foundations/selector/) [ location
](/docs/reference/introspection/location/) [ function
](/docs/reference/foundations/function/)

)  -> any

####  ` selector `

[ label ](/docs/reference/foundations/label/) or  [ selector
](/docs/reference/foundations/selector/) or  [ location
](/docs/reference/introspection/location/) or  [ function
](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The place at which the state's value should be retrieved.

###  ` final ` Contextual

Question mark

Contextual functions can only be used when the context is known

Retrieves the value of the state at the end of the document.

self  .  final  (

[ none ](/docs/reference/foundations/none/) [ location
](/docs/reference/introspection/location/)

)  -> any

####  ` location `

[ none ](/docs/reference/foundations/none/) or  [ location
](/docs/reference/introspection/location/)

Positional

Question mark

Positional parameters are specified in order, without names.

_Compatibility:_ This argument is deprecated. It only exists for compatibility
with Typst 0.10 and lower and shouldn't be used anymore.

Default: ` none  `

###  ` update `

Update the value of the state.

The update will be in effect at the position where the returned content is
inserted into the document. If you don't put the output into the document,
nothing happens! This would be the case, for example, if you write ` let  _  =
state  (  "key"  )  .  update  (  7  )  ` . State updates are always applied
in layout order and in that case, Typst wouldn't know when to update the
state.

self  .  update  (

any  [ function ](/docs/reference/foundations/function/)

)  -> [ content ](/docs/reference/foundations/content/)

####  ` update `

any  or  [ function ](/docs/reference/foundations/function/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

If given a non function-value, sets the state to that value. If given a
function, that function receives the previous state and has to return the new
state.

###  ` display `

Displays the current value of the state.

**Deprecation planned:** Use [ ` get `
](/docs/reference/introspection/state/#definitions-get) instead.

self  .  display  (

[ none ](/docs/reference/foundations/none/) [ function
](/docs/reference/foundations/function/)

)  -> [ content ](/docs/reference/foundations/content/)

####  ` func `

[ none ](/docs/reference/foundations/none/) or  [ function
](/docs/reference/foundations/function/)

Positional

Question mark

Positional parameters are specified in order, without names.

A function which receives the value of the state and can return arbitrary
content which is then displayed. If this is omitted, the value is directly
displayed.

Default: ` none  `

[ ![â](/assets/icons/16-arrow-right.svg) Query  Previous page
](/docs/reference/introspection/query/) [ ![â](/assets/icons/16-arrow-
right.svg) Data Loading  Next page  ](/docs/reference/data-loading/)

