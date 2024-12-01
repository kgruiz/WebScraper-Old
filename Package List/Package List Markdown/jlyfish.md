#  jlyfish

0.1.0

Julia code evaluation inside your Typst document

![logo](https://github.com/typst/packages/raw/main/packages/preview/jlyfish/0.1.0/assets/logo.svg)

Jlyfish is a package for Julia and Typst that allows you to integrate Julia
computations in your Typst document.

[ ![Static Badge](https://img.shields.io/badge/docs-wiki-blue)
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) ![GitHub
License](https://img.shields.io/github/license/andreasKroepelin/TypstJlyfish.jl)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/TypstJlyfish.jl)
[ ![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/TypstJlyfish.jl)
](https://github.com/andreasKroepelin/TypstJlyfish.jl)

You should use Jlyfish if you want to write a Typst document and have some of
the content automatically produced by Julia code but want the source code for
that within your document source. It fills a similar role as [ PythonTeX
](https://github.com/gpoore/pythontex) does for Python and LaTeX. Note that
this is different from tools like [ Quarto ](https://quarto.org/) where you
write documents in Markdown, also integrate some Julia code, but then might
use Typst only as a backend to produce the final document.

See below for a quick introduction or read the [ wiki
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) for an in depth
explanation.

Since Jlyfish builds a bridge between Julia and Typst, we also have to get two
things running. First, install the Julia package ` TypstJlyfish ` from the
general registry by executing

    
    
    julia> ]
    
    (@v1.10) pkg> add TypstJlyfish
    

You only have to do this once. (It is like installing and using the Pluto
notebook system, if you are familiar with that.)

When you want to use Jlyfish in a Typst document (say, ` your-document.typ `
), add the following line at the top:

    
    
    #import "@preview/jlyfish:0.1.0": *
    

Then, open a Julia REPL and run

    
    
    julia> import TypstJlyfish
    
    julia> TypstJlyfish.watch("your-document.typ")
    

Jlyfish facilitates the communication between Julia and Typst via a JSON file.
By default, Jlyfish uses the name of your document and adds a ` -jlyfish.json
` , so ` your-document.typ ` would become ` your-document-jlyfish.json ` .
This can be configured, of course.

To let Typst know of the computed data in the JSON file, add the following
line to your document:

    
    
    #read-julia-output(json("your-document-jlyfish.json"))
    

You can then place some Julia code in your Typst source using the ` #jl `
function:

    
    
    What is the sum of the whole numbers from one to a hundred? #jl(`sum(1:100)`)
    

Head over to the [ wiki
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) to learn more!

Just to show what is possible with Jlyfish:

![demo](https://github.com/typst/packages/raw/main/packages/preview/jlyfish/0.1.0/examples/demo.svg)

    
    
    #import "@preview/jlyfish:0.1.0": *
    
    #set page(width: auto, height: auto, margin: 1em)
    #set text(font: "Alegreya Sans")
    #let note = text.with(size: .7em, fill: luma(100), style: "italic")
    
    #read-julia-output(json("demo-jlyfish.json"))
    #jl-pkg("Colors", "Typstry", "Makie", "CairoMakie")
    
    #grid(
      columns: 2,
      gutter: 1em,
      align: top,
      [
        #note[Generate Typst code in Julia:]
    
        #set text(size: 4em)
        #jl(```julia
          using Typstry, Colors
    
          parts = map([:red, :green, :purple], ["Ju", "li", "a"]) do name, text
            color = hex(Colors.JULIA_LOGO_COLORS[name])
            "#text(fill: rgb(\"$color\"))[$text]"
          end
          TypstText(join(parts))
        ```)
      ],
      [
        #note[Produce images in Julia:]
    
        #set image(width: 10em)
        #jl(recompute: false, ```
          using Makie, CairoMakie
    
          as = -2.2:.01:.7
          bs = -1.5:.01:1.5
          C = [a + b * im for a in as, b in bs]
          function mandelbrot(c)
            z = c
            i = 1
            while i < 100 && abs2(z) < 4
              z = z^2 + c
              i += 1
            end
            i
          end
    
          contour(as, bs, mandelbrot.(C), axis = (;aspect = DataAspect()))
        ```)
      ],
      [
        #note[Hand over raw data from Julia to Typst:]
        #let barchart(counts) = {
          set align(bottom)
          let bars = counts.map(count => rect(
            width: .3em,
            height: count * 9em,
            stroke: white,
            fill: blue,
          ))
          stack(dir: ltr, ..bars)
        }
    
        #jl-raw(fn: it => barchart(it.result.data), ```julia
          p = .5
          n = 40
          counts = zeros(n + 1)
          for _ in 1:10_000
            count = 0
            for _ in 1:n
              if rand() < p
                count += 1
              end
            end
            counts[count + 1] += 1
          end
    
          counts ./= maximum(counts)
          lo, hi = findfirst(>(1e-3), counts), findlast(>(1e-3), counts)
          counts[lo:hi]
        ```)
      ],
      [
        #note[See errors, stdout, and logs:]
    
        #jl(```julia
          println("Hello from stdout!")
          @info "Something to note" n p
          @warn "You should read this!"
          this_does_not_exist
        ```)
      ]
    )
    

###  How to add

Copy this into your project and use the import as  ` jlyfish `

    
    
    #import "@preview/jlyfish:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Andreas KrÃ¶pelin 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 8, 2024 
First released:

     July 8, 2024 
Archive size:

     2.75 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/jlyfish-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/andreasKroepelin/TypstJlyfish.jl)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  Andreas KrÃ¶pelin  .  Report issues on  [
their repository ](https://github.com/andreasKroepelin/TypstJlyfish.jl) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 8, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

