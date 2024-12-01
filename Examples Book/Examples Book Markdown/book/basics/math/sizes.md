#  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  * Display math size ( ` display  ` ) 
  * Inline math size ( ` inline  ` ) 
  * Script math size ( ` script  ` ) 
  * Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

##  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)

