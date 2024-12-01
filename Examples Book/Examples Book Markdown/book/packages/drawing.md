#  Drawing

##  ` cetz  `

Cetz is an analogue of LaTeX's ` tikz  ` . Maybe it is not as powerful yet,
but certainly easier to learn and use.

It is the best choice in most of cases you want to draw something in Typst.

    
    
    #import "@preview/cetz:0.1.2"
    
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: angle
      let (a, b, c) = ((0,0), (-1,1), (1.5,0))
      line(a, b)
      line(a, c)
      set-style(angle: (radius: 1, label-radius: .5), stroke: blue)
      angle(a, c, b, label: $alpha$, mark: (end: ">"), stroke: blue)
      set-style(stroke: red)
      angle(a, b, c, label: n => $#{n/1deg} degree$,
        mark: (end: ">"), stroke: red, inner: false)
    })

![Rendered image](typst-
img/d3b5277dd18dffb6da9a8f41486cb85a5044597821e80867652f062724ed8dd4-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      intersections(name: "demo", {
        circle((0, 0))
        bezier((0,0), (3,0), (1,-1), (2,1))
        line((0,-1), (0,1))
        rect((1.5,-1),(2.5,1))
      })
      for-each-anchor("demo", (name) => {
        circle("demo." + name, radius: .1, fill: black)
      })
    })

![Rendered image](typst-
img/05a1dbe2a2d17e5e81991406bed640775db6ab4ce2d585bc5a0d1175def43ea1-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      let (a, b, c) = ((0, 0), (1, 1), (2, -1))
      line(a, b, c, stroke: gray)
      bezier-through(a, b, c, name: "b")
      // Show calculated control points
      line(a, "b.ctrl-1", "b.ctrl-2", c, stroke: gray)
    })

![Rendered image](typst-
img/8e7d39d73212ebf8f230a0bd54a7fb7e58607a99f327e29809c4021b9e797345-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      group(name: "g", {
        rotate(45deg)
        rect((0,0), (1,1), name: "r")
        copy-anchors("r")
      })
      circle("g.top", radius: .1, fill: black)
    })

![Rendered image](typst-
img/b3d0b37a84cddb77a1508333743f851509e2250930abdcbda7ec4675e00077c3-1.svg)

    
    
    // author: LDemetrios
    #import "@preview/cetz:0.2.2"
    
    #cetz.canvas({
      let left = (a:2, b:1, d:-1, e:-2)
      let right = (p:2.7, q: 1.8, r: 0.9, s: -.3, t: -1.5, u: -2.4)
      let edges = "as,bq,dq,et".split(",")
    
      let ell-width = 1.5
      let ell-height = 3
      let dist = 5
      let dot-radius = 0.1
      let dot-clr = blue
    
      import cetz.draw: *
      circle((-dist/2, 0), radius:(ell-width ,  ell-height))
      circle((+dist/2, 0), radius:(ell-width ,  ell-height))
    
      for (name, y) in left {
        circle((-dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"east", pad(right:.7em, text(fill:dot-clr, name)))
      }
    
      for (name, y) in right {
        circle((dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"west", pad(left:.7em, text(fill:dot-clr, name)))
      }
    
      for edge in edges {
        let from = edge.at(0)
        let to = edge.at(1)
        line(from, to)
        mark(from, to, symbol: ">",  fill: black)
      }
    
      content((0, - ell-height), text(fill:blue)[APPLICATION], anchor:"south")
    })

![Rendered image](typst-
img/7a4a9224b76305ecd694fd4505b3fdee8c706ccea76ac0e59fd13d469c343dd4-1.svg)

