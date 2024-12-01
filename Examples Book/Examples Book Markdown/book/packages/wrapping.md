#  Wrapping figures

The better native support for wrapping is planned, however, something is
already possible via package:

    
    
    #import "@preview/wrap-it:0.1.0": wrap-content, wrap-top-bottom
    
    #set par(justify: true)
    #let fig = figure(
      rect(fill: teal, radius: 0.5em, width: 8em),
      caption: [A figure],
    )
    #let body = lorem(40)
    #wrap-content(fig, body)
    
    #wrap-content(
      fig,
      body,
      align: bottom + right,
      column-gutter: 2em
    )
    
    #let boxed = box(fig, inset: 0.5em)
    #wrap-content(boxed)[
      #lorem(40)
    ]
    
    #let fig2 = figure(
      rect(fill: lime, radius: 0.5em),
      caption: [Another figure],
    )
    #wrap-top-bottom(boxed, fig2, lorem(60))

![Rendered image](typst-
img/1d249d6947bbea7f94c4f5f111c873f278dcf473e0cf672d6c55800c0eb6822c-1.svg)

Limitations: non-ideal spacing near warping, only top-bottom left/right are
supported.

