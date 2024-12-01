#  Vectors, matrices, semicolumn syntax

##  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

###  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

###  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

###  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

##  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

###  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or **after the semicolon** .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

##  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $

