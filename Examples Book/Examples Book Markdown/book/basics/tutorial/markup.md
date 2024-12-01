#  Markup language

##  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

##  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

##  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

##  Comments & codeblocks

    
    
    You can write comments with `//` and `/* comment */`:
    // Like this
    /* Or even like
    this */
    
    ```typ
    Just in case you didn't read source,
    this is how it is written:
    
    // Like this
    /* Or even like
    this */
    
    By the way, I'm writing it all in a _fenced code block_ with *syntax highlighting*!
    ```

![Rendered image](typst-
img/a481d12b3ed0bbe2d9db6cc4b4a1237cba9936de83333254dfce8702832db125-1.svg)

##  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

##  Lists

    
    
    - Writing lists in a simple way is great.
    - Nothing complex, start your points with `-`
      and this will become a list.
      - Indented lists are created via indentation.
    
    + Numbered lists start with `+` instead of `-`.
    + There is no alternative markup syntax for lists
    + So just remember `-` and `+`, all other symbols
      wouldn't work in an unintended way.
      + That is a general property of Typst's markup.
      + Unlike Markdown, there is only one way
        to write something with it.

![Rendered image](typst-
img/ad4e424e067a4362e9f145c0c4ba4b7c1b65e17e7d0e7631b6836841607ef85e-1.svg)

**Notice:**

    
    
    Typst numbered lists differ from markdown-like syntax for lists. If you write them by hand, numbering is preserved:
    
    1. Apple
    1. Orange
    1. Peach

![Rendered image](typst-
img/477695c86becc136dceb144e90c0acd2b75faa2a49743f8673d09974b71da324-1.svg)

##  Math

    
    
    I will just mention math ($a + b/c = sum_i x^i$)
    is possible and quite pretty there:
    
    $
    7.32 beta +
      sum_(i=0)^nabla
        (Q_i (a_i - epsilon)) / 2
    $
    
    To learn more about math, see corresponding chapter.

![Rendered image](typst-
img/12cc318c8438cd8e91706013bbd53fee5ee004620a63348cfe2d7dcc3b8a19d4-1.svg)

