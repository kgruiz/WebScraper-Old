#  Outlines

#  Outlines

> Lots of outlines examples are already available in [ official reference
> ](https://typst.app/docs/reference/meta/outline/)

##  Table of contents

    
    
    #outline()
    
    = Introduction
    #lorem(5)
    
    = Prior work
    #lorem(10)

![Rendered image](typst-
img/77dbcfc8072afc53714fea404efaa1f60692fee68a19821e77feb8bafdd5bd46-1.svg)

##  Outline of figures

    
    
    #outline(
      title: [List of Figures],
      target: figure.where(kind: table),
    )
    
    #figure(
      table(
        columns: 4,
        [t], [1], [2], [3],
        [y], [0.3], [0.7], [0.5],
      ),
      caption: [Experiment results],
    )

![Rendered image](typst-
img/a898ed56e04bc374a8b88580ae203c7695d92445179cffad2642d1a08a8f7ef1-1.svg)

You can use arbitrary selector there, so you can do any crazy things.

##  Ignore low-level headings

    
    
    #set heading(numbering: "1.")
    #outline(depth: 2)
    
    = Yes
    Top-level section.
    
    == Still
    Subsection.
    
    === Nope
    Not included.

![Rendered image](typst-
img/c6947016b324ba83db8aea6da98d4658877618b4ee650edabdb2360782fd520c-1.svg)

##  Set indentation

    
    
    #set heading(numbering: "1.a.")
    
    #outline(
      title: [Contents (Automatic)],
      indent: auto,
    )
    
    #outline(
      title: [Contents (Length)],
      indent: 2em,
    )
    
    #outline(
      title: [Contents (Function)],
      indent: n => [→ ] * n,
    )
    
    = About ACME Corp.
    == History
    === Origins
    #lorem(10)
    
    == Products
    #lorem(10)

![Rendered image](typst-
img/59dc3acb28c16d258b93278079848404454449450103de6f456454aef50a8e55-1.svg)

##  Replace default dots

    
    
    #outline(fill: line(length: 100%), indent: 2em)
    
    = First level
    == Second level

![Rendered image](typst-
img/81c9f957fb8944561295980a7dfd1ee2b1fbd58f77d90e7b904aa8b99b3bbf9e-1.svg)

##  Make different outline levels look different

    
    
    #set heading(numbering: "1.")
    
    #show outline.entry.where(
      level: 1
    ): it => {
      v(12pt, weak: true)
      strong(it)
    }
    
    #outline(indent: auto)
    
    = Introduction
    = Background
    == History
    == State of the Art
    = Analysis
    == Setup

![Rendered image](typst-
img/e620be5254ab48d4bb3f5e1b8bc928e1f8c43d0ba0929b6dc858522539ff4e0c-1.svg)

##  Long and short captions for the outline

    
    
    // author: laurmaedje
    // Put this somewhere in your template or at the start of your document.
    #let in-outline = state("in-outline", false)
    #show outline: it => {
      in-outline.update(true)
      it
      in-outline.update(false)
    }
    
    #let flex-caption(long, short) = context if in-outline.get() { short } else { long }
    
    // And this is in the document.
    #outline(title: [Figures], target: figure)
    
    #figure(
      rect(),
      caption: flex-caption(
        [This is my long caption text in the document.],
        [This is short],
      )
    )

![Rendered image](typst-
img/fc4dc1c50f173f2ee6d73ee8868e6a8cd3d4a666165d2d05d21cfaa410361e31-1.svg)

##  Ignore citations and footnotes

That's a workaround a problem that if you make a footnote a heading, its
number will be displayed in outline:

    
    
    = Heading #footnote[A footnote]
    
    Text
    
    #outline() // bad :(
    
    #pagebreak()
    #{
      set footnote.entry(
        separator: none
      )
      show footnote.entry: hide
      show ref: none
      show footnote: none
    
      outline()
    }

![Rendered image](typst-
img/baac264bb9ab5bfcf402ee4508cb3c18a8e747b17fefa125c9d2998df0f5a283-1.svg)

![Rendered image](typst-
img/baac264bb9ab5bfcf402ee4508cb3c18a8e747b17fefa125c9d2998df0f5a283-2.svg)

