#  minideck

0.2.1

Simple dynamic slides.

A small package for dynamic slides in typst.

minideck provides basic functionality for dynamic slides ( ` pause ` , `
uncover ` , â¦), integration with [ fletcher
](https://typst.app/universe/package/fletcher) and [ CetZ
](https://typst.app/universe/package/cetz/) , and some minimal infrastructure
for theming.

##  Usage

Call ` minideck.config ` to get the functions you want to use:

    
    
    #import "@preview/minideck:0.2.1"
    
    #let (template, slide, title-slide, pause, uncover, only) = minideck.config()
    #show: template
    
    #title-slide[
      = Slides with `minideck`
      == Some examples
      John Doe
    
      #datetime.today().display()
    ]
    
    #slide[
      = Some title
    
      Some content
    
      #show: pause
    
      More content
    
      1. One
      2. Two
      #show: pause
      3. Three
    ]
    

This will show three subslides with progressively more content. (Note that the
default theme uses the font Libertinus Sans from the [ Libertinus
](https://github.com/alerque/libertinus) family, so you may want to install
it.)

Instead of ` #show: pause ` , you can use ` #uncover(2,3)[...] ` to make
content visible only on subslides 2 and 3, or ` #uncover(from: 2)[...] ` to
have it visible on subslide 2 and following.

The ` only ` function is similar to ` uncover ` , but instead of hiding the
content (without affecting the layout), it removes it.

    
    
    #slide[
      = `uncover` and `only`
      
      #uncover(1, from:3)[
        Content visible on subslides 1 and 3+
        (space reserved on 2).
      ]
    
      #only(2,3)[
        Content included on subslides 2 and 3
        (no space reserved on 1).
      ]
    
      Content always visible.
    ]
    

Contrary to ` pause ` , the ` uncover ` and ` only ` functions also work in
math mode:

    
    
    #slide[
      = Dynamic equation
    
      $
        f(x) &= x^2 + 2x + 1  \
             #uncover(2, $&= (x + 1)^2$)
      $
    ]
    

When mixing ` pause ` with ` uncover ` / ` only ` , the sequence of pauses
should be taken as reference for the meaning of subslide indices. For example
content after the first pause always appears on the second subslide, even if
itâs preceded by a call to ` #uncover(from: 3)[...] ` .

The package also works well with [ pinit
](https://typst.app/universe/package/pinit) :

    
    
    #import "@preview/pinit:0.1.4": *
    
    #slide[
      = Works well with `pinit`
    
      Pythagorean theorem:
    
      $ #pin(1)a^2#pin(2) + #pin(3)b^2#pin(4) = #pin(5)c^2#pin(6) $
    
      #show: pause
    
      $a^2$ and $b^2$ : squares of triangle legs
    
      #only(2, {
        pinit-highlight(1,2)
        pinit-highlight(3,4)
      })
    
      #show: pause
    
      $c^2$ : square of hypotenuse
    
      #pinit-highlight(5,6, fill: green.transparentize(80%))
      #pinit-point-from(6)[larger than $a^2$ and $b^2$]
    ]
    

###  Handout mode

minideck can make a handout version of the document, in which dynamic behavior
is disabled: the content of all subslides is shown together in a single slide.

To compile a handout version, pass ` --input handout=true ` in the command
line:

    
    
    typst compile --input handout=true myfile.typ
    

It is also possible to enable handout mode from within the document, as shown
in the next section.

###  Configuration

The behavior of the minideck functions depends on the settings passed to `
minideck.config ` . For example, handout mode can also be enabled like this:

    
    
    #import "@preview/minideck:0.2.1"
    
    #let (template, slide, pause) = minideck.config(handout: true)
    #show: template
    
    #slide[
      = Slide title
      
      Some text
    
      #show: pause
    
      More text
    ]
    

(The default value of ` handout ` is ` auto ` , in which case minideck checks
for a command line setting as in the previous section.)

` minideck.config ` accepts the following named arguments:

  * ` paper ` : a string for one of the paper size names recognized by [ ` page.paper ` ](https://typst.app/docs/reference/layout/page/#parameters-paper) , or one of the shorthands ` "16:9" ` or ` "4:3" ` . Default: ` "4:3" ` . 
  * ` landscape ` : use the paper size in landscape orientation. Default: ` true ` . 
  * ` width ` : page width as an absolute length. Takes precedence over ` paper ` and ` landscape ` . 
  * ` height ` : page height as an absolute length. Takes precedence over ` paper ` and ` landscape ` . 
  * ` handout ` : whether to make a document for handout, with content of all subslides shown together in a single slide. 
  * ` theme ` : the theme (see below). 
  * ` cetz ` : the CeTZ module (see below). 
  * ` fletcher ` : the fletcher module (see below). 

For example to make slides with 16:9 aspect ratio, use `
minideck.config(paper: "16:9") ` .

###  Themes

Use ` minideck.config(theme: ...) ` to select a theme. Currently there is only
one built-in: ` minideck.themes.simple ` . However you can also pass a theme
implemented by yourself or from a third-party package. See the [ theme
documentation
](https://github.com/typst/packages/raw/main/packages/preview/minideck/0.2.1/themes/README.md)
for how that works.

Themes are functions and can be configured using the standard [ ` with `
method ](https://typst.app/docs/reference/foundations/function/#definitions-
with) :

  * The ` simple ` theme has a ` variant ` setting with values âlightâ (default) and âdarkâ. 

Hereâs an example:

    
    
    #import "@preview/minideck:0.2.1"
    
    #let (template, slide) = minideck.config(
      theme: minideck.themes.simple.with(variant: "dark"),
    )
    #show: template
    
    #slide[
      = Slide with dark theme
      
      Some text
    ]
    

