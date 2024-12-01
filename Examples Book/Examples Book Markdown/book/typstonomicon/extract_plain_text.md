#  Extracting plain text

    
    
    // original author: ntjess
    #let stringify-by-func(it) = {
      let func = it.func()
      return if func in (parbreak, pagebreak, linebreak) {
        "\n"
      } else if func == smartquote {
        if it.double { "\"" } else { "'" } // "
      } else if it.fields() == (:) {
        // a fieldless element is either specially represented (and caught earlier) or doesn't have text
        ""
      } else {
        panic("Not sure how to handle type `" + repr(func) + "`")
      }
    }
    
    #let plain-text(it) = {
      return if type(it) == str {
        it
      } else if it == [ ] {
        " "
      } else if it.has("children") {
        it.children.map(plain-text).join()
      } else if it.has("body") {
        plain-text(it.body)
      } else if it.has("text") {
        if type(it.text) == "string" {
          it.text
        } else {
          plain-text(it.text)
        }
      } else {
        // remove this to ignore all other non-text elements
        stringify-by-func(it)
      }
    }
    
    #plain-text(`raw inline text`)
    
    #plain-text(highlight[Highlighted text])
    
    #plain-text[List
      - With
      - Some
      - Elements
    
      + And
      + Enumerated
      + Too
    ]
    
    #plain-text(underline[Underlined])
    
    #plain-text($sin(x + y)$)
    
    #for el in (
      circle,
      rect,
      ellipse,
      block,
      box,
      par,
      raw.with(block: true),
      raw.with(block: false),
      heading,
    ) {
      plain-text(el(repr(el)))
      linebreak()
    }
    
    // Some empty elements
    #plain-text(circle())
    #plain-text(line())
    
    #for spacer in (linebreak, pagebreak, parbreak) {
      plain-text(spacer())
    }

![Rendered image](typst-
img/bcf07a5cddbcf3f046484609e01f9a05df81807d05391d590bf8c8e96b324d1b-1.svg)

