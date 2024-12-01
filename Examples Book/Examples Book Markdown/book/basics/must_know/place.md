#  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

#  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

###  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

###  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

#  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

#  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

#  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)

