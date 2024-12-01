#  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

##  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

###  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

###  Common modifiers

  * ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)

