#  Basics

##  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

##  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

##  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

###  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)

