#  Remove indent from nested lists

    
    
    // author: fenjalien
    #show enum.item: it => {
      if repr(it.body.func()) == "sequence" {
        let children = it.body.children
        let index = children.position(x => x.func() == enum.item)
        if index != none {
          enum.item({
            children.slice(0, index).join()
            set enum(indent: -1.2em) // Note that this stops an infinitly recursive show rule
            children.slice(index).join()
          })
        } else {
          it
        }
      } else {
        it
      }
    }
    
    arst
    + A
    + b
    + c
      + d
    + e
      + f
    + g
    + h
    + i
    + 

![Rendered image](typst-
img/39725eefebf4a24de8f643e32c454fc7dff8f4f594ba29c6ca84c098b8983860-1.svg)

