#  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

#  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

##  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

##  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

#  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

#  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

#  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

##  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

##  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

