#  Operations

##  Fractions

    
    
    $
    p/q, p slash q, p\/q
    $

![Rendered image](typst-
img/7e6b189e7b1c1329caebb4d4c6ea718c897ef64f51383889c65e62e308c73478-1.svg)

###  Slightly moved:

    
    
    #let mfrac(a, b) = move(a, dy: -0.2em) + "/" + move(b, dy: 0.2em, dx: -0.1em)
    $A\/B, #mfrac($A$, $B$)$,

![Rendered image](typst-
img/002c9e0e934a98cfb5e93a407d130841a5e1a493d361c368ae605acdfd6f64bc-1.svg)

###  Large fractions

    
    
    #let dfrac(a, b) = $display(frac(#a, #b))$
    
    $(x + y)/(1/x + 1/y) quad (x + y)/(dfrac(1,x) + dfrac(1, y))$

![Rendered image](typst-
img/36454aba32957127c97710e4fc1db3e6d8c9a558e886b7103915d501004bad76-1.svg)