Note that you can override part of a theme with show and set rules:

    
    
    #import "@preview/minideck:0.2.1"
    
    #let (template, slide) = minideck.config(
      theme: minideck.themes.simple.with(variant: "dark"),
    )
    #show: template
    
    #set page(footer: none) // get rid of the page number
    #show heading: it => text(style: "italic", it)
    #set text(red)
    
    #slide[
      = Slide with dark theme and red text
      
      Some text
    ]
    

###  Integration with CeTZ

You can use ` uncover ` and ` only ` (but not ` pause ` ) in CeTZ figures,
with the following extra steps:

  * Get CeTZ-specific functions ` cetz-uncover ` and ` cetz-only ` by passing the CeTZ module to ` minideck.config ` (see example below). 

This ensures that minideck uses CeTZ functions from the correct version of
CeTZ.

  * Add a ` context ` keyword outside the ` canvas ` call. 

This is required to access the minideck subslide state from within the canvas
without making the content opaque (CeTZ needs to inspect the canvas content to
make the drawing).

Example:

    
    
    #import "@preview/cetz:0.2.2" as cetz: *
    #import "@preview/minideck:0.2.1"
    
    #let (template, slide, only, cetz-uncover, cetz-only) = minideck.config(cetz: cetz)
    #show: template
    
    #slide[
      = In a CeTZ figure
    
      Above canvas
      #context canvas({
        import draw: *
        cetz-only(3, rect((0,-2), (14,4), stroke: 3pt))
        cetz-uncover(from: 2, rect((0,-2), (16,2), stroke: blue+3pt))
        content((8,0), box(stroke: red+3pt, inset: 1em)[
          A typst box #only(2)[on 2nd subslide]
        ])
      })
      Below canvas
    ]
    

###  Integration with fletcher

The same steps are required as for CeTZ integration (passing the fletcher
module to get fletcher-specific functions), plus an additional step:

  * Give explicitly the number of subslides to the ` slide ` function. 

This is required because I could not find a reliable way to update a typst
state from within a fletcher diagram, so I cannot rely on the state to keep
track of the number of subslides.

Example:

    
    
    #import "@preview/fletcher:0.5.0" as fletcher: diagram, node, edge
    #import "@preview/minideck:0.2.1"
    #let (template, slide, fletcher-uncover) = minideck.config(fletcher: fletcher)
    #show: template
    
    #slide(steps: 2)[
      = In a fletcher diagram
    
      #set align(center)
    
      Above diagram
    
      #context diagram(
        node-stroke: 1pt,
        node((0,0), [Start], corner-radius: 2pt, extrude: (0, 3)),
        edge("-|>"),
        node((1,0), align(center)[A]),
        fletcher-uncover(from: 2, edge("d,r,u,l", "-|>", [x], label-pos: 0.1))
      )
      
      Below diagram
    ]
    

##  Comparison with other slides packages

Performance: minideck is currently faster than [ Polylux
](https://typst.app/universe/package/polylux/) when using ` pause ` ,
especially for incremental compilation, but a bit slower than [ Touying
](https://typst.app/universe/package/touying) , according to my tests.

Features: Polylux and Touying have more themes and more features, for example
support for [ pdfpc ](https://pdfpc.github.io/) which provides speaker notes
and more. Minideck allows using ` uncover ` and ` only ` in CeTZ figures and
fletcher diagrams, which Polylux currently doesnât support.

Syntax: package configuration is simpler in minideck than Touying but a bit
more involved than in Polylux. The minideck ` pause ` is more cumbersome to
use: one must write ` #show: pause ` instead of ` #pause ` . On the other hand
minideckâs ` uncover ` and ` only ` can be used directly in equations
without requiring a special math environment as in Touying (I think).

Other: minideck sometimes has better error messages than Touying due to
implementation differences: the minideck stack trace points back to the
userâs code while Touying errors sometimes point only to an output page
number.

##  Limitations

  * ` pause ` , ` uncover ` and ` only ` work in enumerations but they require explicit enum indices ( ` 1. ... ` rather than ` + ... ` ) as they cause a reset of the list index. 
  * Usage in a CeTZ canvas or fletcher diagram requires a ` context ` keyword in front of the ` canvas ` / ` diagram ` call (see above). 
  * fletcher diagrams also require to specify the number of subslides explicitly (see above). 
  * ` pause ` doesnât work in CeTZ figures, fletcher diagrams and math mode. 
  * ` pause ` requires writing ` #show: pause ` and its effect is lost after the ` #show ` call goes out of scope. For example this means that one can use ` pause ` inside of a grid, but further ` pause ` calls after the grid (in the same slide) wonât work as intended. 

##  Internals

The package uses states with the following keys:

` __minideck-subslide-count ` : an array of two integers for counting pauses
and keeping track of the subslide number automatically. The first value is the
number of subslides so far referenced in current slide. The second value is
the number of pauses seen so far in the current slide. Both values are kept in
one state so that an update function can update the number of subslides based
on the number of pauses, without requiring a context. This avoids problems
with layout convergence.

` __minideck-subslide-step ` : the current subslide being generated while
processing a slide.

###  How to add

Copy this into your project and use the import as  ` minideck `

    
    
    #import "@preview/minideck:0.2.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jeremie Knuesel ](https://github.com/knuesel)
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     July 1, 2024 
First released:

     July 1, 2024 
Archive size:

     10.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/minideck-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/knuesel/typst-minideck)
Categor  y  :

    

  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  package  is a project of  Jeremie Knuesel  .  Report issues on  [ their
repository ](https://github.com/knuesel/typst-minideck) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  July 1, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

