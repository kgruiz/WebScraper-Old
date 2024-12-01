#  Advanced arguments

##  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

##  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

#  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

##  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO

