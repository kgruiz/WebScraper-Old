#  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

##  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)

