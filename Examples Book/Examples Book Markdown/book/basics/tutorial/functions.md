#  Functions

##  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

##  More functions

    
    
    #underline[functions can do everything!]
    
    #text(orange)[L]ike #text(size: 0.8em)[Really] #sub[E]verything!
    
    #figure(
      caption: [
        This is a screenshot from one of first theses written in Typst. \
        _All these things are written with #text(blue)[custom functions] too._
      ],
      image("../boxes.png", width: 80%)
    )
    
    In fact, you can #strong[forget] about markup
    and #emph[just write] functions everywhere!
    
    #list[
      All that markup is just a #emph[syntax sugar] over functions!
    ]

![Rendered image](typst-
img/455e15e83c25259f932178d68517cc012432cb17d072e60c659169470fe191ce-1.svg)

##  How to call functions

    
    
    First, start with `#`. Then write the name.
    Finally, write some parentheses and maybe something inside.
    
    You can navigate lots of built-in functions
    in #link("https://typst.app/docs/reference/")[Official Reference].
    
    #quote(block: true, attribution: "Typst Examples Book")[
      That's right, links, quotes and lots of
      other document elements are created with functions.
    ]

![Rendered image](typst-
img/4c63fde73bb1ad0afe1332ab68c5b540ec786c6352a76860f4398fec32034cf0-1.svg)

##  Function arguments

    
    
    There are _two types_ of function arguments:
    
    + *Positional.* Like `50` in `lorem(50)`.
      Just write them in parentheses and it will be okay.
      If you have many, use commas.
    + *Named.* Like in `#quote(attribution: "Whoever")`.
      Write the value after a name and a colon.
    
    If argument is named, it has some _default value_.
    To find out what it is, see
    #link("https://typst.app/docs/reference/")[Official Typst Reference].

![Rendered image](typst-
img/d66fb474260490595a207f06c687efcc85808701c39c2a6e8b686bc22ffde279-1.svg)

##  Content

    
    
    The most "universal" type in Typst language is *content*.
    Everything you write in the document becomes content.
    
    #[
      But you can explicitly create it with
      _scripting mode_ and *square brackets*.
    
      There, in square brackets, you can use any markup
      functions or whatever you want.
    ]

![Rendered image](typst-
img/faf9d7cddd55e68f84d212013a52a724c2ad763f18d83221a99bbd380410d7d1-1.svg)

##  Markup and code modes

    
    
    When you use `#`, you are "switching" to code mode.
    When you use `[]`, you turn back:
    
    // +-- going from markup (the default mode) to scripting for that function
    // |                 +-- scripting mode: calling `text`, the last argument is markup
    // |     first arg   |
    // v     vvvvvvvvv   vvvv
       #rect(width: 5cm, text(red)[hello *world*])
    //  ^^^^                       ^^^^^^^^^^^^^ just a markup argument for `text`
    //  |
    //  +-- calling `rect` in scripting mode, with two arguments: width and other content

![Rendered image](typst-
img/0cabe3da1eb49f805535fb1d7e34a0d6eb1a6c49227b0be98634c6965e892185-1.svg)

##  Passing content into functions

    
    
    So what are these square brackets after functions?
    
    If you *write content right after
    function, it will be passed as positional argument there*.
    
    #quote(block: true)[
      So #text(red)[_that_] allows me to write
      _literally anything in things
      I pass to #underline[functions]!_
    ]

![Rendered image](typst-
img/686d2b2a361a60244452ce53bd37ebef0699e92cf962c477bfb62bafdc0f7241-1.svg)

##  Passing content, part II

    
    
    So, just to make it clear, when I write
    
    ```typ
    - #text(red)[red text]
    - #text([red text], red)
    - #text("red text", red)
    //      ^        ^
    // Quotes there mean a plain string, not a content!
    // This is just text.
    ```
    
    It all will result in a #text([red text], red).

![Rendered image](typst-
img/4686939b6d0932f1ebebac4111d8f02919dbc16446def7855c521d8dbf293689-1.svg)

