#  Math

Math is a special environment that has special features related to... math.

##  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

##  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

##  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  * All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  * All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  * To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  * You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

##  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

##  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

##  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)

