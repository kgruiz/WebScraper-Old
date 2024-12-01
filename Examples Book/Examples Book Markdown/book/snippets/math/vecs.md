#  Vectors & Matrices

You can easily note that the gap isn't necessarily even or the same in
different vectors and matrices:

    
    
    $
    mat(0, 1, -1; -1, 0, 1; 1, -1, 0) vec(a/b, a/b, a/b) = vec(c, d, e)
    $

![Rendered image](typst-
img/6a28529f5b38a17bcb660981691cdcc2bc4b6ddfbdb103327ae9e42b1365458e-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use this snippet:

    
    
    // Fixed height vector
    #let fvec(..children, delim: "(", gap: 1.5em) = { // change default gap there
      context math.vec(
          delim: delim,
          gap: 0em,
          ..for el in children.pos() {
            ({
              box(
                width: measure(el).width,
                height: gap, place(horizon, el)
              )
            },) // this is an array
            // `for` merges all these arrays, then we pass it to arguments
          }
        )
    }
    
    // fixed hight matrix
    // accepts also row-gap, column-gap and gap
    #let fmat(..rows, delim: "(", augment: none) = {
      let args = rows.named()
      let (gap, row-gap, column-gap) = (none,)*3;
    
      if "gap" in args {
        gap = args.at("gap")
        row-gap = args.at("row-gap", default: gap)
        column-gap = args.at("row-gap", default: gap)
      }
      else {
        // change default vertical there
        row-gap = args.at("row-gap", default: 1.5em) 
        // and horizontal there
        column-gap = rows.named().at("column-gap", default: 0.5em)
      }
    
      context math.mat(
          delim: delim,
          row-gap: 0em,
          column-gap: column-gap,
          ..for row in rows.pos() {
            (for el in row {
              ({
              box(
                width: measure(el).width,
                height: row-gap, place(horizon, el)
              )
            },)
            }, )
          }
        )
    }
    
    $
    "Before:"& vec(((a/b))/c, a/b, c) = vec(1, 1, 1)\
    "After:"& fvec(((a/b))/c, a/b, c) = fvec(1, 1, 1)\
    
    "Before:"& mat(a, b; c, d) vec(e, dot) = vec(c/d, e/f)\
    "After:"& fmat(a, b; c, d) fvec(e, dot) = fvec(c/d, e/f)
    $

![Rendered image](typst-
img/98195a6d9cfb93fdc5dca4db04dde22c00b969129e2962c8f7cba9012cd2bd0d-1.svg)

