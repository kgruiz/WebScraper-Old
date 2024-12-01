#  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

##  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

##  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

###  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)

