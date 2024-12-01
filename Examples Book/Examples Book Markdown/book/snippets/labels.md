#  Labels

##  Get chapter of label

    
    
    #let ref-heading(label) = context {
      let elems = query(label)
      if elems.len() != 1 {
        panic("found multiple elements")
      }
      let element = elems.first()
      if element.func() != heading {
        panic("label must target heading")
      }
      link(label, element.body)
    }
    
    = Design <design>
    #lorem(20)
    
    = Implementation
    In #ref-heading(<design>), we discussed...

![Rendered image](typst-
img/7a4a9436d9aa0cbf0d3212b45d54bd90a896181c30b036326d99dee9f58eb117-1.svg)

##  Allow missing references

    
    
    // author: Enivex
    #set heading(numbering: "1.")
    
    #let myref(label) = context {
        if query(label).len() != 0 {
            ref(label)
        } else {
            // missing reference
            text(fill: red)[???]
        }
    }
    
    = Second <test2>
    
    #myref(<test>)
    
    #myref(<test2>)

![Rendered image](typst-
img/cd5f1f34e81c117063da3bb176c1dda726bbc18ac981121f75555d5834b08058-1.svg)

