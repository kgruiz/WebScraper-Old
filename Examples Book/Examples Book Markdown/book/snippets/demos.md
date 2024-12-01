#  Demos

##  Resume (using template)

    
    
    #import "@preview/modern-cv:0.1.0": *
    
    #show: resume.with(
      author: (
          firstname: "John", 
          lastname: "Smith",
          email: "js@example.com", 
          phone: "(+1) 111-111-1111",
          github: "DeveloperPaul123",
          linkedin: "Example",
          address: "111 Example St. Example City, EX 11111",
          positions: (
            "Software Engineer",
            "Software Architect"
          )
      ),
      date: datetime.today().display()
    )
    
    = Education
    
    #resume-entry(
      title: "Example University",
      location: "B.S. in Computer Science",
      date: "August 2014 - May 2019",
      description: "Example"
    )
    
    #resume-item[
      - #lorem(20)
      - #lorem(15)
      - #lorem(25)
    ]

![Rendered image](typst-
img/fc69693c49a6cf8021751980642ed7649c9d905056f510fb8e4a994937faeaa2-1.svg)

##  Book cover

    
    
    // author: bamdone
    #let accent  = rgb("#00A98F")
    #let accent1 = rgb("#98FFB3")
    #let accent2 = rgb("#D1FF94")
    #let accent3 = rgb("#D3D3D3")
    #let accent4 = rgb("#ADD8E6")
    #let accent5 = rgb("#FFFFCC")
    #let accent6 = rgb("#F5F5DC")
    
    #set page(paper: "a4",margin: 0.0in, fill: accent)
    
    #set rect(stroke: 4pt)
    #move(
      dx: -6cm, dy: 1.0cm,
      rotate(-45deg,
        rect(
          width: 100cm,
          height: 2cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent1,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: -2cm, dy: -1.0cm,
      rotate(-45deg,
        rect(
          width: 100cm,
          height: 2cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent2,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: 8cm, dy: -10cm,
      rotate(-45deg,
        rect(
          width: 100cm,
          height: 1cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent3,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: 7cm, dy: -8cm,
      rotate(-45deg,
        rect(
          width: 1000cm,
          height: 2cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent4,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: 0cm, dy: -0cm,
      rotate(-45deg,
        rect(
          width: 1000cm,
          height: 2cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent1,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: 9cm, dy: -7cm,
      rotate(-45deg,
        rect(
          width: 1000cm,
          height: 1.5cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent6,
    )))
    
    #set rect(stroke: 4pt)
    #move(
      dx: 16cm, dy: -13cm,
      rotate(-45deg,
        rect(
          width: 1000cm,
          height: 1cm,
          radius: 50%,
          stroke: 0pt,
          fill:accent2,
    )))
    
    #align(center)[
      #rect(width: 30%,
        fill: accent4,
        stroke:none,
        [#align(center)[
          #text(size: 60pt,[Title])
        ]
        ])
    ]
    
    #align(center)[
      #rect(width: 30%,
        fill: accent4,
        stroke:none,
        [#align(center)[
          #text(size: 20pt,[author])
        ]
        ])
    ]

![Rendered image](typst-
img/7c2e798dacec8ac970ac2b328c60f8145441d059f16f7bd193f389d78d121981-1.svg)

