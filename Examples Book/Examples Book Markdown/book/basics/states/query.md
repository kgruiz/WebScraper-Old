#  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

##  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

##  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)

