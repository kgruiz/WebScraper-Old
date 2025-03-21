#  Project structure

##  Large document

Once the document becomes large enough, it becomes harder to navigate it. If
you haven't reached that size yet, you can ignore that section.

For managing that I would recommend splitting your document into _chapters_ .
It is just a way to work with this, but once you understand how it works, you
can do anything you want.

Let's say you have two chapters, then the recommended structure will look like
this:

    
    
    #import "@preview/treet:0.1.1": *
    
    #show list: tree-list
    #set par(leading: 0.8em)
    #show list: set text(font: "DejaVu Sans Mono", size: 0.8em)
    - chapters/
      - chapter_1.typ
      - chapter_2.typ
    - main.typ 👁 #text(gray)[← document entry point]
    - template.typ

![Rendered image](typst-
img/291489e71b40beea77872ad05adb609349872e9a11fc3a9c3f2008c88e37c9d5-1.svg)

The exact file names are up to you.

Let's see what to put in each of these files.

###  Template

In the "template" file goes _all useful functions and variables_ you will use
across the chapters. If you have your own template or want to write one, you
can write it there.

    
    
    // template.typ
    
    #let template = doc => {
        set page(header: "My super document")
        show "physics": "magic"
        doc
    }
    
    #let info-block = block.with(stroke: blue, fill: blue.lighten(70%))
    #let author = "@sitandr"

###  Main

**This file should be compiled** to get the whole compiled document.

    
    
    // main.typ
    
    #import "template.typ": *
    // if you have a template
    #show: template
    
    = This is the document title
    
    // some additional formatting
    
    #show emph: set text(blue)
    
    // but don't define functions or variables there!
    // chapters will not see it
    
    // Now the chapters themselves as some Typst content
    #include("chapters/chapter_1.typ")
    #include("chapters/chapter_1.typ")

###  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

##  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

##  Cyclic imports

**Important:** Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.

