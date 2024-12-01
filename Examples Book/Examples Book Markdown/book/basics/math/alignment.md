#  Alignment

##  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

##  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

**Each alignment point simply alternates between right-aligned/left-aligned.**

