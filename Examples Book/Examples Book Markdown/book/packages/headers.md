#  Headers

##  ` hydra  ` : Contextual headers

We have discussed in ` Typst Basics  ` how to get current heading with `
query(selector(heading).before(here()))  ` for headers. However, this works
badly for nested headings with numbering and similar things. For these cases
there is ` hydra  ` :

    
    
    #import "@preview/hydra:0.5.1": hydra
    
    #set page(height: 10 * 20pt, margin: (y: 4em), numbering: "1", header: context {
      if calc.odd(here().page()) {
        align(right, emph(hydra(1)))
      } else {
        align(left, emph(hydra(2)))
      }
      line(length: 100%)
    })
    #set heading(numbering: "1.1")
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    = Introduction
    #lorem(50)
    
    = Content
    == First Section
    #lorem(50)
    == Second Section
    #lorem(100)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-1.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-2.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-3.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-4.svg)

