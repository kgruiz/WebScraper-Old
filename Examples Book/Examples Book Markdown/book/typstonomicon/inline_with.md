#  Horizontally align something with something

    
    
    // author: tabiasgeehuman
    #let inline-with(select, content) = context {
      let target = query(
        selector(select)
      ).last().location().position().x
      let current = here().position().x
    
      box(inset: (x: target - current + 0.3em), content)
    }
    
    #let inline-label(name) = [#line(length: 0%) #name]
    
    #inline-with(selector(<start-c>))[= Common values]
    #align(left, box[$
        #inline-label(<start-c>) "Circles"(0) =& 0 \
        lim_(x -> 1) "Circles"(0) =& 0
    $])

![Rendered image](typst-
img/6aedec57e7a1480b4eeb9ad00c327661943c9144d64eaaffe73de22872386739-1.svg)

