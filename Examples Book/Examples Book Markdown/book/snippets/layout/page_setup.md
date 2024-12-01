#  Page setup

> See [ Official Page Setup guide ](https://typst.app/docs/guides/page-setup-
> guide/)
    
    
    #set page(
      width: 3cm,
      margin: (x: 0cm),
    )
    
    #for i in range(3) {
      box(square(width: 1cm))
    }

![Rendered image](typst-
img/6a1e9261d0b0bcd09b578e8361c939100328fbccfd8289402ad62f768b55a0c1-1.svg)

    
    
    #set page(columns: 2, height: 4.8cm)
    Climate change is one of the most
    pressing issues of our time, with
    the potential to devastate
    communities, ecosystems, and
    economies around the world. It's
    clear that we need to take urgent
    action to reduce our carbon
    emissions and mitigate the impacts
    of a rapidly changing climate.

![Rendered image](typst-
img/2b0351806e86c3410f445beb2a51887aebd3f73649e2fe638ba45a39026284dd-1.svg)

    
    
    #set page(fill: rgb("444352"))
    #set text(fill: rgb("fdfdfd"))
    *Dark mode enabled.*

![Rendered image](typst-
img/340892f7237f4bc864f9ca9dc5fd956fe4032a157a373e0bb4b7358200daa72e-1.svg)

    
    
    #set par(justify: true)
    #set page(
      margin: (top: 32pt, bottom: 20pt),
      header: [
        #set text(8pt)
        #smallcaps[Typst Academcy]
        #h(1fr) _Exercise Sheet 3_
      ],
    )
    
    #lorem(19)

![Rendered image](typst-
img/bfb28329922a1eb129dd2c7d7003dcfa30ebdc119265f19f8190b69d3e40ff68-1.svg)

    
    
    #set page(foreground: text(24pt)[🥸])
    
    Reviewer 2 has marked our paper
    "Weak Reject" because they did
    not understand our approach...

![Rendered image](typst-
img/b88eae1fcb87b110e66ee6493c60c2c3e0d0c9a7f1c288e739bf1bb8e09c8d70-1.svg)

