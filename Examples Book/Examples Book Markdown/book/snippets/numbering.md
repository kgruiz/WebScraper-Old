#  Numbering

##  Individual heading without numbering

    
    
    #let numless(it) = {set heading(numbering: none); it }
    
    = Heading
    #numless[=No numbering heading]

![Rendered image](typst-
img/e04f844b270049702ac72dff7bfadf5963cdb2bc8a541e81b685124fbb61c48e-1.svg)

##  "Clean" numbering

    
    
    // original author: tromboneher
    
    // Number sections according to a number of schemes, omitting previous leading elements.
    // For example, where the numbering pattern "A.I.1." would produce:
    //
    // A. A part of the story
    //   A.I. A chapter
    //   A.II. Another chapter
    //     A.II.1. A section
    //       A.II.1.a. A subsection
    //       A.II.1.b. Another subsection
    //     A.II.2. Another section
    // B. Another part of the story
    //   B.I. A chapter in the second part
    //   B.II. Another chapter in the second part
    //
    // clean_numbering("A.", "I.", "1.a.") would produce:
    //
    // A. A part of the story
    //   I. A chapter
    //   II. Another chapter
    //     1. A section
    //       1.a. A subsection
    //       1.b. Another subsection
    //     2. Another section
    // B. Another part of the story
    //   I. A chapter in the second part
    //   II. Another chapter in the second part
    //
    #let clean_numbering(..schemes) = {
      (..nums) => {
        let (section, ..subsections) = nums.pos()
        let (section_scheme, ..subschemes) = schemes.pos()
    
        if subsections.len() == 0 {
          numbering(section_scheme, section)
        } else if subschemes.len() == 0 {
          numbering(section_scheme, ..nums.pos())
        }
        else {
          clean_numbering(..subschemes)(..subsections)
        }
      }
    }
    
    #set heading(numbering: clean_numbering("A.", "I.", "1.a."))
    
    = Part
    == Chapter
    == Another chapter
    === Section
    ==== Subsection
    ==== Another subsection
    = Another part of the story
    == A chapter in the second part
    == Another chapter in the second part

![Rendered image](typst-
img/4e29319442704545bf58d12448745836598c12f59162d3199aaad21c752e4483-1.svg)

##  Math numbering

See [ there ](./math/numbering.html) .

##  Numbering each paragraph

By the 0.12 version of Typst, this should be replaced with good native
solution.

    
    
    // original author: roehlichA
    // Legal formatting of enumeration
    #show enum: it => context {
      // Retrieve the last heading so we know what level to step at
      let headings = query(selector(heading).before(here()))
      let last = headings.at(-1)
    
      // Combine the output items
      let output = ()
      for item in it.children {
        output.push([
          #context{
            counter(heading).step(level: last.level + 1)
          }
          #context {
            counter(heading).display() 
          }
        ])
        output.push([
          #text(item.body)
          #parbreak()
        ])
      }
    
      // Display in a grid
      grid(
        columns: (auto, 1fr),
        column-gutter: 1em,
        row-gutter: 1em,
        ..output
      )
    
    }
    
    #set heading(numbering: "1.")
    
    = Some heading
    + Paragraph
    = Other
    + Paragraphs here are preceded with a number so they can be referenced directly.
    + _#lorem(100)_
    + _#lorem(100)_
    
    == A subheading
    + Paragraphs are also numbered correctly in subheadings.
    + _#lorem(50)_
    + _#lorem(50)_

![Rendered image](typst-
img/8d5603f93334c1d0fd7391811f90b161d4ff8c7eb81100dc152caac5c6d13daf-1.svg)

