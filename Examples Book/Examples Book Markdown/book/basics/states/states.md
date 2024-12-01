#  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

**THIS DOES NOT COMPILE:** Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

##  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

##  Operations with states

###  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

###  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

###  ID collision

_TLDR;**Never allow colliding states.** _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)

