

= *Examples Book Markdown*



= *book.md*

=  Typst Examples Book

This book provides an extended _tutorial_ and lots of [ Typst
](https://github.com/typst/typst) snippets that can help you to write better
Typst code.

This is an unofficial book. Some snippets & suggestions here may be outdated
or useless (please let me know if you find some).

However, _all of them should compile on last version of Typst 1  _ .

*CAUTION:* the book is (probably forever) a *WIP* , so don't rely on it.

If you like it, consider [ giving a star on GitHub
](https://github.com/sitandr/typst-examples-book) !

This will help me to stay motivated and continue working on this book.

==  Navigation

The book consists of several chapters, each with its own goal:

  1. [ Typst Basics ](./basics/index.html)
  2. [ Typst Snippets ](./snippets/index.html)
  3. [ Typst Packages ](./packages/index.html)
  4. [ Typstonomicon ](./typstonomicon/index.html)

==  Contributions

Any contributions are very welcome! If you have a good code snippet that you
want to share, feel free to submit an issue with snippet or make a PR in the [
repository ](https://github.com/sitandr/typst-examples-book) .

I will especially appreciate submissions of active community members and
compiler contributors!

However, I will also really appreciate feedback from beginners to make the
book as comprehensible as possible!

==  Acknowledgements

Thanks to everyone in the community who published their code snippets!

If someone doesn't like their code and/or name being published, please contact
me.

1

When a new version launches, it may take some time to update the book, feel
free to tag me to speed up the process.



= *book/print.md*

=  Typst Examples Book

This book provides an extended _tutorial_ and lots of [ Typst
](https://github.com/typst/typst) snippets that can help you to write better
Typst code.

This is an unofficial book. Some snippets & suggestions here may be outdated
or useless (please let me know if you find some).

However, _all of them should compile on last version of Typst 1  _ .

*CAUTION:* the book is (probably forever) a *WIP* , so don't rely on it.

If you like it, consider [ giving a star on GitHub
](https://github.com/sitandr/typst-examples-book) !

This will help me to stay motivated and continue working on this book.

==  Navigation

The book consists of several chapters, each with its own goal:

  1. [ Typst Basics ](./basics/index.html)
  2. [ Typst Snippets ](./snippets/index.html)
  3. [ Typst Packages ](./packages/index.html)
  4. [ Typstonomicon ](./typstonomicon/index.html)

==  Contributions

Any contributions are very welcome! If you have a good code snippet that you
want to share, feel free to submit an issue with snippet or make a PR in the [
repository ](https://github.com/sitandr/typst-examples-book) .

I will especially appreciate submissions of active community members and
compiler contributors!

However, I will also really appreciate feedback from beginners to make the
book as comprehensible as possible!

==  Acknowledgements

Thanks to everyone in the community who published their code snippets!

If someone doesn't like their code and/or name being published, please contact
me.

1

When a new version launches, it may take some time to update the book, feel
free to tag me to speed up the process.

=  Typst Basics

This is a chapter that consistently introduces you to the most things you need
to know when writing with Typst.

It show much more things than official tutorial, so maybe it will be
interesting to read for some of the experienced users too.

Some examples are taken from [ Official Tutorial
](https://typst.app/docs/tutorial/) and [ Official Reference
](https://typst.app/docs/reference/) . Most are created and edited specially
for this book.

> _Important:_ in most cases there will be used "clipped" examples of your
> rendered documents (no margins, smaller width and so on).
>
> To set up the spacing as you want, see [ Official Page Setup Guide
> ](https://typst.app/docs/guides/page-setup-guide/) .

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](basics/tutorial/typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and _bold_ text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](basics/tutorial/typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](basics/tutorial/typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
    You can write comments with `//` and `/* comment _/`:
    // Like this
    /_ Or even like
    this _/
    
    ```typ
    Just in case you didn't read source,
    this is how it is written:
    
    // Like this
    /_ Or even like
    this */
    
    By the way, I'm writing it all in a _fenced code block_ with _syntax highlighting_!
    ```

![Rendered image](basics/tutorial/typst-
img/a481d12b3ed0bbe2d9db6cc4b4a1237cba9936de83333254dfce8702832db125-1.svg)

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](basics/tutorial/typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

![Rendered image](basics/tutorial/typst-
img/ad4e424e067a4362e9f145c0c4ba4b7c1b65e17e7d0e7631b6836841607ef85e-1.svg)

*Notice:*

    
    
    Typst numbered lists differ from markdown-like syntax for lists. If you write them by hand, numbering is preserved:
    
    1. Apple
    1. Orange
    1. Peach

![Rendered image](basics/tutorial/typst-
img/477695c86becc136dceb144e90c0acd2b75faa2a49743f8673d09974b71da324-1.svg)

==  Math

    
    
    I will just mention math ($a + b/c = sum_i x^i$)
    is possible and quite pretty there:
    
    $
    7.32 beta +
      sum_(i=0)^nabla
        (Q_i (a_i - epsilon)) / 2
    $
    
    To learn more about math, see corresponding chapter.

![Rendered image](basics/tutorial/typst-
img/12cc318c8438cd8e91706013bbd53fee5ee004620a63348cfe2d7dcc3b8a19d4-1.svg)

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are _lots of magic_ in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and _some function name_
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That _function_ just generated 50 "Lorem Ipsum" words!_

![Rendered image](basics/tutorial/typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

![Rendered image](basics/tutorial/typst-
img/455e15e83c25259f932178d68517cc012432cb17d072e60c659169470fe191ce-1.svg)

==  How to call functions

    
    
    First, start with `#`. Then write the name.
    Finally, write some parentheses and maybe something inside.
    
    You can navigate lots of built-in functions
    in #link("https://typst.app/docs/reference/")[Official Reference].
    
    #quote(block: true, attribution: "Typst Examples Book")[
      That's right, links, quotes and lots of
      other document elements are created with functions.
    ]

![Rendered image](basics/tutorial/typst-
img/4c63fde73bb1ad0afe1332ab68c5b540ec786c6352a76860f4398fec32034cf0-1.svg)

==  Function arguments

    
    
    There are _two types_ of function arguments:
    
    + _Positional._ Like `50` in `lorem(50)`.
      Just write them in parentheses and it will be okay.
      If you have many, use commas.
    + _Named._ Like in `#quote(attribution: "Whoever")`.
      Write the value after a name and a colon.
    
    If argument is named, it has some _default value_.
    To find out what it is, see
    #link("https://typst.app/docs/reference/")[Official Typst Reference].

![Rendered image](basics/tutorial/typst-
img/d66fb474260490595a207f06c687efcc85808701c39c2a6e8b686bc22ffde279-1.svg)

==  Content

    
    
    The most "universal" type in Typst language is _content_.
    Everything you write in the document becomes content.
    
    #[
      But you can explicitly create it with
      _scripting mode_ and _square brackets_.
    
      There, in square brackets, you can use any markup
      functions or whatever you want.
    ]

![Rendered image](basics/tutorial/typst-
img/faf9d7cddd55e68f84d212013a52a724c2ad763f18d83221a99bbd380410d7d1-1.svg)

==  Markup and code modes

    
    
    When you use `#`, you are "switching" to code mode.
    When you use `[]`, you turn back:
    
    // +-- going from markup (the default mode) to scripting for that function
    // |                 +-- scripting mode: calling `text`, the last argument is markup
    // |     first arg   |
    // v     vvvvvvvvv   vvvv
       #rect(width: 5cm, text(red)[hello _world_])
    //  ^^^^                       ^^^^^^^^^^^^^ just a markup argument for `text`
    //  |
    //  +-- calling `rect` in scripting mode, with two arguments: width and other content

![Rendered image](basics/tutorial/typst-
img/0cabe3da1eb49f805535fb1d7e34a0d6eb1a6c49227b0be98634c6965e892185-1.svg)

==  Passing content into functions

    
    
    So what are these square brackets after functions?
    
    If you _write content right after
    function, it will be passed as positional argument there_.
    
    #quote(block: true)[
      So #text(red)[_that_] allows me to write
      _literally anything in things
      I pass to #underline[functions]!_
    ]

![Rendered image](basics/tutorial/typst-
img/686d2b2a361a60244452ce53bd37ebef0699e92cf962c477bfb62bafdc0f7241-1.svg)

==  Passing content, part II

    
    
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

![Rendered image](basics/tutorial/typst-
img/4686939b6d0932f1ebebac4111d8f02919dbc16446def7855c521d8dbf293689-1.svg)

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](basics/tutorial/typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](basics/tutorial/typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](basics/tutorial/typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](basics/tutorial/typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](basics/tutorial/typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](basics/tutorial/typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](basics/tutorial/typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](basics/tutorial/typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](basics/tutorial/typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](basics/tutorial/typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](basics/tutorial/typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](basics/tutorial/typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](basics/tutorial/../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](basics/must_know/typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](basics/must_know/typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](basics/must_know/typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](basics/must_know/typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](basics/must_know/typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](basics/must_know/typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](basics/must_know/typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](basics/must_know/typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](basics/must_know/typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](basics/must_know/typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](basics/must_know/typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](basics/must_know/typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](basics/must_know/typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](basics/must_know/typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

=  Placing, Moving, Scale & Hide

This is *a very important section* if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](basics/must_know/typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](basics/must_know/typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](basics/must_know/typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](basics/must_know/typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](basics/must_know/typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](basics/must_know/typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](basics/must_know/typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](basics/must_know/typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there
](basics/must_know/../scripting/arguments.html) ) may be especially useful for
the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](basics/must_know/typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](basics/must_know/typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](basics/must_know/typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](basics/must_know/typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](basics/must_know/typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](basics/must_know/typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](basics/must_know/typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)

=  Project structure

==  Large document

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

![Rendered image](basics/must_know/typst-
img/291489e71b40beea77872ad05adb609349872e9a11fc3a9c3f2008c88e37c9d5-1.svg)

The exact file names are up to you.

Let's see what to put in each of these files.

===  Template

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

===  Main

*This file should be compiled* to get the whole compiled document.

    
    
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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

*Important:* Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.

=  Scripting

*Typst* has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](basics/scripting/typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](basics/scripting/typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](basics/scripting/../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](basics/scripting/typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](basics/scripting/typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](basics/scripting/typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](basics/scripting/typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

*Important:* It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](basics/scripting/typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

*This is a very important thing to remember* .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](basics/scripting/typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

*Important* : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](basics/scripting/typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](basics/scripting/typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](basics/scripting/typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](basics/scripting/typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

*Important:* It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](basics/scripting/typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](basics/scripting/typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](basics/scripting/typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](basics/scripting/typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](basics/scripting/typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](basics/scripting/typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](basics/scripting/typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](basics/scripting/typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](basics/scripting/typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](basics/scripting/typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](basics/scripting/typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)

=  Types, part II

In Typst, most of things are *immutable* . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](basics/scripting/typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](basics/scripting/typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](basics/scripting/typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](basics/scripting/typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](basics/scripting/typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](basics/scripting/typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](basics/scripting/typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](basics/scripting/typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](basics/scripting/typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section
](basics/scripting/./types.html#boolean-bool) :

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](basics/scripting/typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](basics/scripting/typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](basics/scripting/typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](basics/scripting/typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](basics/scripting/typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](basics/scripting/typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](basics/scripting/typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](basics/scripting/typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](basics/scripting/typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](basics/scripting/typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](basics/scripting/typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](basics/scripting/typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](basics/scripting/typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](basics/scripting/typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries *the order may
matter* , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](basics/scripting/typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](basics/scripting/typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](basics/scripting/typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

*THIS DOES NOT COMPILE:* Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](basics/states/typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](basics/states/typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](basics/states/typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](basics/states/typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;*Never allow colliding states.* _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](basics/states/typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](basics/states/typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](basics/states/typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](basics/states/typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](basics/states/typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](basics/states/typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](basics/states/typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](basics/states/typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      _Theorem #c.display():_
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](basics/states/typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)

=  Measure, Layout

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

==  Style & Measure

> Style [ documentation ](https://typst.app/docs/reference/foundations/style/)
> .

> Measure [ documentation ](https://typst.app/docs/reference/layout/measure/)
> .

` measure  ` returns _the element size_ . This command is extremely helpful
when doing custom layout with ` place  ` .

However, there is a catch. Element size depends on styles, applied to this
element.

    
    
    #let content = [Hello!]
    #content
    #set text(14pt)
    #content

![Rendered image](basics/typst-
img/00a6cbbc650947c03f34564786b0645eee60396f288d26333c591ff9059cc369-1.svg)

So if we will set the big text size for some part of our text, to measure the
element's size, we have to know _where the element is located_ . Without
knowing it, we can't tell what styles should be applied.

So we need a scheme similar to ` locate  ` .

This is what ` styles  ` function is used for. It is _a content_ , which, when
located in document, calls a function inside on _current styles_ .

Now, when we got fixed ` styles  ` , we can get the element's size using `
measure  ` :

    
    
    #let thing(body) = style(styles => {
      let size = measure(body, styles)
      [Width of "#body" is #size.width]
    })
    
    #thing[Hey] \
    #thing[Welcome]

![Rendered image](basics/typst-
img/5afe1855072b4ee8e343e5b5aa79affae5b17bc89738ffbe93dac245576cdd04-1.svg)

=  Layout

Layout is similar to ` measure  ` , but it returns current scope *parent
size* .

If you are putting elements in block, that will be block's size. If you are
just putting right on the page, that will be page's size.

As parent's size depends on it's place in document, it uses the similar scheme
to ` locate  ` and ` style  ` :

    
    
    #layout(size => {
      let half = 50% * size.width
      [Half a page is #half wide.]
    })

![Rendered image](basics/typst-
img/c68a166f6e6b1b3229fd56478ae302dbeb39c882e229c69d4c6ebb6c9c528985-1.svg)

It may be extremely useful to combine ` layout  ` with ` measure  ` , to get
width of things that depend on parent's size:

    
    
    #let text = lorem(30)
    #layout(size => style(styles => [
      #let (height,) = measure(
        block(width: size.width, text),
        styles,
      )
      This text is #height high with
      the current page width: \
      #text
    ]))
      #let (height,) = measure(
        block(width: size.width, text),
        styles,
      )
      This text is #height high with
      the current page width: \
      #text
    ]))

![Rendered image](basics/typst-
img/93167dc0b22b02fe27aa92c6b03c2281665b4352624364a19c63f61a488aa75a-1.svg)

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    _Here._ <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](basics/states/typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](basics/states/typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](basics/states/typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](basics/math/typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](basics/math/typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](basics/math/typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they *may be user-defined variables/functions* . If the command *isn't defined* , there will be *compilation error* . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](basics/math/typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](basics/math/typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](basics/math/typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](basics/math/typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](basics/math/typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](basics/math/typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](basics/math/typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](basics/math/typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](basics/math/typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](basics/math/typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](basics/math/typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](basics/math/typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= *book/packages.md*

=  Packages

Once the [ Typst Universe ](https://typst.app/universe) was launched, this
chapter has become almost redundant. The Universe is actually a very cool
place to look for packages.

However, there are still some cool examples of interesting package usage.

==  General

Typst has packages, but, unlike LaTeX, you need to remember:

  - You need them only for some specialized tasks, basic formatting _can be totally done without them_ . 
  - Packages are much lighter and much easier "installed" than LaTeX ones. 
  - Packages are just plain Typst files (and sometimes plugins), so you can easily write your own! 

To use mighty package, just write, like this:

    
    
    #import "@preview/cetz:0.1.2": canvas, plot
    
    #canvas(length: 1cm, {
      plot.plot(size: (8, 6),
        x-tick-step: none,
        x-ticks: ((-calc.pi, $-pi$), (0, $0$), (calc.pi, $pi$)),
        y-tick-step: 1,
        {
          plot.add(
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.sin(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos((x + calc.pi) * 1rad))
        })
    })

![Rendered image](typst-
img/29d7015ed96122fa3fb663929c1ac58d25340995423c82456ab8815811373979-1.svg)

==  Contributing

If you are author of a package or just want to make a fair overview, feel free
to make issues/PR-s!



= *book/about.md*

=  Typst Examples Book

This book provides an extended _tutorial_ and lots of [ Typst
](https://github.com/typst/typst) snippets that can help you to write better
Typst code.

This is an unofficial book. Some snippets & suggestions here may be outdated
or useless (please let me know if you find some).

However, _all of them should compile on last version of Typst 1  _ .

*CAUTION:* the book is (probably forever) a *WIP* , so don't rely on it.

If you like it, consider [ giving a star on GitHub
](https://github.com/sitandr/typst-examples-book) !

This will help me to stay motivated and continue working on this book.

==  Navigation

The book consists of several chapters, each with its own goal:

  1. [ Typst Basics ](./basics/index.html)
  2. [ Typst Snippets ](./snippets/index.html)
  3. [ Typst Packages ](./packages/index.html)
  4. [ Typstonomicon ](./typstonomicon/index.html)

==  Contributions

Any contributions are very welcome! If you have a good code snippet that you
want to share, feel free to submit an issue with snippet or make a PR in the [
repository ](https://github.com/sitandr/typst-examples-book) .

I will especially appreciate submissions of active community members and
compiler contributors!

However, I will also really appreciate feedback from beginners to make the
book as comprehensible as possible!

==  Acknowledgements

Thanks to everyone in the community who published their code snippets!

If someone doesn't like their code and/or name being published, please contact
me.

1

When a new version launches, it may take some time to update the book, feel
free to tag me to speed up the process.



= *book/snippets/pretty.md*

=  Pretty things

==  Set bar to the text's left

(also known as quote formatting)

    
    
    #let line-block = rect.with(fill: luma(240), stroke: (left: 0.25em))
    
    + #lorem(10) \
      #line-block[
        _Solution:_ #lorem(10)
    
        $ a_(n+1)x^n = 2... $
      ]

![Rendered image](typst-
img/fcddd92f117eeeb99d7b422dfc0c20a254e163e09fc5b80251a088771792ff5a-1.svg)

==  Text on box top

    
    
    // author: gaiajack
    #let todo(body) = block(
      above: 2em, stroke: 0.5pt + red,
      width: 100%, inset: 14pt
    )[
      #set text(font: "Noto Sans", fill: red)
      #place(
        top + left,
        dy: -6pt - 14pt, // Account for inset of block
        dx: 6pt - 14pt,
        block(fill: white, inset: 2pt)[*DRAFT*]
      )
      #body
    ]
    
    #todo(lorem(100))

![Rendered image](typst-
img/7a5d79c63f3a0b28ec6bdec78da80d81252ff1975b883162c84b813f938c94c0-1.svg)

==  Book Ornament

    
    
    // author: thevec
    
    #let parSepOrnament = [\ \ #h(1fr) $#line(start:(0em,-.15em), end:(12em,-.15em), stroke: (cap: "round", paint:gradient.linear(white,black,white))) #move(dx:.5em,dy:0em,"🙠")#text(15pt)[🙣] #h(0.4em) #move(dy:-0.25em,text(12pt)[✢]) #h(0.4em) #text(15pt)[🙡]#move(dx:-.5em,dy:0em,"🙢") #line(start:(0em,-.15em), end:(12em,-.15em), stroke: (cap: "round", paint:gradient.linear(white,black,white)))$ #h(1fr)\ \ ];
    
    #lorem(30)
    #parSepOrnament
    #lorem(30)

![Rendered image](typst-
img/ad56a859952fab3706dcb76434e492a9c14057bff1ee897ae2bfe3672fe17e18-1.svg)



= *book/snippets/numbering.md*

=  Numbering

==  Individual heading without numbering

    
    
    #let numless(it) = {set heading(numbering: none); it }
    
    = Heading
    #numless[=No numbering heading]

![Rendered image](typst-
img/e04f844b270049702ac72dff7bfadf5963cdb2bc8a541e81b685124fbb61c48e-1.svg)

==  "Clean" numbering

    
    
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

==  Math numbering

See [ there ](./math/numbering.html) .

==  Numbering each paragraph

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



= *book/snippets/logos.md*

=  Logos & Figures

Using SVG-s images is totally fine. Totally. But if you are lazy and don't
want to search for images, here are some logos you can just copy-paste in your
document.

*Important* : _Typst in text doesn't need a special writing (unlike LaTeX)_
. Just write "Typst", maybe " *Typst* ", and it is okay.

==  TeX and LaTeX

    
    
    #let TeX = {
      set text(font: "New Computer Modern", weight: "regular")
      box(width: 1.7em, {
        [T]
        place(top, dx: 0.56em, dy: 0.22em)[E]
        place(top, dx: 1.1em)[X]
      })
    }
    
    #let LaTeX = {
      set text(font: "New Computer Modern", weight: "regular")
      box(width: 2.55em, {
        [L]
        place(top, dx: 0.3em, text(size: 0.7em)[A])
        place(top, dx: 0.7em)[#TeX]
      })
    }
    
    Typst is not that hard to learn when you know #TeX and #LaTeX.

![Rendered image](typst-
img/9432efecd4502f681e3582d8581d0c325e0a89729d57b6d4bea732c2b9f476ec-1.svg)

==  Typst guy

    
    
    // author: fenjalien
    #import "@preview/cetz:0.1.2": *
    
    #set page(width: auto, height: auto)
    
    #canvas(length: 1pt, {
      import draw: *
      let color = rgb("239DAD")
      scale((y: -1))
      set-style(fill: color, stroke: none,)
    
      // body
      merge-path({
        bezier(
          (112.847, 134.007),
          (114.835, 143.178),
          (112.847, 138.562),
          (113.509, 141.619),
          name: "b"
        )
        bezier(
          "b.end",
          (122.063, 145.515),
          (116.16, 144.736),
          (118.569, 145.515),
          name: "b"
        )
        bezier(
          "b.end",
          (135.977, 140.121),
          (125.677, 145.515),
          (130.315, 143.717)
        )
        bezier(
          (139.591, 146.055),
          (113.389, 159.182),
          (128.99, 154.806),
          (120.256, 159.182),
          name: "b"
        )
        bezier(
          "b.end",
          (97.1258, 154.327),
          (106.522, 159.182),
          (101.101, 157.563),
          name: "b"
        )
        bezier(
          "b.end",
          (91.1626, 136.704),
          (93.1503, 150.97),
          (91.1626, 145.096),
          name: "b"
        )
        line(
          (rel: (0, -47.1126), to: "b.end"),
          (rel: (-9.0352, 0)),
          (80.6818, 82.9381),
          (91.1626, 79.7013),
          (rel: (0, -8.8112)),
          (112.847, 61),
          (rel: (0, 19.7802)),
          (134.17, 79.1618),
          (132.182, 90.8501),
          (112.847, 90.1309)
        )
      })
    
      // left pupil
      merge-path({
        bezier(
          (70.4667, 65.6833),
          (71.9727, 70.5068),
          (71.4946, 66.9075),
          (71.899, 69.4091)
        )
        bezier(
          (71.9727, 70.5068),
          (75.9104, 64.5912),
          (72.9675, 69.6715),
          (75.1477, 67.319)
        )
        bezier(
          (75.9104, 64.5912),
          (72.0556, 60.0005),
          (76.8638, 61.1815),
          (74.4045, 59.7677)
        )
        bezier(
          (72.0556, 60.0005),
          (66.833, 64.3859),
          (70.1766, 60.1867),
          (67.7909, 63.0017)
        )
        bezier(
          (66.833, 64.3859),
          (70.4667, 65.6833),
          (67.6159, 64.3083),
          (69.4388, 64.4591)
        )
      })
    
      // right pupil
      merge-path({
        bezier(
          (132.37, 61.668),
          (133.948, 66.7212),
          (133.447, 62.9505),
          (133.87, 65.5712)
        )
        bezier(
          (133.948, 66.7212),
          (138.073, 60.5239),
          (134.99, 65.8461),
          (137.274, 63.3815)
        )
        bezier(
          (138.073, 60.5239),
          (134.034, 55.7145),
          (139.066, 56.9513),
          (136.495, 55.4706)
        )
        bezier(
          (134.034, 55.7145),
          (128.563, 60.3087),
          (132.066, 55.9066),
          (129.567, 58.8586),
        )
        bezier(
          (128.563, 60.3087),
          (132.37, 61.668),
          (129.383, 60.2274),
          (131.293, 60.3855),
        )
      })
    
      set-style(
        stroke: (paint: rgb("239DAD"), thickness: 6pt, cap: "round"),
        fill: none,
      )
    
      // left eye
      merge-path({
        bezier(
          (58.5, 64.7273),
          (73.6136, 52),
          (58.5, 58.3636),
          (64.0682, 52.7955),
          name: "b"
        )
        bezier(
          "b.end",
          (84.75, 64.7273),
          (81.5682, 52),
          (84.75, 57.5682),
          name: "b"
        )
        bezier(
          "b.end",
          (71.2273, 76.6591),
          (84.75, 71.8864),
          (79.1818, 76.6591),
          name: "b"
        )
        bezier(
          "b.end",
          (58.5, 64.7273),
          (63.2727, 76.6591),
          (58.5, 71.0909)
        )
      })
      // eye lash
      line(
        (62.5, 55),
        (59.5, 52),
      )
    
      merge-path({
        bezier(
          (146.5, 61.043),
          (136.234, 49),
          (146.5, 52.7634),
          (141.367, 49)
        )
        bezier(
          (136.234, 49),
          (121.569, 62.5484),
          (125.969, 49),
          (120.836, 54.2688)
        )
        bezier(
          (121.569, 62.5484),
          (134.034, 72.3333),
          (122.302, 70.8279),
          (128.168, 72.3333)
        )
        bezier(
          (134.034, 72.3333),
          (146.5, 61.043),
          (139.901, 72.3333),
          (146.5, 69.3225)
        )
      })
    
      set-style(stroke: (thickness: 4pt))
    
      // right arm
      merge-path({
        bezier(
          (109.523, 115.614),
          (127.679, 110.918),
          (115.413, 115.3675),
          (122.283, 113.112)
        )
        bezier(
          (127.679, 110.918),
          (137, 106.591),
          (130.378, 109.821),
          (132.708, 108.739)
        )
      })
    
      // right first finger
      bezier(
        (137, 106.591),
        (140.5, 98.0908),
        (137.385, 102.891),
        (138.562, 99.817)
      )
    
      // right second finger
      bezier(
        (137, 106.591),
        (146, 101.591),
        (139.21, 103.799),
        (142.425, 101.713)
      )
    
      // right third finger
      line(
        (137, 106.591),
        (148, 106.591)
      )
    
      //right forth finger
      bezier(
        (137, 106.591),
        (146, 111.091),
        (140.243, 109.552),
        (143.119, 110.812)
      )
    
      // left arm
      bezier(
        (95.365, 116.979),
        (73.5, 107.591),
        (88.691, 115.549),
        (80.587, 112.887)
      )
    
      // left first finger
      line(
        (73.5, 107.591),
        (rel: (0, -9.5))
      )
      // left second finger
      line(
        (73.5, 107.591),
        (65.396, 100.824)
      )
      // left third finger
      line(
        (73.5, 107.591),
        (63.012, 105.839)
      )
      // left fourth finger
      bezier(
        (73.5, 107.591),
        (63.012, 111.04),
        (70.783, 109.121),
        (67.214, 111.255)
      )
    })

![Rendered image](typst-
img/4a142b60394d5730a373a7ee2229a3a42a8af8f31b314c70b5bd192210982b09-1.svg)



= *book/snippets/external.md*

=  Use with external tools

Currently the best ways to communicate is using

  1. Preprocessing. The tool should generate Typst file 
  2. Typst Query (CLI). See the docs [ there ](https://typst.app/docs/reference/meta/query#command-line-queries) . 
  3. WebAssembly plugins. See the docs [ there ](https://typst.app/docs/reference/foundations/plugin/) . 

In some time there will be examples of successful usage of first two methods.
For the third one, see [ packages ](../packages/index.html) .



= *book/snippets/grids.md*

==  Fractional grids

For tables with lines of changing length, you can try using _grids in grids_ .

Don't use this where [ cell.colspan and rowspan
](https://typst.app/docs/reference/model/table/#definitions-cell-colspan) will
do.

    
    
    // author: jimpjorps
    
    #grid(
      columns: (1fr,),
      grid(
        columns: (1fr,)*2, inset: 5pt, stroke: 1pt, [hello], [world]
      ),
      grid(
        columns: (1fr,)*3, inset: 5pt, stroke: 1pt, [foo], [bar], [baz]
      ),
      grid.cell(inset: 5pt, stroke: 1pt)[abcxyz]
    )

![Rendered image](typst-
img/5b2869a2b2efca1af57cb7ed6fab90ad0c83a35b76c05258a1ae64096d5a8173-1.svg)

==  Automerge adjacent cells with same values

This example works for adjacent cells horizontally, but it's not hard to
upgrade it to columns too.

    
    
    // author: tebine
    #let merge(children, n-cols) = {
      let rows = children.chunks(n-cols)
      let new-children = ()
      for r in rows {
        // First group starts at index 0
        let i = 0 
        // Search next group
        while i < r.len() {
          // Group starts with one cell
          let c = r.at(i).body
          let n = 1
          for j in range(i+1, r.len()) {
            let c-next = r.at(j).body
            if c-next == c {
              // Add cell to group
              n += 1
            } else {
              break
            }
          }
          // Group is finished
          new-children.push(table.cell(colspan: n, c))
          i += n
        }
      }
      return new-children
    }
    #show table: it => {
      let merged = merge(it.children, it.columns.len())
      if it.children.len() == merged.len() { // trick to avoid recursion
        return it
      }
      table(columns: it.columns.len(), ..merged)
    }
    #table(columns: 2,
      [1], [2],
      [3], [3],
      [4], [5],
    )

![Rendered image](typst-
img/5bf649017afba6f1af8a5ae7e6a1e8b614def90749a092f92e5886a58b351205-1.svg)

==  Slanted column headers with slanted borders

    
    
    // author: tebine
    #let slanted(it, alpha: 45deg, len: 2.5cm) = layout(size => {
      let width = size.width
      let b = box(inset: 5pt, rotate(-alpha, reflow: true, it))
      let b-size = measure(b)
      let l = line(angle: -alpha, length: len)
      let l-width = len * calc.cos(alpha)
      let l-height = len * calc.sin(alpha)
      place(bottom+left, l)
      place(bottom+left, l, dx: width)
      place(bottom+left, line(length: width), dx: l-width, dy: -l-height)
      place(bottom+left, dx: width/2, b)
      box(height: l-height) // invisible box to set the height
    })
    
    #table(
      columns: 2,
      align: center,
      table.header(
        table.cell(stroke: none, inset: 0pt, slanted[*AAA*]),
        table.cell(stroke: none, inset: 0pt, slanted[*BBBBBB*]),
      ),
      [aaaaa], [bbbbbb], [c], [d],
    )

![Rendered image](typst-
img/d5f49858e9acc4bad217904e87abb368aa5e38652bdcba27a971b3ddd10f0361-1.svg)



= *book/snippets/demos.md*

=  Demos

==  Resume (using template)

    
    
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

==  Book cover

    
    
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



= *book/snippets/index.md*

=  Typst Snippets

Useful snippets for common (and not) tasks.



= *book/snippets/labels.md*

=  Labels

==  Get chapter of label

    
    
    #let ref-heading(label) = context {
      let elems = query(label)
      if elems.len() != 1 {
        panic("found multiple elements")
      }
      let element = elems.first()
      if element.func() != heading {
        panic("label must target heading")
      }
      link(label, element.body)
    }
    
    = Design <design>
    #lorem(20)
    
    = Implementation
    In #ref-heading(<design>), we discussed...

![Rendered image](typst-
img/7a4a9436d9aa0cbf0d3212b45d54bd90a896181c30b036326d99dee9f58eb117-1.svg)

==  Allow missing references

    
    
    // author: Enivex
    #set heading(numbering: "1.")
    
    #let myref(label) = context {
        if query(label).len() != 0 {
            ref(label)
        } else {
            // missing reference
            text(fill: red)[???]
        }
    }
    
    = Second <test2>
    
    #myref(<test>)
    
    #myref(<test2>)

![Rendered image](typst-
img/cd5f1f34e81c117063da3bb176c1dda726bbc18ac981121f75555d5834b08058-1.svg)



= *book/snippets/code.md*

=  Code formatting

==  Inline highlighting

    
    
    #let r = raw.with(lang: "r")
    
    This can then be used like: #r("x <- c(10, 42)")

![Rendered image](typst-
img/dadb41acb1c458d9af5b909d657de5f46dca019f1a81cc17b75b9863d60fa9eb-1.svg)

==  Tab size

    
    
    #set raw(tab-size: 8)
    ```tsv
    Year	Month	Day
    2000	2	3
    2001	2	1
    2002	3	10
    ```

![Rendered image](typst-
img/1c3900a79521f6b9cd852a68a3dea627ddbd1b8fc6062d3ca344e4259a30d212-1.svg)

==  Theme

See [ reference ](https://typst.app/docs/reference/text/raw/#parameters-theme)

==  Enable ligatures for code

    
    
    #show raw: set text(ligatures: true, font: "Cascadia Code")
    
    Then the code becomes `x <- a`

![Rendered image](typst-
img/3513eee2f5ca33825d09149f4ad9169abf95d3b8ad02cc5a7bf91cc9b96517d0-1.svg)

==  Advanced formatting

See [ packages ](../packages/code.html) section.



= *book/snippets/gradients.md*

=  Color & Gradients

==  Gradients

Gradients may be very cool for presentations or just a pretty look.

    
    
    /// author: frozolotl
    #set page(paper: "presentation-16-9", margin: 0pt)
    #set text(fill: white, font: "Inter")
    
    #let grad = gradient.linear(rgb("#953afa"), rgb("#c61a22"), angle: 135deg)
    
    #place(horizon + left, image(width: 60%, "../img/landscape.png"))
    
    #place(top, polygon(
      (0%, 0%),
      (70%, 0%),
      (70%, 25%),
      (0%, 29%),
      fill: white,
    ))
    #place(bottom, polygon(
      (0%, 100%),
      (100%, 100%),
      (100%, 30%),
      (60%, 30% + 60% * 4%),
      (60%, 60%),
      (0%, 64%),
      fill: grad,
    ))
    
    #place(top + right, block(inset: 7pt, image(height: 19%, "../img/tub.png")))
    
    #place(bottom, block(inset: 40pt)[
      #text(size: 30pt)[
        Presentation Title
      ]
    
      #text(size: 16pt)[#lorem(20) | #datetime.today().display()]
    ])

![Rendered image](typst-
img/19558fb55cdd5c8f8193724d92b54b1258ca8ee3d4d4c9e7077fc50d11e1a79d-1.svg)



= *book/basics/special_symbols.md*

=  Special symbols

> _Important:_ I'm not great with special symbols, so I would additionally
> appreciate additions and corrections.

Typst has a great support of _unicode_ . That also means it supports _special
symbols_ . They may be very useful for typesetting.

In most cases, you shouldn't use these symbols directly often. If possible,
use them with show rules (for example, replace all ` -th  ` with ` \u
{2011}th  ` , a non-breaking hyphen).

==  Non-breaking symbols

Non-breaking symbols can make sure the word/phrase will not be separated.
Typst will try to put them as a whole.

===  Non-breaking space

> _Important:_ As it is spacing symbols, copy-pasting it will not help. Typst
> will see it as just a usual spacing symbol you used for your source code to
> look nicer in your editor. Again, it will interpret it _as a basic space_ .

This is a symbol you should't use often (use Typst boxes instead), but it is a
good demonstration of how non-breaking symbol work:

    
    
    #set page(width: 9em)
    
    // Cruel and world are separated.
    // Imagine this is a phrase that can't be split, what to do then?
    Hello cruel world
    
    // Let's connect them with a special space!
    
    // No usual spacing is allowed, so either use semicolumn...
    Hello cruel#sym.space.nobreak;world
    
    // ...parentheses...
    Hello cruel#(sym.space.nobreak)world
    
    // ...or unicode code
    Hello cruel\u{00a0}world
    
    // Well, to achieve the same effect I recommend using box:
    Hello #box[cruel world]

![Rendered image](typst-
img/be9e5cddfdd58a5f21a2b17e32227ac0c96e2d6eeffe764ef2809257aa416c59-1.svg)

===  Non-breaking hyphen

    
    
    #set page(width: 8em)
    
    This is an $i$-th element.
    
    This is an $i$\u{2011}th element.
    
    // the best way would be
    #show "-th": "\u{2011}th"
    
    This is an $i$-th element.

![Rendered image](typst-
img/02baa9a61778ef23389d4ceb2fae4d2ac699d72b127b447ca6f25037096d2df9-1.svg)

==  Connectors and separators

===  World joiner

Initially, world joiner indicates that no line break should occur at this
position. It is also a zero-width symbol (invisible), so it can be used as a
space removing thing:

    
    
    #set page(width: 9em)
    #set text(hyphenate: true)
    
    Thisisawordthathastobreak
    
    // Be careful, there is no line break at all now!
    Thisi#sym.wj;sawordthathastobreak
    
    // code from `physica` package
    // word joiner here is used to avoid extra spacing
    #let just-hbar = move(dy: -0.08em, strike(offset: -0.55em, extent: -0.05em, sym.planck))
    #let hbar = (sym.wj, just-hbar, sym.wj).join()
    
    $ a #just-hbar b, a hbar b$

![Rendered image](typst-
img/7df9031646c932030adb0fc5a97446e7560ca7d353ef935d4034dc0a4b8be5c1-1.svg)

===  Zero width space

Similar to word-joiner, but this is a _space_ . It doesn't prevent word break.
On the contrary, it breaks it without any hyphen at all!

    
    
    #set page(width: 9em)
    #set text(hyphenate: true)
    
    // There is a space inside!
    Thisisa#sym.zws;word
    
    // Be careful, there is no hyphen at all now!
    Thisisawo#sym.zws;rdthathastobreak

![Rendered image](typst-
img/7fd917d4e0422bc1bb72d451b6da6e38fb9fe28cd28152ab60bdfb7ad5d1cab1-1.svg)



= *book/basics/index.md*

=  Typst Basics

This is a chapter that consistently introduces you to the most things you need
to know when writing with Typst.

It show much more things than official tutorial, so maybe it will be
interesting to read for some of the experienced users too.

Some examples are taken from [ Official Tutorial
](https://typst.app/docs/tutorial/) and [ Official Reference
](https://typst.app/docs/reference/) . Most are created and edited specially
for this book.

> _Important:_ in most cases there will be used "clipped" examples of your
> rendered documents (no margins, smaller width and so on).
>
> To set up the spacing as you want, see [ Official Page Setup Guide
> ](https://typst.app/docs/guides/page-setup-guide/) .



= *book/basics/extra.md*

=  Extra

==  Bibliography

Typst supports bibliography using BibLaTex ` .bib  ` file or its own Hayagriva
` .yml  ` format.

BibLaTex is wider supported, but Hayagriva is easier to work with.

> Link to Hayagriva [ documentation
> ](https://github.com/typst/hayagriva/blob/main/docs/file-format.md) and some
> [ examples
> ](https://github.com/typst/hayagriva/blob/main/tests/data/basic.yml) .

===  Citation Style

The style can be customized via CSL, citation style language, with more than
10 000 styles available online. See [ official repository
](https://github.com/citation-style-language/styles) .



= *book/basics/measure.md*

=  Measure, Layout

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

==  Style & Measure

> Style [ documentation ](https://typst.app/docs/reference/foundations/style/)
> .

> Measure [ documentation ](https://typst.app/docs/reference/layout/measure/)
> .

` measure  ` returns _the element size_ . This command is extremely helpful
when doing custom layout with ` place  ` .

However, there is a catch. Element size depends on styles, applied to this
element.

    
    
    #let content = [Hello!]
    #content
    #set text(14pt)
    #content

![Rendered image](typst-
img/00a6cbbc650947c03f34564786b0645eee60396f288d26333c591ff9059cc369-1.svg)

So if we will set the big text size for some part of our text, to measure the
element's size, we have to know _where the element is located_ . Without
knowing it, we can't tell what styles should be applied.

So we need a scheme similar to ` locate  ` .

This is what ` styles  ` function is used for. It is _a content_ , which, when
located in document, calls a function inside on _current styles_ .

Now, when we got fixed ` styles  ` , we can get the element's size using `
measure  ` :

    
    
    #let thing(body) = style(styles => {
      let size = measure(body, styles)
      [Width of "#body" is #size.width]
    })
    
    #thing[Hey] \
    #thing[Welcome]

![Rendered image](typst-
img/5afe1855072b4ee8e343e5b5aa79affae5b17bc89738ffbe93dac245576cdd04-1.svg)

=  Layout

Layout is similar to ` measure  ` , but it returns current scope *parent
size* .

If you are putting elements in block, that will be block's size. If you are
just putting right on the page, that will be page's size.

As parent's size depends on it's place in document, it uses the similar scheme
to ` locate  ` and ` style  ` :

    
    
    #layout(size => {
      let half = 50% * size.width
      [Half a page is #half wide.]
    })

![Rendered image](typst-
img/c68a166f6e6b1b3229fd56478ae302dbeb39c882e229c69d4c6ebb6c9c528985-1.svg)

It may be extremely useful to combine ` layout  ` with ` measure  ` , to get
width of things that depend on parent's size:

    
    
    #let text = lorem(30)
    #layout(size => style(styles => [
      #let (height,) = measure(
        block(width: size.width, text),
        styles,
      )
      This text is #height high with
      the current page width: \
      #text
    ]))
      #let (height,) = measure(
        block(width: size.width, text),
        styles,
      )
      This text is #height high with
      the current page width: \
      #text
    ]))

![Rendered image](typst-
img/93167dc0b22b02fe27aa92c6b03c2281665b4352624364a19c63f61a488aa75a-1.svg)



= *book/typstonomicon/original_image.md*

=  Image with original size

This function renders image with the size it "naturally" has.

*Note: starting from v0.11* , Typst tries using default image size when
width and height are ` auto  ` . It only uses container's size if the image
doesn't fit. So this code is more like a legacy, but still may be useful.

This works because measure conceptually places the image onto a page with
infinite size and then the image defaults to 1pt per pixel instead of becoming
infinitely larger itself.

    
    
    // author: laurmaedje
    #let natural-image(..args) = style(styles => {
      let (width, height) = measure(image(..args), styles)
      image(..args, width: width, height: height)
    })
    
    #image("../tiger.jpg")
    #natural-image("../tiger.jpg")

![Rendered image](typst-
img/59503efa7e4aa0d37418ed3d0cb2c0c123268fae37cdcd54f8f7eb06b556e05d-1.svg)



= *book/typstonomicon/totally-empty.md*

=  Empty pages without numbering

==  Empty pages before chapters starting at odd pages

This snippet has been broken on 0.12.0. If someone will help fixing it, this
would be cool.

    
    
    // author: janekfleper
    
    #set page(height: 20em)
    
    #let find-labels(name) = {
      return query(name).map(label => label.location().page())
    }
    
    #let page-header = context {
      let empty-pages = find-labels(<empty-page>)
      let new-chapters = find-labels(<new-chapter>)
      if new-chapters.len() > 0 {
        if new-chapters.contains(here().page()) [
          _a new chapter starts on this page_
          #return
        ]
    
        // get the index of the next <new-chapter> label
        let new-chapter-index = new-chapters.position(page => page > here().page())
        if new-chapter-index != none {
          let empty-page = empty-pages.at(new-chapter-index)
          if empty-page < here().page() [
            _this is an empty page to make the next chapter start on an odd page_
            #return
          ]
        }
      }
    
      [and this would be a regular header]
      line(length: 100%)
    }
    
    #let page-footer = context {
      // since the page breaks in chapter-heading() are inserted after the <empty-page> label,
      // the selector has to look "before" the current page to find the relevant label
      let empty-page-labels = query(selector(<empty-page>).before(here()))
      if empty-page-labels.len() > 0 {
        let empty-page = empty-page-labels.last().location().page()
        // look back at the most recent <new-chapter> label
        let new-chapter = query(selector(<new-chapter>).before(here())).last().location().page()
        // check that there is no <new-chapter> label on the current page
        if (new-chapter != here().page()) and (empty-page + 1 == here().page()) [
          _this is an empty page where the page number should be omitted_
          #return
        ]
      }
    
      let page-display = counter(page).display(here().page-numbering())
      h(1fr) + page-display + h(1fr)
    }
    
    #show heading.where(level: 1): it => [
      #[] <empty-page>
      #pagebreak(to: "even", weak: true)
      #[] <new-chapter>
      #pagebreak(to: "odd", weak: true)
      #it.body
      #v(2em)
    ]
    
    
    #show outline.entry.where(level: 1): it => {
      // reverse the results of the label queries to find the last <empty-page> label for the targeted page
      // the method array.position() will always return the first one...
      let empty-pages = find-labels(<empty-page>).rev()
      let new-chapters = query(<new-chapter>).rev()
      let empty-page-index = empty-pages.position(page => page == int(it.page.text))
      let new-chapter = new-chapters.at(empty-page-index)
      link(new-chapter.location())[#it.body #box(width: 1fr)[#it.fill] #new-chapter.location().page()]
    }
    
    #set page(header: page-header, footer: page-footer, numbering: "1")
    
    #outline()
    
    = The explanation
    
    ```
    These queries reveal where the corresponding tags are found. The actual empty page is always at the location of the label <empty-page> + 1. If an empty page is actually inserted by the pagebreaks, the two labels will cover the page of the heading and one page before that. If no empty page was inserted, both labels will point to the same page which is not an issue either. And even then we can check for the <new-chapter> label first to give it a higher priority.
    
    The first <empty-page> label is always on page 1 and can just be ignored since it points to the (non-existing) empty page before the first chapter.
    
    pages with the label <empty-page>: #context find-labels(<empty-page>)
    pages with the label <new-chapter>: #context find-labels(<new-chapter>)
    ```
    
    = A heading
    #lorem(190)
    
    = Another heading
    #lorem(100)
    
    = The last heading
    #lorem(400)



= *book/typstonomicon/extract_plain_text.md*

=  Extracting plain text

    
    
    // original author: ntjess
    #let stringify-by-func(it) = {
      let func = it.func()
      return if func in (parbreak, pagebreak, linebreak) {
        "\n"
      } else if func == smartquote {
        if it.double { "\"" } else { "'" } // "
      } else if it.fields() == (:) {
        // a fieldless element is either specially represented (and caught earlier) or doesn't have text
        ""
      } else {
        panic("Not sure how to handle type `" + repr(func) + "`")
      }
    }
    
    #let plain-text(it) = {
      return if type(it) == str {
        it
      } else if it == [ ] {
        " "
      } else if it.has("children") {
        it.children.map(plain-text).join()
      } else if it.has("body") {
        plain-text(it.body)
      } else if it.has("text") {
        if type(it.text) == "string" {
          it.text
        } else {
          plain-text(it.text)
        }
      } else {
        // remove this to ignore all other non-text elements
        stringify-by-func(it)
      }
    }
    
    #plain-text(`raw inline text`)
    
    #plain-text(highlight[Highlighted text])
    
    #plain-text[List
      - With
      - Some
      - Elements
    
      + And
      + Enumerated
      + Too
    ]
    
    #plain-text(underline[Underlined])
    
    #plain-text($sin(x + y)$)
    
    #for el in (
      circle,
      rect,
      ellipse,
      block,
      box,
      par,
      raw.with(block: true),
      raw.with(block: false),
      heading,
    ) {
      plain-text(el(repr(el)))
      linebreak()
    }
    
    // Some empty elements
    #plain-text(circle())
    #plain-text(line())
    
    #for spacer in (linebreak, pagebreak, parbreak) {
      plain-text(spacer())
    }

![Rendered image](typst-
img/bcf07a5cddbcf3f046484609e01f9a05df81807d05391d590bf8c8e96b324d1b-1.svg)



= *book/typstonomicon/math_display.md*

=  Make all math display math

May slightly interfere with math blocks.

    
    
    // author: eric1102
    #show math.equation: it => {
      if it.body.fields().at("size", default: none) != "display" {
        return math.display(it)
      }
      it
    }
    
    Inline math: $sum_(n=0)^oo e^(x^2 - n/x^2)$\
    Some other text on new line.
    
    
    $
    sum_(n=0)^oo e^(x^2 - n/x^2)
    $

![Rendered image](typst-
img/e339a54461b130913bf4f724b29b763aec7dffa0662827935aeb7b258538523b-1.svg)



= *book/typstonomicon/inline_with.md*

=  Horizontally align something with something

    
    
    // author: tabiasgeehuman
    #let inline-with(select, content) = context {
      let target = query(
        selector(select)
      ).last().location().position().x
      let current = here().position().x
    
      box(inset: (x: target - current + 0.3em), content)
    }
    
    #let inline-label(name) = [#line(length: 0%) #name]
    
    #inline-with(selector(<start-c>))[= Common values]
    #align(left, box[$
        #inline-label(<start-c>) "Circles"(0) =& 0 \
        lim_(x -> 1) "Circles"(0) =& 0
    $])

![Rendered image](typst-
img/6aedec57e7a1480b4eeb9ad00c327661943c9144d64eaaffe73de22872386739-1.svg)



= *book/typstonomicon/remove-indent-nested.md*

=  Remove indent from nested lists

    
    
    // author: fenjalien
    #show enum.item: it => {
      if repr(it.body.func()) == "sequence" {
        let children = it.body.children
        let index = children.position(x => x.func() == enum.item)
        if index != none {
          enum.item({
            children.slice(0, index).join()
            set enum(indent: -1.2em) // Note that this stops an infinitly recursive show rule
            children.slice(index).join()
          })
        } else {
          it
        }
      } else {
        it
      }
    }
    
    arst
    + A
    + b
    + c
      + d
    + e
      + f
    + g
    + h
    + i
    + 

![Rendered image](typst-
img/39725eefebf4a24de8f643e32c454fc7dff8f4f594ba29c6ca84c098b8983860-1.svg)



= *book/typstonomicon/word_count.md*

=  Word count

This chapter is deprecated now. It will be removed soon.

==  Recommended solution

Use ` wordometr  ` [ package ](https://github.com/Jollywatt/typst-wordometer)
:

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count
    
    In this document, there are #total-words words all up.
    
    #word-count(total => [
      The number of words in this block is #total.words
      and there are #total.characters letters.
    ])

![Rendered image](typst-
img/a36d12209002f93aeaf23d4b21fcd4dcb1f9326f6ad358ad01558f09dede39c2-1.svg)

==  Just count _all_ words in document

    
    
    // original author: laurmaedje
    #let words = counter("words")
    #show regex("\p{L}+"): it => it + words.step()
    
    == A heading
    #lorem(50)
    
    === Strong chapter
    #strong(lorem(25))
    
    // it is ignoring comments
    
    #align(right)[(#words.display() words)]

![Rendered image](typst-
img/b32a6f39c86a7719a156fb53625f8ec0d8a5f559e85367107b07b52cc7172e3a-1.svg)

==  Count only some elements, ignore others

    
    
    // original author: jollywatt
    #let count-words(it) = {
        let fn = repr(it.func())
        if fn == "sequence" { it.children.map(count-words).sum() }
        else if fn == "text" { it.text.split().len() }
        else if fn in ("styled") { count-words(it.child) }
        else if fn in ("highlight", "item", "strong", "link") { count-words(it.body) }
        else if fn in ("footnote", "heading", "equation") { 0 }
        else { 0 }
    }
    
    #show: rest => {
        let n = count-words(rest)
        rest + align(right, [(#n words)])
    }
    
    == A heading (shouldn't be counted)
    #lorem(50)
    
    === Strong chapter
    #strong(lorem(25)) // counted too!

![Rendered image](typst-
img/0ba529d013270ae2cb21618241d5c3562ce4743815a68146fb4d5617dc1c4b22-1.svg)



= *book/typstonomicon/index.md*

=  Typstonomicon, or The Code You Should Not Write

Totally cursed examples with lots of quires, measure and other things to hack
around current Typst limitations. Generally you should use this code only if
you really need it.

Code in this chapter may break in lots of circumstances and debugging it will
be very painful. You are warned.

I think that this chapter will slowly die as Typst matures.



= *book/typstonomicon/try_catch.md*

=  Try & Catch

    
    
    // author: laurmaedje
    // Renders an image or a placeholder if it doesn't exist.
    // Don’t try this at home, kids!
    #let maybe-image(path, ..args) = context {
      let path-label = label(path)
       let first-time = query((context {}).func()).len() == 0
       if first-time or query(path-label).len() > 0 {
        [#image(path, ..args)#path-label]
      } else {
        rect(width: 50%, height: 5em, fill: luma(235), stroke: 1pt)[
          #set align(center + horizon)
          Could not find #raw(path)
        ]
      }
    }
    
    #maybe-image("../tiger.jpg")
    #maybe-image("../tiger1.jpg")

![Rendered image](typst-
img/ee71afd2e954c4ab04385fb359baa63b3c6852718ae7b0d63948cf9180d50e89-1.svg)



= *book/typstonomicon/block_break.md*

=  Breakpoints on broken blocks

===  Implementation with table headers & footers

See a demo project (more comments, I stripped some of them) [ there
](https://typst.app/project/r-yQHF952iFnPme9BWbRu3) .

    
    
    /// author: wrzian
    
    // Underlying counter and zig-zag functions
    #let counter-family(id) = {
      let parent = counter(id)
      let parent-step() = parent.step()
      let get-child() = counter(id + str(parent.get().at(0)))
      return (parent-step, get-child)
    }
    
    // A fun zig-zag line!
    #let zig-zag(fill: black, rough-width: 6pt, height: 4pt, thick: 1pt, angle: 0deg) = {
      layout((size) => {
        // Use layout to get the size and measure our horizontal distance
        // Then get the per-zigzag width with some maths.
        let count = int(calc.round(size.width / rough-width))
        // Need to add extra thickness since we join with `h(-thick)`
        let width = thick + (size.width - thick) / count
        // One zig and one zag:
        let zig-and-zag = {
          let line-stroke = stroke(thickness: thick, cap: "round", paint: fill)
          let top-left = (thick/2, thick/2)
          let bottom-mid = (width/2, height - thick/2)
          let top-right = (width - thick/2, thick/2)
          let zig = line(stroke: line-stroke, start: top-left, end: bottom-mid)
          let zag = line(stroke: line-stroke, start: bottom-mid, end: top-right)
          box(place(zig) + place(zag), width: width, height: height, clip: true)
        }
        let zig-zags = ((zig-and-zag,) * count).join(h(-thick))
        rotate(zig-zags, angle)
      })
    }
    
    // ---- Define split-box ---- //
    
    // Customizable options for a split-box border:
    #let default-border = (
      // The starting and ending lines
      above: line(length: 100%),
      below: line(length: 100%),
      // Lines to put between the box over multiple pages
      btwn-above: line(length: 100%, stroke: (dash:"dotted")),
      btwn-below: line(length: 100%, stroke: (dash:"dotted")),
      // Left/right lines
      // These *must* use `grid.vline()`, otherwise you will get an error.
      // To remove the lines, set them to: `grid.vline(stroke: none)`.
      // You could probably configure this better with a rowspan, but I'm lazy.
      left: grid.vline(),
      right: grid.vline(),
    )
    
    // Create a box for content which spans multiple pages/columns and
    // has custom borders above and below the column-break.
    #let split-box(
      // Set the border dictionary, see `default-border` above for options
      border: default-border,
      // The cell to place content in, this should resolve to a `grid.cell`
      cell: grid.cell.with(inset: 5pt),
      // The last positional arg or args are your actual content
      // Any extra named args will be sent to the underlying grid when called
      // This is useful for fill, align, etc.
      ..args
    ) = {
      // See `utils.typ` for more info.
      let (parent-step, get-child) = counter-family("split-box-unique-counter-string")
      parent-step() // Place the parent counter once.
      // Keep track of each time the header is placed on a page.
      // Then check if we're at the first placement (for header) or the last (footer)
      // If not, we'll use the 'between' forms of the  border lines.
      let border-above = context {
        let header-count = get-child()
        header-count.step()
        context if header-count.get() == (1,) { border.above } else { border.btwn-above }
      }
      let border-below = context {
        let header-count = get-child()
        if header-count.get() == header-count.final() { border.below } else { border.btwn-below }
      }
      // Place the grid!
      grid(
        ..args.named(),
        columns: 3,
        border.left,
        grid.header(border-above , repeat: true),
        ..args.pos().map(cell),
        grid.footer(border-below, repeat: true),
        border.right,
      )
    }
    
    // ---- Examples ---- //
    
    #set page(width: 7.2in, height: 3in, columns: 6)
    
    // Tada!
    #split-box[
      #lorem(20)
    ]
    
    // And here's a fun example:
    
    #let fun-border = (
      // gradients!
      above: line(length: 100%, stroke: 2pt + gradient.linear(..color.map.rainbow)),
      below: line(length: 100%, stroke: 2pt + gradient.linear(..color.map.rainbow, angle: 180deg)),
      // zig-zags!
      btwn-above: move(dy: +2pt, zig-zag(fill: blue, angle: 3deg)),
      btwn-below: move(dy: -2pt, zig-zag(fill: orange, angle: 177deg)),
      left: grid.vline(stroke: (cap: "round", paint: purple)),
      right: grid.vline(stroke: (cap: "round", paint: purple)),
    )
    
    #split-box(border: fun-border)[
      #lorem(25)
    ]
    
    // And some more tame friends:
    
    #split-box(border: (
      above: move(dy: -0.5pt, line(length: 100%)),
      below: move(dy: +0.5pt, line(length: 100%)),
      // zig-zags!
      btwn-above: move(dy: -1.1pt, zig-zag()),
      btwn-below: move(dy: +1.1pt, zig-zag(angle: 180deg)),
      left: grid.vline(stroke: (cap: "round")),
      right: grid.vline(stroke: (cap: "round")),
    ))[
      #lorem(10)
    ]
    
    #split-box(
      border: (
        above: line(length: 100%, stroke: luma(50%)),
        below: line(length: 100%, stroke: luma(50%)),
        btwn-above: line(length: 100%, stroke: (dash: "dashed", paint: luma(50%))),
        btwn-below: line(length: 100%, stroke: (dash: "dashed", paint: luma(50%))),
        left: grid.vline(stroke: none),
        right: grid.vline(stroke: none),
      ),
      cell: grid.cell.with(inset: 5pt, fill: color.yellow.saturate(-85%))
    )[
      #lorem(20)
    ]
    

![Rendered image](typst-
img/52bd37f3e860317c6a162bb4a1ea8275ac73dede79a9e50c5201b4d1fd59c323-1.svg)

===  Implementation via headers, footers and stated

Limitations: *works only with one-column layout and one break* .

    
    
    #let countBoundaries(loc, fromHeader) = {
      let startSelector = selector(label("boundary-start"))
      let endSelector = selector(label("boundary-end"))
    
      if fromHeader {
        // Count down from the top of the page
        startSelector = startSelector.after(loc)
        endSelector = endSelector.after(loc)
      } else {
        // Count up from the bottom of the page
        startSelector = startSelector.before(loc)
        endSelector = endSelector.before(loc)
      }
    
      let startMarkers = query(startSelector)
      let endMarkers = query(endSelector)
      let currentPage = loc.position().page
    
      let pageStartMarkers = startMarkers.filter(elem =>
        elem.location().position().page == currentPage)
    
      let pageEndMarkers = endMarkers.filter(elem =>
        elem.location().position().page == currentPage)
    
      (start: pageStartMarkers.len(), end: pageEndMarkers.len())
    }
    
    #set page(
      margin: 2em,
      // ... other page setup here ...
      header: context {
        let boundaryCount = countBoundaries(here(), true)
    
        if boundaryCount.end > boundaryCount.start {
          // Decorate this header with an opening decoration
          [Block break top: $-->$]
        }
      },
      footer: context {
        let boundaryCount = countBoundaries(here(), false)
    
        if boundaryCount.start > boundaryCount.end {
          // Decorate this footer with a closing decoration
          [Block break end: $<--$]
        }
      }
    )
    
    #let breakable-block(body) = block({
      [
        #metadata("boundary") <boundary-start>
      ]
      stack(
        // Breakable list content goes here
        body
      )
      [
        #metadata("boundary") <boundary-end>
      ]
    })
    
    #set page(height: 10em)
    
    #breakable-block[
        #([Something \ ]*10)
    ]

![Rendered image](typst-
img/b5c4a13157c5e42b879173a5b11ec49526bdaec107c979e90572aa38aadb424f-1.svg)

![Rendered image](typst-
img/b5c4a13157c5e42b879173a5b11ec49526bdaec107c979e90572aa38aadb424f-2.svg)



= *book/typstonomicon/chapters.md*

=  Create zero-level chapters

    
    
    // author: tinger
    
    #let chapter = figure.with(
      kind: "chapter",
      // same as heading
      numbering: none,
      // this cannot use auto to translate this automatically as headings can, auto also means something different for figures
      supplement: "Chapter",
      // empty caption required to be included in outline
      caption: [],
    )
    
    // emulate element function by creating show rule
    #show figure.where(kind: "chapter"): it => {
      set text(22pt)
      counter(heading).update(0)
      if it.numbering != none { strong(it.counter.display(it.numbering)) } + [ ] + strong(it.body)
    }
    
    // no access to element in outline(indent: it => ...), so we must do indentation in here instead of outline
    #show outline.entry: it => {
      if it.element.func() == figure {
        // we're configuring chapter printing here, effectively recreating the default show impl with slight tweaks
        let res = link(it.element.location(), 
          // we must recreate part of the show rule from above once again
          if it.element.numbering != none {
            numbering(it.element.numbering, ..it.element.counter.at(it.element.location()))
          } + [ ] + it.element.body
        )
    
        if it.fill != none {
          res += [ ] + box(width: 1fr, it.fill) + [ ] 
        } else {
          res += h(1fr)
        }
    
        res += link(it.element.location(), it.page)
        strong(res)
      } else {
        // we're doing indenting here
        h(1em * it.level) + it
      }
    }
    
    // new target selector for default outline
    #let chapters-and-headings = figure.where(kind: "chapter", outlined: true).or(heading.where(outlined: true))
    
    //
    // start of actual doc prelude
    //
    
    #set heading(numbering: "1.")
    
    // can't use set, so we reassign with default args
    #let chapter = chapter.with(numbering: "I")
    
    // an example of a "show rule" for a chapter
    // can't use chapter because it's not an element after using .with() anymore
    #show figure.where(kind: "chapter"): set text(red)
    
    //
    // start of actual doc
    //
    
    // as you can see these are not elements like headings, which makes the setup a bit harder
    // because the chapters are not headings, the numbering does not include their chapter, but could using a show rule for headings
    
    #outline(target: chapters-and-headings)
    
    #chapter[Chapter]
    = Chap Heading
    == Sub Heading
    
    #chapter[Chapter again]
    = Chap Heading
    = Chap Heading
    == Sub Heading
    === Sub Sub Heading
    == Sub Heading
    
    #chapter[Chapter yet again]

![Rendered image](typst-
img/0ad0c265008f81fca8694b44d2d9407815cd64a7bb4b10a631aac3370a9d52e1-1.svg)



= *book/typstonomicon/multiple-show.md*

==  Multiple show rules

Sometimes there is a need to apply several rules that look very similar. Or
generate them from code. One of the ways to deal with this, the most cursed
one, is this:

    
    
    #let rules = (math.sum, math.product, math.root)
    
    #let apply-rules(rules, it) = {
      if rules.len() == 0 {
        return it
      }
      show rules.pop(): math.display
      apply-rules(rules, it)
    }
    
    $product/sum root(3, x)/2$
    
    #show: apply-rules.with(rules)
    
    $product/sum root(3, x)/2$

![Rendered image](typst-
img/3f8166b0ca4ea7bdcf8017e914da7036f5b5ac804c34535f36b2a67bba3d995b-1.svg)

The recursion problem may be avoided with the power of ` fold  ` , with
basically the same idea:

    
    
    // author: Eric
    #let kind_supp = (code: "Listing", algo: "Algorithme")
    #show: it => kind_supp.pairs().fold(it, (acc, (kind, supp)) => {
      show figure.where(kind: kind): set figure(supplement: supp)
      acc
    })

![Rendered image](typst-
img/e2ee1949cb74ef6dc8109f082f424dcb30765452043f5e93ccdd8a4fc30029b3-1.svg)

Note that just in case of symbols (if you don't need element functions), one
can use regular expressions. That is a more robust way:

    
    
    #show regex("[" + math.product + math.sum + "]"): math.display
    
    $product/sum root(3, x)/2$

![Rendered image](typst-
img/b0f3afcb048a141cbfc9404f17ab9f91c701528560eb09810ce0bbaae66adbaa-1.svg)



= *book/packages/tables.md*

=  Tables

==  Tablex: general purpose tables library

    
    
    #import "@preview/tablex:0.0.7": tablex, rowspanx, colspanx
    
    #tablex(
      columns: 4,
      align: center + horizon,
      auto-vlines: false,
    
      // indicate the first two rows are the header
      // (in case we need to eventually
      // enable repeating the header across pages)
      header-rows: 2,
    
      // color the last column's cells
      // based on the written number
      map-cells: cell => {
        if cell.x == 3 and cell.y > 1 {
          cell.content = {
            let value = int(cell.content.text)
            let text-color = if value < 10 {
              red.lighten(30%)
            } else if value < 15 {
              yellow.darken(13%)
            } else {
              green
            }
            set text(text-color)
            strong(cell.content)
          }
        }
        cell
      },
    
      /* --- header --- */
      rowspanx(2)[*Username*], colspanx(2)[*Data*], (), rowspanx(2)[*Score*],
      (),                 [*Location*], [*Height*], (),
      /* -------------- */
    
      [John], [Second St.], [180 cm], [5],
      [Wally], [Third Av.], [160 cm], [10],
      [Jason], [Some St.], [150 cm], [15],
      [Robert], [123 Av.], [190 cm], [20],
      [Other], [Unknown St.], [170 cm], [25],
    )

![Rendered image](typst-
img/9283c11489e3997fb302d12c4958a964543f3de172f3f8e21eb739f97ae78ae2-1.svg)

    
    
    #import "@preview/tablex:0.0.7": tablex, hlinex, vlinex, colspanx, rowspanx
    
    #pagebreak()
    #v(80%)
    
    #tablex(
      columns: 4,
      align: center + horizon,
      auto-vlines: false,
      repeat-header: true,
    
      /* --- header --- */
      rowspanx(2)[*Names*], colspanx(2)[*Properties*], (), rowspanx(2)[*Creators*],
      (),                 [*Type*], [*Size*], (),
      /* -------------- */
    
      [Machine], [Steel], [5 $"cm"^3$], [John p& Kate],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Robert],
      [Frog], [Animal], [6 $"cm"^3$], [Rodbert],
    )

![Rendered image](typst-
img/03fd8d593886849d39370d731f423691b255e47da0a391649235f3f746c25e5c-1.svg)

![Rendered image](typst-
img/03fd8d593886849d39370d731f423691b255e47da0a391649235f3f746c25e5c-2.svg)

    
    
    #import "@preview/tablex:0.0.7": tablex, gridx, hlinex, vlinex, colspanx, rowspanx
    
    #tablex(
      columns: 4,
      auto-lines: false,
    
      // skip a column here         vv
      vlinex(), vlinex(), vlinex(), (), vlinex(),
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[d], [e], [K],
      [f], (),             [g], [L],
      //   ^^ '()' after the first cell are 100% ignored
    )
    
    #tablex(
      columns: 4,
      auto-vlines: false,
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[d], [e], [K],
      [f], (),             [g], [L],
    )
    
    #gridx(
      columns: 4,
      (), (), vlinex(end: 2),
      hlinex(stroke: yellow + 2pt),
      colspanx(2)[a], (),  [b], [J],
      hlinex(start: 0, end: 1, stroke: yellow + 2pt),
      hlinex(start: 1, end: 2, stroke: green + 2pt),
      hlinex(start: 2, end: 3, stroke: red + 2pt),
      hlinex(start: 3, end: 4, stroke: blue.lighten(50%) + 2pt),
      [c], rowspanx(2)[d], [e], [K],
      hlinex(start: 2),
      [f], (),             [g], [L],
    )

![Rendered image](typst-
img/4d25fc4ba39ee99bf9b8c043ab89bc74cf61cad3f4640b3384dad2e69f5f64c8-1.svg)

    
    
    #import "@preview/tablex:0.0.7": tablex, colspanx, rowspanx
    
    #tablex(
      columns: 3,
      map-hlines: h => (..h, stroke: blue),
      map-vlines: v => (..v, stroke: green + 2pt),
      colspanx(2)[a], (),  [b],
      [c], rowspanx(2)[d], [ed],
      [f], (),             [g]
    )

![Rendered image](typst-
img/9f721aa89d44247b880a2d34d64940cce12a782d4888a09b6a031a2918805128-1.svg)

    
    
    #import "@preview/tablex:0.0.7": tablex, colspanx, rowspanx
    
    #tablex(
      columns: 4,
      auto-vlines: true,
    
      // make all cells italicized
      map-cells: cell => {
        (..cell, content: emph(cell.content))
      },
    
      // add some arbitrary content to entire rows
      map-rows: (row, cells) => cells.map(c =>
        if c == none {
          c  // keeping 'none' is important
        } else {
          (..c, content: [#c.content\ *R#row*])
        }
      ),
    
      // color cells based on their columns
      // (using 'fill: (column, row) => color' also works
      // for this particular purpose)
      map-cols: (col, cells) => cells.map(c =>
        if c == none {
          c
        } else {
          (..c, fill: if col < 2 { blue } else { yellow })
        }
      ),
    
      colspanx(2)[a], (),  [b], [J],
      [c], rowspanx(2)[dd], [e], [K],
      [f], (),             [g], [L],
    )

![Rendered image](typst-
img/e4aeb7879544c21da12283922f4e3110d740059da77b65d94e34ed39229ffad1-1.svg)

    
    
    #import "@preview/tablex:0.0.7": gridx
    
    #gridx(
      columns: 3,
      rows: 6,
      fill: (col, row) => (blue, red, green).at(calc.rem(row + col - 1, 3)),
      map-cols: (col, cells) => {
        let last = cells.last()
        last.content = [
          #cells.slice(0, cells.len() - 1).fold(0, (acc, c) => if c != none { acc + eval(c.content.text) } else { acc })
        ]
        last.fill = aqua
        cells.last() = last
        cells
      },
      [0], [5], [10],
      [1], [6], [11],
      [2], [7], [12],
      [3], [8], [13],
      [4], [9], [14],
      [s], [s], [s]
    )

![Rendered image](typst-
img/c67cc9e428f9b21ae2e9c4ba792eacc7391fce70f06375f49d3a5f08234a5a77-1.svg)

==  Tada: data manipulation

    
    
    #import "@preview/tada:0.1.0"
    
    #let column-data = (
      name: ("Bread", "Milk", "Eggs"),
      price: (1.25, 2.50, 1.50),
      quantity: (2, 1, 3),
    )
    #let record-data = (
      (name: "Bread", price: 1.25, quantity: 2),
      (name: "Milk", price: 2.50, quantity: 1),
      (name: "Eggs", price: 1.50, quantity: 3),
    )
    #let row-data = (
      ("Bread", 1.25, 2),
      ("Milk", 2.50, 1),
      ("Eggs", 1.50, 3),
    )
    
    #import tada: TableData, to-tablex
    #let td = TableData(data: column-data)
    // Equivalent to:
    #let td2 = tada.from-records(record-data)
    // _Not_ equivalent to (since field names are unknown):
    #let td3 = tada.from-rows(row-data)
    
    #to-tablex(td)
    #to-tablex(td2)
    #to-tablex(td3)

![Rendered image](typst-
img/06c7045a0bb3aad12c70133b4aa55b1cadc17c944d28803e9418a376187afb2d-1.svg)

==  Tablem: markdown tables

> See documentation [ there ](https://github.com/OrangeX4/typst-tablem)

Render markdown tables in Typst.

    
    
    #import "@preview/tablem:0.1.0": tablem
    
    #tablem[
      | _Name_ | _Location_ | _Height_ | _Score_ |
      | ------ | ---------- | -------- | ------- |
      | John   | Second St. | 180 cm   |  5      |
      | Wally  | Third Av.  | 160 cm   |  10     |
    ]

![Rendered image](typst-
img/6845ef64c7c12ce5f6616f130172c76974b184e97976e59a3a957c273c9084eb-1.svg)

===  Custom render

    
    
    #import "@preview/tablex:0.0.6": tablex, hlinex
    #import "@preview/tablem:0.1.0": tablem
    
    #let three-line-table = tablem.with(
      render: (columns: auto, ..args) => {
        tablex(
          columns: columns,
          auto-lines: false,
          align: center + horizon,
          hlinex(y: 0),
          hlinex(y: 1),
          ..args,
          hlinex(),
        )
      }
    )
    
    #three-line-table[
      | _Name_ | _Location_ | _Height_ | _Score_ |
      | ------ | ---------- | -------- | ------- |
      | John   | Second St. | 180 cm   |  5      |
      | Wally  | Third Av.  | 160 cm   |  10     |
    ]

![Rendered image](typst-
img/ebddbdf17a6518755d55af3900eabe9ffb8fa2c0d8b0326518dac03ca1856648-1.svg)



= *book/packages/presentation.md*

=  Presentations

==  Polylux

> See [ polylux book ](https://polylux.dev/book/)
    
    
    // Get Polylux from the official package repository
    #import "@preview/polylux:0.3.1": *
    
    // Make the paper dimensions fit for a presentation and the text larger
    #set page(paper: "presentation-16-9")
    #set text(size: 25pt)
    
    // Use #polylux-slide to create a slide and style it using your favourite Typst functions
    #polylux-slide[
      #align(horizon + center)[
        = Very minimalist slides
    
        A lazy author
    
        July 23, 2023
      ]
    ]
    
    #polylux-slide[
      == First slide
    
      Some static text on this slide.
    ]
    
    #polylux-slide[
      == This slide changes!
    
      You can always see this.
      // Make use of features like #uncover, #only, and others to create dynamic content
      #uncover(2)[But this appears later!]
    ]

![Rendered image](typst-
img/f46993d445b33c112929c1b2e3308a9a2b27297acc2eb470701fbe6b8707f710-1.svg)

![Rendered image](typst-
img/f46993d445b33c112929c1b2e3308a9a2b27297acc2eb470701fbe6b8707f710-2.svg)

![Rendered image](typst-
img/f46993d445b33c112929c1b2e3308a9a2b27297acc2eb470701fbe6b8707f710-3.svg)

![Rendered image](typst-
img/f46993d445b33c112929c1b2e3308a9a2b27297acc2eb470701fbe6b8707f710-4.svg)

==  Slydst

> See the documentation [ there
> ](https://github.com/glambrechts/slydst?ysclid=lr2gszrkck541184604) .

Much more simpler and less powerful than polulyx:

    
    
    #import "@preview/slydst:0.1.0": *
    
    #show: slides.with(
      title: "Insert your title here", // Required
      subtitle: none,
      date: none,
      authors: (),
      layout: "medium",
      title-color: none,
    )
    
    == Outline
    
    #outline()
    
    = First section
    
    == First slide
    
    #figure(rect(width: 60%), caption: "Caption")
    
    #v(1fr)
    
    #lorem(20)
    
    #definition(title: "An interesting definition")[
      #lorem(20)
    ]

![Rendered image](typst-
img/9d718fb02239fe71227dce959f0f468c0520df208e9b55e518dcf43f554bbd28-1.svg)

![Rendered image](typst-
img/9d718fb02239fe71227dce959f0f468c0520df208e9b55e518dcf43f554bbd28-2.svg)

![Rendered image](typst-
img/9d718fb02239fe71227dce959f0f468c0520df208e9b55e518dcf43f554bbd28-3.svg)

![Rendered image](typst-
img/9d718fb02239fe71227dce959f0f468c0520df208e9b55e518dcf43f554bbd28-4.svg)



= *book/packages/physics.md*

=  Physics

==  ` physica  `

> Physica (Latin for _natural sciences_ ) provides utilities that simplify
> otherwise complex and repetitive mathematical expressions in natural
> sciences.

> Its [ manual ](https://github.com/Leedehai/typst-
> physics/blob/master/physica-manual.pdf) provides a full set of
> demonstrations of how the package could be helpful.

===  Mathematical physics

The [ packages/math.md ](./math.html#common-notations) page has more examples
on its math capabilities. Below is a preview that may be of particular
interest in the domain of physics:

  - Calculus: differential, ordinary and partial derivatives 
    - Optional function name, 
    - Optional order number or array of order numbers, 
    - Customizable "d" symbol and product joiner (say, exterior product), 
    - Overridable total order calculation, 
  - Vectors and vector fields: div, grad, curl, 
  - Taylor expansion, 
  - Dirac braket notations, 
  - Tensors with abstract index notations, 
  - Matrix transpose and dagger (conjugate transpose). 
  - Special matrices: determinant, (anti-)diagonal, identity, zero, Jacobian, Hessian, etc. 

A partial glimpse:

    
    
    #import "@preview/physica:0.9.1": *
    #show: super-T-as-transpose // put in a #[...] to limit its scope...
    #show: super-plus-as-dagger // ...or use scripts() to manually override
    
    $ dd(x,y,2) quad dv(f,x,d:Delta)      quad pdv(,x,y,[2i+1,2+i]) quad
      vb(a) va(a) vu(a_i)  quad mat(laplacian, div; grad, curl)     quad
      tensor(T,+a,-b,+c)   quad ket(phi)  quad A^+ e^scripts(+) A^T integral^T $

![Rendered image](typst-
img/fa8a12d2904a08958d4f83d69dda6bb38308b431055a25790d286a250e364c6c-1.svg)

===  Isotopes

    
    
    #import "@preview/physica:0.9.1": isotope
    
    // a: mass number A
    // z: the atomic number Z
    $
    isotope(I, a:127), quad isotope("Fe", z:26), quad
    isotope("Tl",a:207,z:81) --> isotope("Pb",a:207,z:82) + isotope(e,a:0,z:-1)
    $

![Rendered image](typst-
img/b290d801c6760a41e50520401d9e72cb63a8691aa136308cbad87349e7e436f0-1.svg)

===  Reduced Planck constant (hbar)

In the default font, the Typst built-in symbol ` planck.reduce  ` looks a bit
off: on letter "h" there is a slash instead of a horizontal bar, contrary to
the symbol's colloquial name "h-bar". This package offers ` hbar  ` to render
the symbol in the familiar form⁠. Contrast:

    
    
    #import "@preview/physica:0.9.1": hbar
    
    $ E = planck.reduce omega => E = hbar omega, wide
      frac(planck.reduce^2, 2m) => frac(hbar^2, 2m), wide
      (pi G^2) / (planck.reduce c^4) => (pi G^2) / (hbar c^4), wide
      e^(frac(i(p x - E t), planck.reduce)) => e^(frac(i(p x - E t), hbar)) $

![Rendered image](typst-
img/efab3b0486d1cddc3388248c4100e1cc919088cdb93f3e072001547c40005f01-1.svg)

==  ` quill  ` : quantum diagrams

> See [ documentation ](https://github.com/Mc-Zen/quill/tree/main) .
    
    
    #import "@preview/quill:0.2.0": *
    #quantum-circuit(
      lstick($|0〉$), gate($H$), ctrl(1), rstick($(|00〉+|11〉)/√2$, n: 2), [\ ],
      lstick($|0〉$), 1, targ(), 1
    )

![Rendered image](typst-
img/bd14c65cd60e1efc4d15ae7234e364c6d5740a168e2cb275743ed1fbcc9483eb-1.svg)

    
    
    #import "@preview/quill:0.2.0": *
    
    #let ancillas = (setwire(0), 5, lstick($|0〉$), setwire(1), targ(), 2, [\ ],
    setwire(0), 5, lstick($|0〉$), setwire(1), 1, targ(), 1)
    
    #quantum-circuit(
      scale-factor: 80%,
      lstick($|ψ〉$), 1, 10pt, ctrl(3), ctrl(6), $H$, 1, 15pt, 
        ctrl(1), ctrl(2), 1, [\ ],
      ..ancillas, [\ ],
      lstick($|0〉$), 1, targ(), 1, $H$, 1, ctrl(1), ctrl(2), 
        1, [\ ],
      ..ancillas, [\ ],
      lstick($|0〉$), 2, targ(),  $H$, 1, ctrl(1), ctrl(2), 
        1, [\ ],
      ..ancillas
    )

![Rendered image](typst-
img/597640923e31369199c6e7158de9094a2c94f2c5dae6ced72c6b83b1067fa8e4-1.svg)

    
    
    #import "@preview/quill:0.2.0": *
    
    #quantum-circuit(
      lstick($|psi〉$),  ctrl(1), gate($H$), 1, ctrl(2), meter(), [\ ],
      lstick($|beta_00〉$, n: 2), targ(), 1, ctrl(1), 1, meter(), [\ ],
      3, gate($X$), gate($Z$),  midstick($|psi〉$)
    )

![Rendered image](typst-
img/cc71bc052c7a80c702289f780ee42a168c1491076dd5934408373895ca95c35e-1.svg)



= *book/packages/glossary.md*

=  Glossary

==  glossarium

> [ Link to the universe ](https://typst.app/universe/package/glossarium)

Package to manage glossary and abbreviations.

One of the very first cool packages of Typst, made specially for (probably)
the first thesis written in Typst.

    
    
    #import "@preview/glossarium:0.4.1": make-glossary, print-glossary, gls, glspl
    #show: make-glossary
    
    // for better link visibility
    #show link: set text(fill: blue.darken(60%))
    
    #print-glossary(
        (
        // minimal term
        (key: "kuleuven", short: "KU Leuven"),
    
        // a term with a long form and a group
        (key: "unamur", short: "UNamur", long: "Namur University", group: "Universities"),
    
        // a term with a markup description
        (
          key: "oidc",
          short: "OIDC",
          long: "OpenID Connect",
          desc: [OpenID is an open standard and decentralized authentication protocol promoted by the non-profit
          #link("https://en.wikipedia.org/wiki/OpenID#OpenID_Foundation")[OpenID Foundation].],
          group: "Accronyms",
        ),
    
        // a term with a short plural
        (
          key: "potato",
          short: "potato",
          // "plural" will be used when "short" should be pluralized
          plural: "potatoes",
          desc: [#lorem(10)],
        ),
    
        // a term with a long plural
        (
          key: "dm",
          short: "DM",
          long: "diagonal matrix",
          // "longplural" will be used when "long" should be pluralized
          longplural: "diagonal matrices",
          desc: "Probably some math stuff idk",
        ),
      )
    )
    
    // referencing the OIDC term using gls
    #gls("oidc")
    // displaying the long form forcibly
    #gls("oidc", long: true)
    
    // referencing the OIDC term using the reference syntax
    @oidc
    
    Plural: #glspl("potato")
    
    #gls("oidc", display: "whatever you want")

![Rendered image](typst-
img/c17c1be6563520252dfc59ccc646a6c48fb29e467d03f2892fdbfbddb496c3f9-1.svg)



= *book/packages/headers.md*

=  Headers

==  ` hydra  ` : Contextual headers

We have discussed in ` Typst Basics  ` how to get current heading with `
query(selector(heading).before(here()))  ` for headers. However, this works
badly for nested headings with numbering and similar things. For these cases
there is ` hydra  ` :

    
    
    #import "@preview/hydra:0.5.1": hydra
    
    #set page(height: 10 * 20pt, margin: (y: 4em), numbering: "1", header: context {
      if calc.odd(here().page()) {
        align(right, emph(hydra(1)))
      } else {
        align(left, emph(hydra(2)))
      }
      line(length: 100%)
    })
    #set heading(numbering: "1.1")
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    = Introduction
    #lorem(50)
    
    = Content
    == First Section
    #lorem(50)
    == Second Section
    #lorem(100)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-1.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-2.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-3.svg)

![Rendered image](typst-
img/1a1e2d4655c80e3b0cd9cd7db25c191054aac7ff69aa9cf7cda6935041b614ae-4.svg)



= *book/packages/math.md*

=  Math

==  General

===  ` physica  `

> Physica (Latin for _natural sciences_ ) provides utilities that simplify
> otherwise complex and repetitive mathematical expressions in natural
> sciences.

> Its [ manual ](https://github.com/Leedehai/typst-
> physics/blob/master/physica-manual.pdf) provides a full set of
> demonstrations of how the package could be helpful.

====  Common notations

  - Calculus: differential, ordinary and partial derivatives 
    - Optional function name, 
    - Optional order number or an array of thereof, 
    - Customizable "d" symbol and product joiner (say, exterior product), 
    - Overridable total order calculation, 
  - Vectors and vector fields: div, grad, curl, 
  - Taylor expansion, 
  - Dirac braket notations, 
  - Tensors with abstract index notations, 
  - Matrix transpose and dagger (conjugate transpose). 
  - Special matrices: determinant, (anti-)diagonal, identity, zero, Jacobian, Hessian, etc. 

Below is a preview of those notations.

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 4, align: horizon, stroke: none, gutter: 1em,
    
      // vectors: bold, unit, arrow
      [$ vb(a), vb(e_i), vu(a), vu(e_i), va(a), va(e_i) $],
      // dprod (dot product), cprod (cross product), iprod (innerproduct)
      [$ a dprod b, a cprod b, iprod(a, b) $],
      // laplacian (different from built-in laplace)
      [$ dot.double(u) = laplacian u =: laplace u $],
      // grad, div, curl (vector fields)
      [$ grad phi, div vb(E), \ curl vb(B) $],
    )

![Rendered image](typst-
img/3be7ef86d6c5f7044a42c69fcf93afccd936eb0fcbe987122702c7dda467480f-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 4, align: horizon, stroke: none, gutter: 1em,
    
      // Row 1.
      // dd (differential), var (variation), difference
      [$ dd(f), var(f), difference(f) $],
      // dd, with an order number or an array thereof
      [$ dd(x,y), dd(x,y,2), \ dd(x,y,[1,n]), dd(vb(x),t,[3,]) $],
      // dd, with custom "d" symbol and joiner
      [$ dd(x,y,p:and), dd(x,y,d:Delta), \ dd(x,y,z,[1,1,n+1],d:d,p:dot) $],
      // dv (ordinary derivative), with custom "d" symbol and joiner
      [$ dv(phi,t,d:Delta), dv(phi,t,d:upright(D)), dv(phi,t,d:delta) $],
    
      // Row 2.
      // dv, with optional function name and order
      [$ dv(,t) (dv(x,t)) = dv(x,t,2) $],
      // pdv (partial derivative)
      [$ pdv(f,x,y,2), pdv(,x,y,[k,]) $],
      // pdv, with auto-added overridable total
      [$ pdv(,x,y,[i+2,i+1]), pdv(,y,x,[i+1,i+2],total:3+2i) $],
      // In a flat form
      [$ dv(u,x,s:slash), \ pdv(u,x,y,2,s:slash) $],
    )

![Rendered image](typst-
img/0835a840454f88ed2e3b98ddfe37d6f8026729812372a6298d86129611f348c3-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 3, align: horizon, stroke: none, gutter: 1em,
    
      // tensor
      [$ tensor(T,+a,-b,-c) != tensor(T,-b,-c,+a) != tensor(T,+a',-b,-c) $],
      // Set builder notation
      [$ Set(p, {q^*, p} = 1) $],
      // taylorterm (Taylor series term)
      [$ taylorterm(f,x,x_0,1) \ taylorterm(f,x,x_0,(n+1)) $],
    )

![Rendered image](typst-
img/5c08b65761578f38762229692a33e2b05f096aa8fb7859238b1018240f054d10-1.svg)

    
    
    #import "@preview/physica:0.9.1": * // Symbol names annotated below
    
    #table(
      columns: 3, align: horizon, stroke: none, gutter: 1em,
    
      // expval (mean/expectation value), eval (evaluation boundary)
      [$ expval(X) = eval(f(x)/g(x))^oo_1 $],
      // Dirac braket notations
      [$
        bra(u), braket(u), braket(u, v), \
        ket(u), ketbra(u), ketbra(u, v), \
        mel(phi, hat(p), psi) $],
      // Superscript show rules that need to be enabled explicitly.
      // If put in a content block, they only control that block's scope.
      [
        #show: super-T-as-transpose // "..^T" just like handwriting
        #show: super-plus-as-dagger // "..^+" just like handwriting
        $ op("conj")A^T =^"def" A^+ \
          e^scripts(T), e^scripts(+) $ ], // Override with scripts()
    )

![Rendered image](typst-
img/8965812a9c349892988d61872ff06418581098d15169b775f67b30e3460dd854-1.svg)

====  Matrices

In addition to Typst's built-in ` mat()  ` to write a matrix, physica provides
a number of handy tools to make it even easier.

    
    
    #import "@preview/physica:0.9.1": TT, mdet
    
    $
    // Matrix transpose with "TT", though it is recommended to
    // use super-T-as-transpose so that "A^T" also works (more on that later).
    A^TT,
    // Determinant with "mdet(...)".
    det mat(a, b; c, d) := mdet(a, b; c, d)
    $

![Rendered image](typst-
img/7eccaa3a0cf838bca4daf9ebf573452506d3ea724086fcda0c9eb4264e66b5d9-1.svg)

Diagonal matrix ` dmat(  ...  )  ` , antidiagonal matrix ` admat(  ...  )  ` ,
identity matrix ` imat(n)  ` , and zero matrix ` zmat(n)  ` .

    
    
    #import "@preview/physica:0.9.1": dmat, admat, imat, zmat
    
    $ dmat(1, 2)  dmat(1, a_1, xi, fill:0)               quad
      admat(1, 2) admat(1, a_1, xi, fill:dot, delim:"[") quad
      imat(2)     imat(3, delim:"{",fill:*) quad
      zmat(2)     zmat(3, delim:"|") $

![Rendered image](typst-
img/66bbf5294be293cc58d98de6ca078eb17c58539169325e6b59a6aa78e7a49f62-1.svg)

Jacobian matrix with ` jmat(func;  ...  )  ` or the longer name `
jacobianmatrix  ` , Hessian matrix with ` hmat(func;  ...  )  ` or the longer
name ` hessianmatrix  ` , and finally ` xmat(row, col, func)  ` to build a
matrix.

    
    
    #import "@preview/physica:0.9.1": jmat, hmat, xmat
    
    $
    jmat(f_1,f_2; x,y) jmat(f,g; x,y,z; delim:"[") quad
    hmat(f; x,y)       hmat(; x,y; big:#true)      quad
    
    #let elem-ij = (i,j) => $g^(#(i - 1)#(j - 1)) = #calc.pow(i,j)$
    xmat(2, 2, #elem-ij)
    $

![Rendered image](typst-
img/7cd30cef52b187d17459d7806a94d5ae56118d0f969760bbbaabeb83007e6869-1.svg)

===  ` mitex  `

> MiTeX provides LaTeX support powered by WASM in Typst, including real-time
> rendering of LaTeX math equations. You can also use LaTeX syntax to write `
> \r  ef  ` and ` \l  abel  ` .

> Please refer to the [ manual ](https://github.com/mitex-rs/mitex) for more
> details.
    
    
    #import "@preview/mitex:0.2.4": *
    
    Write inline equations like #mi("x") or #mi[y].
    
    Also block equations:
    
    #mitex(`
      \newcommand{\f}[2]{#1f(#2)}
      \f\relax{x} = \int_{-\infty}^\infty
        \f\hat\xi\,e^{2 \pi i \xi x}
        \,d\xi
    `)
    
    Text mode:
    
    #mitext(`
      \iftypst
        #set math.equation(numbering: "(1)", supplement: "equation")
      \fi
    
      An inline equation $x + y$ and block \eqref{eq:pythagoras}.
    
      \begin{equation}
        a^2 + b^2 = c^2 \label{eq:pythagoras}
      \end{equation}
    `)

![Rendered image](typst-
img/a3ff500a39b6d93d85b223af0aa162a5bfbe93fad3436dba80ee022638ed727a-1.svg)

===  ` i-figured  `

Configurable equation numbering per section in Typst. There is also figure
numbering per section, see more examples in its [ manual
](https://github.com/RubixDev/typst-i-figured) .

    
    
    #import "@preview/i-figured:0.2.3"
    
    // make sure you have some heading numbering set
    #set heading(numbering: "1.1")
    
    // apply the show rules (these can be customized)
    #show heading: i-figured.reset-counters
    #show math.equation: i-figured.show-equation.with(
      level: 1,
      zero-fill: true,
      leading-zero: true,
      numbering: "(1.1)",
      prefix: "eqt:",
      only-labeled: false,  // numbering all block equations implicitly
      unnumbered-label: "-",
    )
    
    
    = Introduction
    
    You can write inline equations such as $x + y$, and numbered block equations like:
    
    $ phi.alt := (1 + sqrt(5)) / 2 $ <ratio>
    
    To reference a math equation, please use the `eqt:` prefix. For example, with @eqt:ratio, we have:
    
    $ F_n = floor(1 / sqrt(5) phi.alt^n) $
    
    
    = Appdendix
    
    Additionally, you can use the <-> tag to indicate that a block formula should not be numbered:
    
    $ y = integral_1^2 x^2 dif x $ <->
    
    Subsequent math equations will continue to be numbered as usual:
    
    $ F_n = floor(1 / sqrt(5) phi.alt^n) $

![Rendered image](typst-
img/b338b679a09371841be9322ac7cee901b6a1415582c3495677833602e344cae0-1.svg)

==  Theorems

===  ` ctheorem  `

A numbered theorem environment in Typst. See more examples in its [ manual
](https://github.com/sahasatvik/typst-theorems/blob/main/manual.pdf) .

    
    
    #import "@preview/ctheorems:1.1.0": *
    #show: thmrules
    
    #set page(width: 16cm, height: auto, margin: 1.5cm)
    #set heading(numbering: "1.1")
    
    #let theorem = thmbox("theorem", "Theorem", fill: rgb("#eeffee"))
    #let corollary = thmplain("corollary", "Corollary", base: "theorem", titlefmt: strong)
    #let definition = thmbox("definition", "Definition", inset: (x: 1.2em, top: 1em))
    
    #let example = thmplain("example", "Example").with(numbering: none)
    #let proof = thmplain(
      "proof", "Proof", base: "theorem",
      bodyfmt: body => [#body #h(1fr) $square$]
    ).with(numbering: none)
    
    = Prime Numbers
    #lorem(7)
    #definition[ A natural number is called a #highlight[_prime number_] if ... ]
    #example[
      The numbers $2$, $3$, and $17$ are prime. See @cor_largest_prime shows that
      this list is not exhaustive!
    ]
    #theorem("Euclid")[There are infinitely many primes.]
    #proof[
      Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration
      of all primes. ... a contradiction.
    ]
    #corollary[
      There is no largest prime number.
    ] <cor_largest_prime>
    #corollary[There are infinitely many composite numbers.]

![Rendered image](typst-
img/54d7817ddc4a8481da09052aa51dc6e4dde19bd85f40173b92750c402b07ff73-1.svg)

===  ` lemmify  `

Lemmify is another theorem evironment generator with many selector and
numbering capabilities. See documentations in its [ readme
](https://github.com/Marmare314/lemmify) .

    
    
    #import "@preview/lemmify:0.1.5": *
    
    #let my-thm-style(
      thm-type, name, number, body
    ) = grid(
      columns: (1fr, 3fr),
      column-gutter: 1em,
      stack(spacing: .5em, [#strong(thm-type) #number], emph(name)),
      body
    )
    #let my-styling = ( thm-styling: my-thm-style )
    #let (
      definition, theorem, proof, lemma, rules
    ) = default-theorems("thm-group", lang: "en", ..my-styling)
    #show: rules
    #show thm-selector("thm-group"): box.with(inset: 0.8em)
    #show thm-selector("thm-group", subgroup: "theorem"): it => box(
      it, fill: rgb("#eeffee"))
    
    #set heading(numbering: "1.1")
    
    = Prime numbers
    #lorem(7) @proof and @thm[theorem]
    #definition[ A natural number is called a #highlight[_prime number_] if ... ]
    #theorem(name: "Theorem name")[There are infinitely many primes.]<thm>
    #proof[
      Suppose to the contrary that $p_1, p_2, dots, p_n$ is a finite enumeration
      of all primes. ... #highlight[_a contradiction_].]<proof>
    #lemma[There are infinitely many composite numbers.]

![Rendered image](typst-
img/46b0a27243980ee99b20133dbba1f00d4d819adff6e645ca0749820f5caf3589-1.svg)



= *book/packages/wrapping.md*

=  Wrapping figures

The better native support for wrapping is planned, however, something is
already possible via package:

    
    
    #import "@preview/wrap-it:0.1.0": wrap-content, wrap-top-bottom
    
    #set par(justify: true)
    #let fig = figure(
      rect(fill: teal, radius: 0.5em, width: 8em),
      caption: [A figure],
    )
    #let body = lorem(40)
    #wrap-content(fig, body)
    
    #wrap-content(
      fig,
      body,
      align: bottom + right,
      column-gutter: 2em
    )
    
    #let boxed = box(fig, inset: 0.5em)
    #wrap-content(boxed)[
      #lorem(40)
    ]
    
    #let fig2 = figure(
      rect(fill: lime, radius: 0.5em),
      caption: [Another figure],
    )
    #wrap-top-bottom(boxed, fig2, lorem(60))

![Rendered image](typst-
img/1d249d6947bbea7f94c4f5f111c873f278dcf473e0cf672d6c55800c0eb6822c-1.svg)

Limitations: non-ideal spacing near warping, only top-bottom left/right are
supported.



= *book/packages/external.md*

=  External

These are not official packages. Maybe once they will become one.

However, they may be very useful.

==  Treemap display

[ Code Link
](https://gist.github.com/taylorh140/9e353fdf737f1ef51aacb332efdd9516)

![Treemap diagram](img/treemap.png)



= *book/packages/graphs.md*

=  Graphs

==  ` cetz  `

Cetz comes with quite built-in support of drawing basic graphs. It is much
more customizable and extensible then packages like ` plotst  ` , so it is
recommended to skim through its possibilities.

> See full manual [ there ](https://github.com/johannes-
> wolf/cetz/blob/master/manual.pdf?raw=true) .
    
    
    #let data = (
      [A], ([B], [C], [D]), ([E], [F])
    )
    
    #import "@preview/cetz:0.1.2": canvas, draw, tree
    
    #canvas(length: 1cm, {
      import draw: *
    
      set-style(content: (padding: .2),
        fill: gray.lighten(70%),
        stroke: gray.lighten(70%))
    
      tree.tree(data, spread: 2.5, grow: 1.5, draw-node: (node, _) => {
        circle((), radius: .45, stroke: none)
        content((), node.content)
      }, draw-edge: (from, to, _) => {
        line((a: from, number: .6, abs: true, b: to),
             (a: to, number: .6, abs: true, b: from), mark: (end: ">"))
      }, name: "tree")
    
      // Draw a "custom" connection between two nodes
      let (a, b) = ("tree.0-0-1", "tree.0-1-0",)
      line((a: a, number: .6, abs: true, b: b), (a: b, number: .6, abs: true, b: a), mark: (end: ">", start: ">"))
    })

![Rendered image](typst-
img/18fc5bbebb79c44df6fd484d2cc0c763b6a64e4a6455535738e40932f5fa39b4-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas({
        import draw: *
        circle((90deg, 3), radius: 0, name: "content")
        circle((210deg, 3), radius: 0, name: "structure")
        circle((-30deg, 3), radius: 0, name: "form")
        for (c, a) in (
        ("content", "bottom"),
        ("structure", "top-right"),
        ("form", "top-left")
        ) {
        content(c, box(c + " oriented", inset: 5pt), anchor:
        a)
        }
        stroke(gray + 1.2pt)
        line("content", "structure", "form", close: true)
        for (c, s, f, cont) in (
        (0.5, 0.1, 1, "PostScript"),
        (1, 0, 0.4, "DVI"),
        (0.5, 0.5, 1, "PDF"),
        (0, 0.25, 1, "CSS"),
        (0.5, 1, 0, "XML"),
        (0.5, 1, 0.4, "HTML"),
        (1, 0.2, 0.8, "LaTeX"),
        (1, 0.6, 0.8, "TeX"),
        (0.8, 0.8, 1, "Word"),
        (1, 0.05, 0.05, "ASCII")
        ) {
        content((bary: (content: c, structure: s, form:
        f)),cont)
        }
    })

![Rendered image](typst-
img/e93f89ca321c612b1157fd81cea439ade85d17485d0111a08b94e54e59e356db-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, chart
    
    #let data2 = (
      ([15-24], 18.0, 20.1, 23.0, 17.0),
      ([25-29], 16.3, 17.6, 19.4, 15.3),
      ([30-34], 14.0, 15.3, 13.9, 18.7),
      ([35-44], 35.5, 26.5, 29.4, 25.8),
      ([45-54], 25.0, 20.6, 22.4, 22.0),
      ([55+],   19.9, 18.2, 19.2, 16.4),
    )
    
    #canvas({
      chart.barchart(mode: "clustered",
                     size: (9, auto),
                     label-key: 0,
                     value-key: (..range(1, 5)),
                     bar-width: .8,
                     x-tick-step: 2.5,
                     data2)
    })

![Rendered image](typst-
img/3d162509c91794a0814503ed304bea48b221b2f58559c9d832c3254580cd0d2b-1.svg)

===  Draw a graph in polar coords

    
    
    #import "@preview/cetz:0.1.2": canvas, plot
    
    #figure(
    canvas(length: 1cm, {
      plot.plot(size: (5, 5),
        x-tick-step: 5,
        y-tick-step: 5,
        x-max: 20,
        y-max: 20,
        x-min: -20,
        y-min: -20,
        x-grid: true,
        y-grid: true,
        {
          plot.add(
            domain: (0,2*calc.pi),
            samples: 100,
            t => (13*calc.cos(t)-5*calc.cos(2*t)-2*calc.cos(3*t)-calc.cos(4*t), 16*calc.sin(t)*calc.sin(t)*calc.sin(t))
            )
        })
    }), caption: "Plot made with cetz",)

![Rendered image](typst-
img/d24c6270b5c074f9331b16cdde3b626129537c5b4760c17b4e447a7ef3f22388-1.svg)

==  ` diagraph  `

===  Test

    
    
    #import "@preview/diagraph:0.2.0": *
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph {
        rankdir=LR;
        f -> B
        B -> f
        C -> D
        D -> B
        E -> F
        f -> E
        B -> F
      }
      ```
    )

![Rendered image](typst-
img/f47c3218e9b78fba4f38d6daeaff627ee6b210bda8dd26fcbc56f14a7bb984ee-1.svg)

===  Eating

    
    
    #import "@preview/diagraph:0.2.0": *
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph {
        orange -> fruit
        apple -> fruit
        fruit -> food
        carrot -> vegetable
        vegetable -> food
        food -> eat
        eat -> survive
      }
      ```
    )

![Rendered image](typst-
img/0a7fcbfb15be7bac447381d10af9488a7353071c92d849d1e4b7800a360c7659-1.svg)

===  FFT

Labels are overridden manually.

    
    
    #import "@preview/diagraph:0.2.0": *
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph {
        node [shape=none]
        1
        2
        3
        r1
        r2
        r3
        1->2
        1->3
        2->r1 [color=red]
        3->r2 [color=red]
        r1->r3 [color=red]
        r2->r3 [color=red]
      }
      ```
    )

![Rendered image](typst-
img/5d7074ff82c6786fa2fad07b25ff4c238dbb9333b0a806d3ea74474fbf8d005e-1.svg)

===  State Machine

    
    
    #import "@preview/diagraph:0.2.0": *
    #set page(width: auto)
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph finite_state_machine {
        rankdir=LR
        size="8,5"
    
        node [shape=doublecircle]
        LR_0
        LR_3
        LR_4
        LR_8
    
        node [shape=circle]
        LR_0 -> LR_2 [label="SS(B)"]
        LR_0 -> LR_1 [label="SS(S)"]
        LR_1 -> LR_3 [label="S($end)"]
        LR_2 -> LR_6 [label="SS(b)"]
        LR_2 -> LR_5 [label="SS(a)"]
        LR_2 -> LR_4 [label="S(A)"]
        LR_5 -> LR_7 [label="S(b)"]
        LR_5 -> LR_5 [label="S(a)"]
        LR_6 -> LR_6 [label="S(b)"]
        LR_6 -> LR_5 [label="S(a)"]
        LR_7 -> LR_8 [label="S(b)"]
        LR_7 -> LR_5 [label="S(a)"]
        LR_8 -> LR_6 [label="S(b)"]
        LR_8 -> LR_5 [label="S(a)"]
      }
      ```
    )

![Rendered image](typst-
img/ce09c93e743aceb45852a12c83839cafd73a5c68d370ff2f863c79ec5896ff10-1.svg)

===  Clustering

> See [ docs ](http://www.graphviz.org/content/cluster) .
    
    
    #import "@preview/diagraph:0.2.0": *
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph G {
    
        subgraph cluster_0 {
          style=filled;
          color=lightgrey;
          node [style=filled,color=white];
          a0 -> a1 -> a2 -> a3;
          label = "process #1";
        }
    
        subgraph cluster_1 {
          node [style=filled];
          b0 -> b1 -> b2 -> b3;
          label = "process #2";
          color=blue
        }
    
        start -> a0;
        start -> b0;
        a1 -> b3;
        b2 -> a3;
        a3 -> a0;
        a3 -> end;
        b3 -> end;
    
        start [shape=Mdiamond];
        end [shape=Msquare];
      }
      ```
    )

![Rendered image](typst-
img/5b51a47ca589de6fdd481db4b61f96395ef246f12a54d77d6d9c443c3cd2fc72-1.svg)

===  HTML

    
    
    #import "@preview/diagraph:0.2.0": *
    #let renderc(code) = render(code.text)
    
    #renderc(
      ```
      digraph structs {
          node [shape=plaintext]
          struct1 [label=<
      <TABLE BORDER="0" CELLBORDER="1" CELLSPACING="0">
        <TR><TD>left</TD><TD PORT="f1">mid dle</TD><TD PORT="f2">right</TD></TR>
      </TABLE>>];
          struct2 [label=<
      <TABLE BORDER="0" CELLBORDER="1" CELLSPACING="0">
        <TR><TD PORT="f0">one</TD><TD>two</TD></TR>
      </TABLE>>];
          struct3 [label=<
      <TABLE BORDER="0" CELLBORDER="1" CELLSPACING="0" CELLPADDING="4">
        <TR>
          <TD ROWSPAN="3">hello<BR/>world</TD>
          <TD COLSPAN="3">b</TD>
          <TD ROWSPAN="3">g</TD>
          <TD ROWSPAN="3">h</TD>
        </TR>
        <TR>
          <TD>c</TD><TD PORT="here">d</TD><TD>e</TD>
        </TR>
        <TR>
          <TD COLSPAN="3">f</TD>
        </TR>
      </TABLE>>];
          struct1:f1 -> struct2:f0;
          struct1:f2 -> struct3:here;
      }
      ```
    )

![Rendered image](typst-
img/104d9f0e05417c58dce29ff55b47019eadd8538eed11bf552b03c9803fb8ce5b-1.svg)

===  Overridden labels

Labels for nodes ` big  ` and ` sum  ` are overridden.

    
    
    #import "@preview/diagraph:0.2.0": *
    #set page(width: auto)
    
    #raw-render(
      ```
      digraph {
        rankdir=LR
        node[shape=circle]
        Hmm -> a_0
        Hmm -> big
        a_0 -> "a'" -> big [style="dashed"]
        big -> sum
      }
      ```,
      labels: (:
        big: [_some_#text(2em)[ big ]*text*],
        sum: $ sum_(i=0)^n 1/i $,
      ),
    )

![Rendered image](typst-
img/a89c13a3c9aad0509c224ede97b8f1ed14c899049f92e6f23a2effc0bd56de40-1.svg)

==  ` bob-draw  `

WASM plugin for [ svgbob ](https://github.com/ivanceras/svgbob) to draw easily
with ASCII,.

    
    
    #import "@preview/bob-draw:0.1.0": *
    #render(```
             /\_/\
    bob ->  ( o.o )
             \ " /
      .------/  /
     (        | |
      `====== o o
    ```)

![Rendered image](typst-
img/6f2c3c039f98a852450fad73ef9ee68d6e4ddcef39edc2376903cf0aa72606a2-1.svg)

    
    
    #import "@preview/bob-draw:0.1.0": *
    #show raw.where(lang: "bob"): it => render(it)
    
    #render(
        ```
          0       3  
           *-------* 
        1 /|    2 /| 
         *-+-----* | 
         | |4    | |7
         | *-----|-*
         |/      |/
         *-------*
        5       6
        ```,
        width: 25%,
    )
    
    ```bob
    "cats:"
     /\_/\  /\_/\  /\_/\  /\_/\ 
    ( o.o )( o.o )( o.o )( o.o )
    ```
    
    ```bob
           +10-15V           ___0,047R
          *---------o-----o-|___|-o--o---------o----o-------.
        + |         |     |       |  |         |    |       |
        -===-      _|_    |       | .+.        |    |       |
        -===-      .-.    |       | | | 2k2    |    |       |
        -===-    470| +   |       | | |        |    |      _|_
        - |       uF|     '--.    | '+'       .+.   |      \ / LED
          +---------o        |6   |7 |8    1k | |   |      -+-
                 ___|___   .-+----+--+--.     | |   |       |
                  -═══-    |            |     '+'   |       |
                    -      |            |1     |  |/  BC    |
                   GND     |            +------o--+   547   |
                           |            |      |  |`>       |
                           |            |     ,+.   |       |
                   .-------+            | 220R| |   o----||-+  IRF9Z34
                   |       |            |     | |   |    |+->
                   |       |  MC34063   |     `+'   |    ||-+
                   |       |            |      |    |       |  BYV29     -12V6
                   |       |            |      '----'       o--|<-o----o--X OUT
     6000 micro  - | +     |            |2                  |     |    |
     Farad, 40V ___|_____  |            |--o                C|    |    |
     Capacitor  ~ ~ ~ ~ ~  |            | GND         30uH  C|    |   --- 470
                   |       |            |3      1nF         C|    |   ###  uF
                   |       |            |-------||--.       |     |    | +
                   |       '-----+----+-'           |      GND    |   GND
                   |            5|   4|             |             |
                   |             |    '-------------o-------------o
                   |             |                           ___  |
                   `-------------*------/\/\/------------o--|___|-'
                                         2k              |       1k0
                                                        .+.
                                                        | | 5k6 + 3k3
                                                        | | in Serie
                                                        '+'
                                                         |
                                                        GND
    ```

![Rendered image](typst-
img/850abc33fa97f8b80bbda399475b0e4436d275c03f1ca369187eea9e72948b01-1.svg)

==  ` wavy  `

==  ` finite  `

Finite automata. See the [ manual ](https://github.com/jneug/typst-
finite/blob/main/manual.pdf) for a full documentation.

    
    
    #import "@preview/finite:0.3.0": automaton
    
    #automaton((
      q0: (q1:0, q0:"0,1"),
      q1: (q0:(0,1), q2:"0"),
      q2: (),
    ))

![Rendered image](typst-
img/9eddd9b18a2df43372188dab692be9e2973fac63f3764683c431a2c0fb8ba873-1.svg)



= **book/packages/word_count.md**

=  Counting words

==  Wordometr

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count
    
    In this document, there are #total-words words all up.
    
    #word-count(total => [
      The number of words in this block is #total.words
      and there are #total.characters letters.
    ])

![Rendered image](typst-
img/a36d12209002f93aeaf23d4b21fcd4dcb1f9326f6ad358ad01558f09dede39c2-1.svg)

===  Excluding elements

You can exclude elements by name (e.g., ` "caption"  ` ), function (e.g., `
figure.caption  ` ), where-selector (e.g., ` raw.where(block: true)  ` ), or `
label  ` (e.g., ` < no-wc  > ` ).

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count.with(exclude: (heading.where(level: 1), strike))
    
    = This Heading Doesn't Count
    == But I do!
    
    In this document #strike[(excluding me)], there are #total-words words all up.
    
    #word-count(total => [
      You can exclude elements by label, too.
      #[That was #total-words, excluding this sentence!] <no-wc>
    ], exclude: <no-wc>)

![Rendered image](typst-
img/0e46f8aa570972e4f8a92bfa4b8f7b86b6374d632fa27bd043c102b683d70f96-1.svg)



= **book/packages/index.md**

=  Packages

Once the [ Typst Universe ](https://typst.app/universe) was launched, this
chapter has become almost redundant. The Universe is actually a very cool
place to look for packages.

However, there are still some cool examples of interesting package usage.

==  General

Typst has packages, but, unlike LaTeX, you need to remember:

  - You need them only for some specialized tasks, basic formatting _can be totally done without them_ . 
  - Packages are much lighter and much easier "installed" than LaTeX ones. 
  - Packages are just plain Typst files (and sometimes plugins), so you can easily write your own! 

To use mighty package, just write, like this:

    
    
    #import "@preview/cetz:0.1.2": canvas, plot
    
    #canvas(length: 1cm, {
      plot.plot(size: (8, 6),
        x-tick-step: none,
        x-ticks: ((-calc.pi, $-pi$), (0, $0$), (calc.pi, $pi$)),
        y-tick-step: 1,
        {
          plot.add(
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.sin(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos((x + calc.pi) * 1rad))
        })
    })

![Rendered image](typst-
img/29d7015ed96122fa3fb663929c1ac58d25340995423c82456ab8815811373979-1.svg)

==  Contributing

If you are author of a package or just want to make a fair overview, feel free
to make issues/PR-s!



= **book/packages/misc.md**

=  Misc

=  Formatting strings

==  ` oxifmt  ` , general purpose string formatter

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #strfmt("I'm {}. I have {num} cars. I'm {0}. {} is {{cool}}.", "John", "Carl", num: 10) \
    #strfmt("{0:?}, {test:+012e}, {1:-<#8x}", "hi", -74, test: 569.4) \
    #strfmt("{:_>+11.5}", 59.4) \
    #strfmt("Dict: {:!<10?}", (a: 5))

![Rendered image](typst-
img/f4f305da3efacf420f5d2a5159a57cca479ebbfd9b7412246d483de520135087-1.svg)

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #strfmt("First: {}, Second: {}, Fourth: {3}, Banana: {banana} (brackets: {{escaped}})", 1, 2.1, 3, label("four"), banana: "Banana!!")\
    #strfmt("The value is: {:?} | Also the label is {:?}", "something", label("label"))\
    #strfmt("Values: {:?}, {1:?}, {stuff:?}", (test: 500), ("a", 5.1), stuff: [a])\
    #strfmt("Left5 {:_<5}, Right6 {:*>6}, Center10 {centered: ^10?}, Left3 {tleft:_<3}", "xx", 539, tleft: "okay", centered: [a])\

![Rendered image](typst-
img/39d725a28a184c450c74f3f895d1d59d26271b86acbddd454da564df76b668c8-1.svg)

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #repr(strfmt("Left-padded7 numbers: {:07} {:07} {:07} {3:07}", 123, -344, 44224059, 45.32))\
    #strfmt("Some numbers: {:+} {:+08}; With fill and align: {:_<+8}; Negative (no-op): {neg:+}", 123, 456, 4444, neg: -435)\
    #strfmt("Bases (10, 2, 8, 16(l), 16(U):) {0} {0:b} {0:o} {0:x} {0:X} | W/ prefixes and modifiers: {0:#b} {0:+#09o} {0:_>+#9X}", 124)\
    #strfmt("{0:.8} {0:.2$} {0:.potato$}", 1.234, 0, 2, potato: 5)\
    #strfmt("{0:e} {0:E} {0:+.9e} | {1:e} | {2:.4E}", 124.2312, 50, -0.02)\
    #strfmt("{0} {0:.6} {0:.5e}", 1.432, fmt-decimal-separator: ",")

![Rendered image](typst-
img/7b709cd252c147436c88822b60d49ede25a23040531eeac41fb2ba37ca46a2d8-1.svg)

==  ` name-it  ` , integer to text

    
    
    #import "@preview/name-it:0.1.0": name-it
    
    - #name-it(2418345)

![Rendered image](typst-
img/825de955e9f7261cd08d725520caf813e797aa4891da32ed7b43bafbe8b19f28-1.svg)

==  ` nth  ` , Nth element

    
    
    #import "@preview/nth:0.2.0": nth
    #nth(3), #nth(5), #nth(2421)

![Rendered image](typst-
img/f8389763af9ec32227285bdc25885f02b4ad74d6a5900852ccd0664989f1d3cb-1.svg)



= **book/packages/boxes.md**

=  Custom boxes

==  Showbox

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      [Hello world!]
    )

![Rendered image](typst-
img/5b1a31dde61cee643fe9c8550a396d2cad3d27bcaf56412fb1b1a1a2563c462e-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    // First showybox
    #showybox(
      frame: (
        border-color: red.darken(50%),
        title-color: red.lighten(60%),
        body-color: red.lighten(80%)
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center
      ),
      shadow: (
        offset: 3pt,
      ),
      title: "Red-ish showybox with separated sections!",
      lorem(20),
      lorem(12)
    )
    
    // Second showybox
    #showybox(
      frame: (
        dash: "dashed",
        border-color: red.darken(40%)
      ),
      body-style: (
        align: center
      ),
      sep: (
        dash: "dashed"
      ),
      shadow: (
    	  offset: (x: 2pt, y: 3pt),
        color: yellow.lighten(70%)
      ),
      [This is an important message!],
      [Be careful outside. There are dangerous bananas!]
    )

![Rendered image](typst-
img/71353a03ef746508398e53dc16ea676041d953dadb029a8e186fd9c317085510-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      title: "Stokes' theorem",
      frame: (
        border-color: blue,
        title-color: blue.lighten(30%),
        body-color: blue.lighten(95%),
        footer-color: blue.lighten(80%)
      ),
      footer: "Information extracted from a well-known public encyclopedia"
    )[
      Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma equiv Gamma$. If a vector field $bold(F)(x,y,z)=(F_x (x,y,z), F_y (x,y,z), F_z (x,y,z))$ is defined and has continuous first order partial derivatives in a region containing $Sigma$, then
    
      $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) = integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma) $
    ]

![Rendered image](typst-
img/9e5c363090d9b928ee6c998876dd9e15a388ab6f6ae793f8a86ad688d2a62f2c-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      title-style: (
        weight: 900,
        color: red.darken(40%),
        sep-thickness: 0pt,
        align: center
      ),
      frame: (
        title-color: red.lighten(80%),
        border-color: red.darken(40%),
        thickness: (left: 1pt),
        radius: 0pt
      ),
      title: "Carnot cycle's efficiency"
    )[
      Inside a Carnot cycle, the efficiency $eta$ is defined to be:
    
      $ eta = W/Q_H = frac(Q_H + Q_C, Q_H) = 1 - T_C/T_H $
    ]

![Rendered image](typst-
img/3ce2b6bf5cd66f8aaa6c960c8f18902b63518eb4c6ee3f41337c1857e31128e9-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      footer-style: (
        sep-thickness: 0pt,
        align: right,
        color: black
      ),
      title: "Divergence theorem",
      footer: [
        In the case of $n=3$, $V$ represents a volume in three-dimensional space, and $diff V = S$ its surface
      ]
    )[
      Suppose $V$ is a subset of $RR^n$ which is compact and has a piecewise smooth boundary $S$ (also indicated with $diff V = S$). If $bold(F)$ is a continuously differentiable vector field defined on a neighborhood of $V$, then:
    
      $ integral.triple_V (bold(nabla) dot bold(F)) dif V = integral.surf_S (bold(F) dot bold(hat(n))) dif S $
    ]

![Rendered image](typst-
img/9abf5c05795f94a0b36b0e0fe84bb13ae210e6c234ad306606ed9bf52bd5e481-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      frame: (
        border-color: red.darken(30%),
        title-color: red.darken(30%),
        radius: 0pt,
        thickness: 2pt,
        body-inset: 2em,
        dash: "densely-dash-dotted"
      ),
      title: "Gauss's Law"
    )[
      The net electric flux through any hypothetical closed surface is equal to $1/epsilon_0$ times the net electric charge enclosed within that closed surface. The closed surface is also referred to as Gaussian surface. In its integral form:
    
      $ Phi_E = integral.surf_S bold(E) dot dif bold(A) = Q/epsilon_0 $
    ]

![Rendered image](typst-
img/9ae97a9b51a35a54fab7e017b1f500b5062b7e644928fa132a4cd1b218e8aad8-1.svg)

==  Colorful boxes

    
    
    #import "@preview/colorful-boxes:1.2.0": colorbox, slantedColorbox, outlinebox, stickybox
    
    #colorbox(
      title: lorem(5),
      color: "blue",
      radius: 2pt,
      width: auto
    )[
      #lorem(50)
    ]
    
    #slantedColorbox(
      title: lorem(5),
      color: "red",
      radius: 0pt,
      width: auto
    )[
      #lorem(50)
    ]
    
    #outlinebox(
      title: lorem(5),
      color: none,
      width: auto,
      radius: 2pt,
      centering: false
    )[
      #lorem(50)
    ]
    
    #outlinebox(
      title: lorem(5),
      color: "green",
      width: auto,
      radius: 2pt,
      centering: true
    )[
      #lorem(50)
    ]
    
    #stickybox(
      rotation: 3deg,
      width: 7cm
    )[
      #lorem(20)
    ]

![Rendered image](typst-
img/a8efee5212da42450ccb46cedda2280b5e876e22cc08ab656a73d379754c8661-1.svg)

==  Theorems

See [ math ](./math.html)



= **book/packages/code.md**

=  Code

==  ` codly  `

> See docs [ there ](https://github.com/Dherse/codly)
    
    
    #import "@preview/codly:0.1.0": codly-init, codly, disable-codly
    #show: codly-init.with()
    
    #codly(languages: (
            typst: (name: "Typst", color: rgb("#41A241"), icon: none),
        ),
        breakable: false
    )
    
    ```typst
    #import "@preview/codly:0.1.0": codly-init
    #show: codly-init.with()
    ```
    
    // Still formatted!
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
    
    #disable-codly()

![Rendered image](typst-
img/eaa07afd21b4783a4be0a9726e714a8a4644421e5a93383e7deaeffaf4765105-1.svg)

==  Codelst

    
    
    #import "@preview/codelst:2.0.0": sourcecode
    
    #sourcecode[```typ
    #show "ArtosFlow": name => box[
      #box(image(
        "logo.svg",
        height: 0.7em,
      ))
      #name
    ]
    
    This report is embedded in the
    ArtosFlow project. ArtosFlow is a
    project of the Artos Institute.
    ```]

![Rendered image](typst-
img/2b2bbf130111979e4bc4cbc33171a39842467b3ea5e67a7fa0fcbf26222e8f90-1.svg)



= **book/packages/layout.md**

=  Layouting

General useful things.

==  Pinit: relative place by pins

The idea of [ pinit ](https://github.com/OrangeX4/typst-pinit) is pinning pins
on the normal flow of the text, and then placing the content relative to pins.

    
    
    #import "@preview/pinit:0.1.3": *
    #set page(height: 6em, width: 20em)
    
    #set text(size: 24pt)
    
    A simple #pin(1)highlighted text#pin(2).
    
    #pinit-highlight(1, 2)
    
    #pinit-point-from(2)[It is simple.]

![Rendered image](typst-
img/b0a3a289ec65a00a9b39e0689578c9c139a65d1d9f379fa1593ba8ea9268af25-1.svg)

More complex example:

    
    
    #import "@preview/pinit:0.1.3": *
    
    // Pages
    #set page(paper: "presentation-4-3")
    #set text(size: 20pt)
    #show heading: set text(weight: "regular")
    #show heading: set block(above: 1.4em, below: 1em)
    #show heading.where(level: 1): set text(size: 1.5em)
    
    // Useful functions
    #let crimson = rgb("#c00000")
    #let greybox(..args, body) = rect(fill: luma(95%), stroke: 0.5pt, inset: 0pt, outset: 10pt, ..args, body)
    #let redbold(body) = {
      set text(fill: crimson, weight: "bold")
      body
    }
    #let blueit(body) = {
      set text(fill: blue)
      body
    }
    
    // Main body
    #block[
      = Asymptotic Notation: $O$
    
      Use #pin("h1")asymptotic notations#pin("h2") to describe asymptotic efficiency of algorithms.
      (Ignore constant coefficients and lower-order terms.)
    
      #greybox[
        Given a function $g(n)$, we denote by $O(g(n))$ the following *set of functions*:
        #redbold(${f(n): "exists" c > 0 "and" n_0 > 0, "such that" f(n) <= c dot g(n) "for all" n >= n_0}$)
      ]
    
      #pinit-highlight("h1", "h2")
    
      $f(n) = O(g(n))$: #pin(1)$f(n)$ is *asymptotically smaller* than $g(n)$.#pin(2)
    
      $f(n) redbold(in) O(g(n))$: $f(n)$ is *asymptotically* #redbold[at most] $g(n)$.
    
      #pinit-line(stroke: 3pt + crimson, start-dy: -0.25em, end-dy: -0.25em, 1, 2)
    
      #block[Insertion Sort as an #pin("r1")example#pin("r2"):]
    
      - Best Case: $T(n) approx c n + c' n - c''$ #pin(3)
      - Worst case: $T(n) approx c n + (c' \/ 2) n^2 - c''$ #pin(4)
    
      #pinit-rect("r1", "r2")
    
      #pinit-place(3, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n)$]]
      #pinit-place(4, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n)$]]
    
      #blueit[Q: Is $n^(3) = O(n^2)$#pin("que")? How to prove your answer#pin("ans")?]
    
      #pinit-point-to("que", fill: crimson, redbold[No.])
      #pinit-point-from("ans", body-dx: -150pt)[
        Show that the equation $(3/2)^n >= c$ \
        has infinitely many solutions for $n$.
      ]
    ]

![Rendered image](typst-
img/4cc4ac1de81450b49f618408d35cd551858a4fcee317859f7f2a5d84482a9612-1.svg)

==  Margin notes

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    = Margin Notes
    == Setup
    Unfortunately `typst` doesn't expose margins to calling functions, so you'll need to set them explicitly. This is done using `set-page-properties` *before you place any content*:
    
    // At the top of your source file
    // Of course, you can substitute any margin numbers you prefer
    // provided the page margins match what you pass to `set-page-properties`
    
    == The basics
    #lorem(20)
    #margin-note(side: left)[Hello, world!]
    #lorem(10)
    #margin-note[Hello from the other side]
    
    #lorem(25)
    #margin-note[When notes are about to overlap, they're automatically shifted]
    #margin-note(stroke: aqua + 3pt)[To avoid collision]
    #lorem(25)
    
    #let caution-rect = rect.with(inset: 1em, radius: 0.5em, fill: orange.lighten(80%))
    #inline-note(rect: caution-rect)[
      Be aware that notes will stop automatically avoiding collisions if 4 or more notes
      overlap. This is because `typst` warns when the layout doesn't resolve after 5 attempts
      (initial layout + adjustment for each note)
    ]

![Rendered image](typst-
img/80c65cf70b8da549afe447ce97f6dc71087cc0654dd85cd4f5e95bea388e3179-1.svg)

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    == Adjusting the default style
    All function defaults are customizable through updating the module state:
    
    #lorem(4) #margin-note(dy: -2em)[Default style]
    #set-margin-note-defaults(stroke: orange, side: left)
    #lorem(4) #margin-note[Updated style]
    
    
    Even deeper customization is possible by overriding the default `rect`:
    
    #import "@preview/colorful-boxes:1.1.0": stickybox
    
    #let default-rect(stroke: none, fill: none, width: 0pt, content) = {
      stickybox(rotation: 30deg, width: width/1.5, content)
    }
    #set-margin-note-defaults(rect: default-rect, stroke: none, side: right)
    
    #lorem(20)
    #margin-note(dy: -25pt)[Why not use sticky notes in the margin?]
    
    // Undo changes from last example
    #set-margin-note-defaults(rect: rect, stroke: red)
    
    == Multiple document reviewers
    #let reviewer-a = margin-note.with(stroke: blue)
    #let reviewer-b = margin-note.with(stroke: purple)
    #lorem(20)
    #reviewer-a[Comment from reviewer A]
    #lorem(15)
    #reviewer-b(side: left)[Comment from reviewer B]
    
    == Inline Notes
    #lorem(10)
    #inline-note[The default inline note will split the paragraph at its location]
    #lorem(10)
    /*
    // Should work, but doesn't? Created an issue in repo.
    #inline-note(par-break: false, stroke: (paint: orange, dash: "dashed"))[
      But you can specify `par-break: false` to prevent this
    ]
    */
    #lorem(10)

![Rendered image](typst-
img/282de769e728a8bdb9c78c665664b382ecbf59fd7d3c915fab67aae7055e2acb-1.svg)

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    == Hiding notes for print preview
    #set-margin-note-defaults(hidden: true)
    
    #lorem(20)
    #margin-note[This will respect the global "hidden" state]
    #margin-note(hidden: false, dy: -2.5em)[This note will never be hidden]
    
    = Positioning
    == Precise placement: rule grid
    Need to measure space for fine-tuned positioning? You can use `rule-grid` to cross-hatch
    the page with rule lines:
    
    #rule-grid(width: 10cm, height: 3cm, spacing: 20pt)
    #place(
      dx: 180pt,
      dy: 40pt,
      rect(fill: white, stroke: red, width: 1in, "This will originate at (180pt, 40pt)")
    )
    
    // Optionally specify divisions of the smallest dimension to automatically calculate
    // spacing
    #rule-grid(dx: 10cm + 3em, width: 3cm, height: 1.2cm, divisions: 5, square: true,  stroke: green)
    
    // The rule grid doesn't take up space, so add it explicitly
    #v(3cm + 1em)
    
    == Absolute positioning
    What about absolutely positioning something regardless of margin and relative location? `absolute-place` is your friend. You can put content anywhere:
    
    #context {
      let (dx, dy) = (25%, here().position().y)
      let content-str = (
        "This absolutely-placed box will originate at (" + repr(dx) + ", " + repr(dy) + ")"
        + " in page coordinates"
      )
      absolute-place(
        dx: dx, dy: dy,
        rect(
          fill: green.lighten(60%),
          radius: 0.5em,
          width: 2.5in,
          height: 0.5in,
          [#align(center + horizon, content-str)]
        )
      )
    }
    #v(1in)
    
    The "rule-grid" also supports absolute placement at the top-left of the page by passing `relative: false`. This is helpful for "rule"-ing the whole page.

![Rendered image](typst-
img/212dfc0f37bc9749e459085bb305f46a1db7ab3fbb22760f62ec58e349837d9e-1.svg)

==  Dropped capitals

> Get more info [ here ](https://github.com/EpicEricEE/typst-
> plugins/tree/master/droplet)

===  Basic usage

    
    
    #import "@preview/droplet:0.1.0": dropcap
    
    #dropcap(gap: -2pt, hanging-indent: 8pt)[
      #lorem(42)
    ]

![Rendered image](typst-
img/a9c411d628d90aa8313aa9f0829bfdf43122c4532ad0d9d323a64b989a049d64-1.svg)

===  Extended styling

    
    
    #import "@preview/droplet:0.1.0": dropcap
    
    #dropcap(
      height: 2,
      justify: true,
      gap: 6pt,
      transform: letter => style(styles => {
        let height = measure(letter, styles).height
    
        grid(columns: 2, gutter: 6pt,
          align(center + horizon, text(blue, letter)),
          // Use "place" to ignore the line's height when
          // the font size is calculated later on.
          place(horizon, line(
            angle: 90deg,
            length: height + 6pt,
            stroke: blue.lighten(40%) + 1pt
          )),
        )
      })
    )[
      #lorem(42)
    ]

![Rendered image](typst-
img/50d7ee4ffb1e61856535409373b040d579ab05734f3f304a4dc15f23361fd710-1.svg)

==  Headings for actual current chapter

> See [ hydra ](https://github.com/tingerrr/hydra)
    
    
    #import "@preview/hydra:0.2.0": hydra
    
    #set page(header: hydra() + line(length: 100%))
    #set heading(numbering: "1.1")
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    = Introduction
    #lorem(750)
    
    = Content
    == First Section
    #lorem(500)
    == Second Section
    #lorem(250)
    == Third Section
    #lorem(500)
    
    = Annex
    #lorem(10)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-1.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-2.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-3.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-4.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-5.svg)



= **book/packages/drawing.md**

=  Drawing

==  ` cetz  `

Cetz is an analogue of LaTeX's ` tikz  ` . Maybe it is not as powerful yet,
but certainly easier to learn and use.

It is the best choice in most of cases you want to draw something in Typst.

    
    
    #import "@preview/cetz:0.1.2"
    
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: angle
      let (a, b, c) = ((0,0), (-1,1), (1.5,0))
      line(a, b)
      line(a, c)
      set-style(angle: (radius: 1, label-radius: .5), stroke: blue)
      angle(a, c, b, label: $alpha$, mark: (end: ">"), stroke: blue)
      set-style(stroke: red)
      angle(a, b, c, label: n => $#{n/1deg} degree$,
        mark: (end: ">"), stroke: red, inner: false)
    })

![Rendered image](typst-
img/d3b5277dd18dffb6da9a8f41486cb85a5044597821e80867652f062724ed8dd4-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      intersections(name: "demo", {
        circle((0, 0))
        bezier((0,0), (3,0), (1,-1), (2,1))
        line((0,-1), (0,1))
        rect((1.5,-1),(2.5,1))
      })
      for-each-anchor("demo", (name) => {
        circle("demo." + name, radius: .1, fill: black)
      })
    })

![Rendered image](typst-
img/05a1dbe2a2d17e5e81991406bed640775db6ab4ce2d585bc5a0d1175def43ea1-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      let (a, b, c) = ((0, 0), (1, 1), (2, -1))
      line(a, b, c, stroke: gray)
      bezier-through(a, b, c, name: "b")
      // Show calculated control points
      line(a, "b.ctrl-1", "b.ctrl-2", c, stroke: gray)
    })

![Rendered image](typst-
img/8e7d39d73212ebf8f230a0bd54a7fb7e58607a99f327e29809c4021b9e797345-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      group(name: "g", {
        rotate(45deg)
        rect((0,0), (1,1), name: "r")
        copy-anchors("r")
      })
      circle("g.top", radius: .1, fill: black)
    })

![Rendered image](typst-
img/b3d0b37a84cddb77a1508333743f851509e2250930abdcbda7ec4675e00077c3-1.svg)

    
    
    // author: LDemetrios
    #import "@preview/cetz:0.2.2"
    
    #cetz.canvas({
      let left = (a:2, b:1, d:-1, e:-2)
      let right = (p:2.7, q: 1.8, r: 0.9, s: -.3, t: -1.5, u: -2.4)
      let edges = "as,bq,dq,et".split(",")
    
      let ell-width = 1.5
      let ell-height = 3
      let dist = 5
      let dot-radius = 0.1
      let dot-clr = blue
    
      import cetz.draw: *
      circle((-dist/2, 0), radius:(ell-width ,  ell-height))
      circle((+dist/2, 0), radius:(ell-width ,  ell-height))
    
      for (name, y) in left {
        circle((-dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"east", pad(right:.7em, text(fill:dot-clr, name)))
      }
    
      for (name, y) in right {
        circle((dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"west", pad(left:.7em, text(fill:dot-clr, name)))
      }
    
      for edge in edges {
        let from = edge.at(0)
        let to = edge.at(1)
        line(from, to)
        mark(from, to, symbol: ">",  fill: black)
      }
    
      content((0, - ell-height), text(fill:blue)[APPLICATION], anchor:"south")
    })

![Rendered image](typst-
img/7a4a9224b76305ecd694fd4505b3fdee8c706ccea76ac0e59fd13d469c343dd4-1.svg)



= **book/snippets/scripting/index.md**

=  Scripting

==  Unflatten arrays

    
    
    // author: PgSuper
    #let unflatten(arr, n) = {
      let columns = range(0, n).map(_ => ())
      for (i, x) in arr.enumerate() {
        columns.at(calc.rem(i, n)).push(x)
      }
      array.zip(..columns)
    }
    
    #unflatten((1, 2, 3, 4, 5, 6), 2)
    #unflatten((1, 2, 3, 4, 5, 6), 3)

![Rendered image](typst-
img/98271a255f0fb10f31ba1d8199ba5a91ebb6f647cdd570220f95e1b88d193ca0-1.svg)

==  Create an abbreviation

    
    
    #let full-name = "Federal University of Ceará"
    
    #let letts = {
      full-name
        .split()
        .map(word => word.at(0)) // filter only capital letters
        .filter(l => upper(l) == l)
        .join()
    }
    #letts

![Rendered image](typst-
img/e95b77243a1305a47517cb128577d1c7633d858561de0ef797ff551f35be40de-1.svg)

==  Split the string retrieving separators

    
    
    #",this, is a a a a; a. test? string!".matches(regex("(\b[\P{Punct}\s]+\b|\p{Punct})")).map(x => x.captures).join()

![Rendered image](typst-
img/c5d183e45097449e4f52b07f82185847092ad28bcad3b9474093d341c4b07c4a-1.svg)

==  Create selector matching any values in an array

This snippet creates a selector (that is then used in a show rule) that
matches any of the values inside the array. Here, it is used to highlight a
few raw lines, but it can be easily adapted to any kind of selector.

    
    
    // author: Blokyk
    #let lines = (2, 3, 5)
    #let lines-selectors = lines.map(lineno => raw.line.where(number: lineno))
    #let lines-combined-selector = lines-selectors.fold(
      // start with the first selector by default
      // you can also use a selector that wouldn't ever match anything, if possible
      lines-selectors.at(0),
      selector.or // create an OR of all selectors (alternatively: (acc, sel) => acc.or(sel))
    )
    
    #show lines-combined-selector: highlight
    
    ```py
    def foo(x, y):
      if x == y:
        return False
      z = x + y
      return z * x - z * y >= z
    ```

![Rendered image](typst-
img/085d1ae3a0672ba278edcde3ebb229a34a40ab5166d0b6d5b469d838b9262a51-1.svg)

==  Synthesize show (or show-set) rules from dictionnary

This snippet applies a show-set rule to any element inside a dictionary, by
using the key as the selector and the value as the parameter to set. In this
example, it's used to give custom supplements to custom figure kinds, based on
a dictionnary of correspondances.

    
    
    // author: laurmaedje
    #let kind_supp_dict = (
      algo: "Pseudo-code",
      ex: "Example",
      prob: "Problem",
    )
    
    // apply this rule to the whole (rest of the) document
    #show: it => {
      kind_supp_dict
        .pairs() // get an array of key-value pairs
        .fold( // we're going to stack show-set rules before the document
          it, // start with the default document
          (acc, (kind, supp)) => {
            // add the curent kind-supp combination on top of the rest
            show figure.where(kind: kind): set figure(supplement: supp)
            acc
          }
        )
    }
    #figure(
        kind: "algo",
        caption: [My code],
        ```Algorithm there```
    )

![Rendered image](typst-
img/9de9b5f4bb801735b13ffafe54d35ebcfc78f1df78a34a8ab90f8a6c350b986e-1.svg)

Additonnaly, as this is applied at the position where you write it, these
show-set rules will appear as if they were added in the same place where you
wrote this rule. This means that you can override them later, just like any
other show-set rules.



= **book/snippets/chapters/outlines.md**

=  Outlines

=  Outlines

> Lots of outlines examples are already available in [ official reference
> ](https://typst.app/docs/reference/meta/outline/)

==  Table of contents

    
    
    #outline()
    
    = Introduction
    #lorem(5)
    
    = Prior work
    #lorem(10)

![Rendered image](typst-
img/77dbcfc8072afc53714fea404efaa1f60692fee68a19821e77feb8bafdd5bd46-1.svg)

==  Outline of figures

    
    
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

==  Ignore low-level headings

    
    
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

==  Set indentation

    
    
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

==  Replace default dots

    
    
    #outline(fill: line(length: 100%), indent: 2em)
    
    = First level
    == Second level

![Rendered image](typst-
img/81c9f957fb8944561295980a7dfd1ee2b1fbd58f77d90e7b904aa8b99b3bbf9e-1.svg)

==  Make different outline levels look different

    
    
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

==  Long and short captions for the outline

    
    
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

==  Ignore citations and footnotes

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



= **book/snippets/chapters/page-numbering.md**

=  Page numbering

==  Separate page numbering for each chapter

    
    
    /// author: tinger
    
    // unnumbered title page if needed
    // ...
    
    // front-matter
    #set page(numbering: "I")
    #counter(page).update(1)
    #lorem(50)
    // ...
    
    // page counter anchor
    #metadata(()) <front-matter>
    
    // main document body
    #set page(numbering: "1")
    #lorem(50)
    #counter(page).update(1)
    // ...
    
    // back-matter
    #set page(numbering: "I")
    // must take page breaks into account, may need to be offset by +1 or -1
    #context counter(page).update(counter(page).at(<front-matter>).first())
    #lorem(50)
    // ...

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-1.svg)

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-2.svg)

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-3.svg)



= **book/snippets/layout/page_setup.md**

=  Page setup

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



= **book/snippets/layout/duplicate.md**

=  Duplicate content

Notice that this implementation will mess up with labels and similar things.
For complex cases see one below.

```typ #set page(paper: "a4", flipped: true) #show: body => grid( columns:
(1fr, 1fr), column-gutter: 1cm, body, body, ) #lorem(200) ```

==  Advanced

    
    
    /// author: frozolotl
    #set page(paper: "a4", flipped: true)
    #set heading(numbering: "1.1")
    #show ref: it => {
      if it.element != none {
        it
      } else {
        let targets = query(it.target, it.location())
        if targets.len() == 2 {
          let target = targets.first()
          if target.func() == heading {
            let num = numbering(target.numbering, ..counter(heading).at(target.location()))
            [#target.supplement #num]
          } else if target.func() == figure {
            let num = numbering(target.numbering, ..target.counter.at(target.location()))
            [#target.supplement #num]
          } else {
            it
          }
        } else {
          it
        }
      }
    }
    #show link: it => context {
      let dest = query(it.dest)
      if dest.len() == 2 {
        link(dest.first().location(), it.body)
      } else {
        it
      }
    }
    #show: body => context grid(
      columns: (1fr, 1fr),
      column-gutter: 1cm,
      body,
      {
        let reset-counter(kind) = counter(kind).update(counter(kind).get())
        reset-counter(heading)
        reset-counter(figure.where(kind: image))
        reset-counter(figure.where(kind: raw))
        set heading(outlined: false)
        set figure(outlined: false)
        body
      },
    )
    
    #outline()
    
    = Foo <foo>
    See @foo and @foobar.
    
    #figure(rect[This is an image], caption: [Foobar], kind: raw) <foobar>
    
    == Bar
    == Baz
    #link(<foo>)[Click to visit Foo]

![Rendered image](typst-
img/2fdcc2778a936608ed868521793f59311ac54d43e226639db3ab14c6ca37c75f-1.svg)



= **book/snippets/layout/shapes.md**

=  Shaped boxes with text

(I guess that will make a package eventually, but let it be a snippet for now)

    
    
    /// author: JustForFun88
    #import "@preview/oxifmt:0.2.0": strfmt
    
    #let shadow_svg_path = `
    <svg
        width="{canvas-width}"
        height="{canvas-height}"
        viewBox="{viewbox}"
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:svg="http://www.w3.org/2000/svg">
        <!-- Definitions for reusable components -->
        <defs>
            <filter id="shadowing" >
                <feGaussianBlur in="SourceGraphic" stdDeviation="{blur}" />
            </filter>
        </defs>
    
        <!-- Drawing the rectangle with a fill and feGaussianBlur effect -->
        <path
            style="fill: {flood-color}; opacity: {flood-opacity}; filter:url(#shadowing)"
            d="{vertices} Z" />
    </svg>
    `.text
    
    #let parallelogram(width: 20mm, height: 5mm, angle: 30deg) = {
    	let δ = height * calc.tan(angle)
    	(
        (      + δ,     0pt   ),
        (width + δ * 2, 0pt   ),
        (width + δ,     height),
        (0pt,           height),
    	)
    }
    
    #let hexagon(width: 100pt, height: 30pt, angle: 30deg) = {
      let dy = height / 2;
    	let δ = dy * calc.tan(angle)
    	(
        (0pt,           dy    ),
        (      + δ,     0pt   ),
        (width + δ,     0pt   ),
        (width + δ * 2, dy    ),
        (width + δ,     height),
        (      + δ,     height),
    	)
    }
    
    #let shape_size(vertices) = {
        let x_vertices = vertices.map(array.first);
        let y_vertices = vertices.map(array.last);
    
        (
          calc.max(..x_vertices) - calc.min(..x_vertices),
          calc.max(..y_vertices) - calc.min(..y_vertices)
        )
    }
    
    #let shadowed_shape(shape: hexagon, fill: none,
      stroke: auto, angle: 30deg, shadow_fill: black, alpha: 0.5, 
      blur: 1.5, blur_margin: 5, dx: 0pt, dy: 0pt, ..args, content
    ) = layout(size => context {
        let named = args.named()
        for key in ("width", "height") {
          if key in named and type(named.at(key)) == ratio {
            named.insert(key, size.at(key) * named.at(key))
          }
        }
    
        let opts = (blur: blur, flood-color: shadow_fill.to-hex())
           
        let content = box(content, ..named)
        let size = measure(content)
    
        let vertices = shape(..size, angle: angle)
        let (shape_width, shape_height) = shape_size(vertices)
        let margin = opts.blur * blur_margin * 1pt
    
        opts += (
          canvas-width:  shape_width  + margin,
          canvas-height: shape_height + margin,
          flood-opacity: alpha
        )
    
        opts.viewbox = (0, 0, opts.canvas-width.pt(), opts.canvas-height.pt()).map(str).join(",")
    
        opts.vertices = "";
        let d = margin / 2;
        for (i, p) in vertices.enumerate() {
            let prefix = if i == 0 { "M " } else { " L " };
            opts.vertices += prefix + p.map(x => str((x + d).pt())).join(", ");
        }
    
        let svg-shadow = image.decode(strfmt(shadow_svg_path, ..opts))
        place(dx: dx, dy: dy, svg-shadow)
        place(path(..vertices, fill: fill, stroke: stroke, closed: true))
        box(h((shape_width - size.width) / 2) + content, width: shape_width)
    })
    
    #set text(3em);
    
    #shadowed_shape(shape: hexagon,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    #shadowed_shape(shape: parallelogram,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    

![Rendered image](typst-
img/f40acb7d6d2753b0845c9dd1fb26979c29dd0850448cf585f0c7f1b20acde7ea-1.svg)



= **book/snippets/layout/multiline_detect.md**

=  Multiline detection

Detects if figure caption (may be any other element) _has more than one line_
.

If the caption is multiline, it makes it left-aligned.

Breaks on manual linebreaks.

    
    
    #show figure.caption: it => {
      layout(size => context [
        #let text-size = measure(
          ..size,
          it.supplement + it.separator + it.body,
        )
    
        #let my-align
    
        #if text-size.width < size.width {
          my-align = center
        } else {
          my-align = left
        }
    
        #align(my-align, it)
      ])
    }
    
    #figure(caption: lorem(6))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]
    
    #figure(caption: lorem(20))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]

![Rendered image](typst-
img/8e2a1d9e2e66f654938733a2ed1d9a0dcc771165a60d89c4410f4d970054121c-1.svg)



= **book/snippets/layout/insert_lines.md**

=  Lines between list items

    
    
    /// author: frozolotl
    #show enum.where(tight: false): it => {
      it.children
        .enumerate()
        .map(((n, item)) => block(below: .6em, above: .6em)[#numbering("1.", n + 1) #item.body])
        .join(line(length: 100%))
    }
    
    + Item 1
    
    + Item 2
    
    + Item 3

![Rendered image](typst-
img/b1660863fded6fc3d870f8a92f364040d5ba9beaaf5bbd4a114b5384abe3db4c-1.svg)

The same approach may be easily adapted to style the enums as you want.



= **book/snippets/layout/hiding.md**

=  Hiding things

    
    
    // author: GeorgeMuscat
    #let redact(text, fill: black, height: 1em) = {
      box(rect(fill: fill, height: height)[#hide(text)])
    }
    
    Example:
      - Unredacted text
      - Redacted #redact("text")

![Rendered image](typst-
img/6b85fdf4b9ba387543271058b6acb27e202dab93b01c2cd7ac93187c1e8b643c-1.svg)



= **book/snippets/math/vecs.md**

=  Vectors & Matrices

You can easily note that the gap isn't necessarily even or the same in
different vectors and matrices:

    
    
    $
    mat(0, 1, -1; -1, 0, 1; 1, -1, 0) vec(a/b, a/b, a/b) = vec(c, d, e)
    $

![Rendered image](typst-
img/6a28529f5b38a17bcb660981691cdcc2bc4b6ddfbdb103327ae9e42b1365458e-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use this snippet:

    
    
    // Fixed height vector
    #let fvec(..children, delim: "(", gap: 1.5em) = { // change default gap there
      context math.vec(
          delim: delim,
          gap: 0em,
          ..for el in children.pos() {
            ({
              box(
                width: measure(el).width,
                height: gap, place(horizon, el)
              )
            },) // this is an array
            // `for` merges all these arrays, then we pass it to arguments
          }
        )
    }
    
    // fixed hight matrix
    // accepts also row-gap, column-gap and gap
    #let fmat(..rows, delim: "(", augment: none) = {
      let args = rows.named()
      let (gap, row-gap, column-gap) = (none,)*3;
    
      if "gap" in args {
        gap = args.at("gap")
        row-gap = args.at("row-gap", default: gap)
        column-gap = args.at("row-gap", default: gap)
      }
      else {
        // change default vertical there
        row-gap = args.at("row-gap", default: 1.5em) 
        // and horizontal there
        column-gap = rows.named().at("column-gap", default: 0.5em)
      }
    
      context math.mat(
          delim: delim,
          row-gap: 0em,
          column-gap: column-gap,
          ..for row in rows.pos() {
            (for el in row {
              ({
              box(
                width: measure(el).width,
                height: row-gap, place(horizon, el)
              )
            },)
            }, )
          }
        )
    }
    
    $
    "Before:"& vec(((a/b))/c, a/b, c) = vec(1, 1, 1)\
    "After:"& fvec(((a/b))/c, a/b, c) = fvec(1, 1, 1)\
    
    "Before:"& mat(a, b; c, d) vec(e, dot) = vec(c/d, e/f)\
    "After:"& fmat(a, b; c, d) fvec(e, dot) = fvec(c/d, e/f)
    $

![Rendered image](typst-
img/98195a6d9cfb93fdc5dca4db04dde22c00b969129e2962c8f7cba9012cd2bd0d-1.svg)



= **book/snippets/math/operations.md**

=  Operations

==  Fractions

    
    
    $
    p/q, p slash q, p\/q
    $

![Rendered image](typst-
img/7e6b189e7b1c1329caebb4d4c6ea718c897ef64f51383889c65e62e308c73478-1.svg)

===  Slightly moved:

    
    
    #let mfrac(a, b) = move(a, dy: -0.2em) + "/" + move(b, dy: 0.2em, dx: -0.1em)
    $A\/B, #mfrac($A$, $B$)$,

![Rendered image](typst-
img/002c9e0e934a98cfb5e93a407d130841a5e1a493d361c368ae605acdfd6f64bc-1.svg)

===  Large fractions

    
    
    #let dfrac(a, b) = $display(frac(#a, #b))$
    
    $(x + y)/(1/x + 1/y) quad (x + y)/(dfrac(1,x) + dfrac(1, y))$

![Rendered image](typst-
img/36454aba32957127c97710e4fc1db3e6d8c9a558e886b7103915d501004bad76-1.svg)



= **book/snippets/math/numbering.md**

=  Math Numbering

==  Number by current heading

> See also built-in numbering in [ math package section
> ](../../packages/math.html#theorems)
    
    
    /// original author: laurmaedje
    #set heading(numbering: "1.")
    
    // reset counter at each chapter
    // if you want to change the number of displayed 
    // section numbers, change the level there
    #show heading.where(level:1): it => {
      counter(math.equation).update(0)
      it
    }
    
    #set math.equation(numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
      // if you want change the number of number of displayed
      // section numbers, modify it this way:
      /*
      let count = counter(heading).get()
      let h1 = count.first()
      let h2 = count.at(1, default: 0)
      numbering("(1.1.1)", h1, h2, n)
      */
    })
    
    
    = Section
    == Subsection
    
    $ 5 + 3 = 8 $ <a>
    $ 5 + 3 = 8 $
    
    = New Section
    == Subsection
    $ 5 + 3 = 8 $
    == Subsection
    $ 5 + 3 = 8 $ <b>
    
    Mentioning @a and @b.

![Rendered image](typst-
img/9662902bb463e350d7a9bdf94e143bbaab8245da34eee4a426d2263d44511d1f-1.svg)

==  Number only labeled equations

===  Simple code

    
    
    // author: shampoohere
    #show math.equation:it => {
      if it.fields().keys().contains("label"){
        math.equation(block: true, numbering: "(1)", it)
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        //
        // Note that you don't need to #set the numbering now.
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>

![Rendered image](typst-
img/84052f83d0e2e2c330ef041c254dfb7c735526fc7f47cdb14ecc46961f66fee3-1.svg)

===  Make the hacked references clickable again

    
    
    // author: gijsleb
    #show math.equation:it => {
      if it.has("label") {
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        math.equation(block: true, numbering: "(1)", it)
      } else {
        it
      }
    }
    
    #show ref: it => {
      let el = it.element
      if el != none and el.func() == math.equation {
        link(el.location(), numbering(
          // don't forget to change the numbering according to the one
          // you are actually using (e.g. section numbering)
          "(1)",
          counter(math.equation).at(el.location()).at(0) + 1
        ))
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
    In @ep-2 and @ep-3 we see equations

![Rendered image](typst-
img/c17ccdb8d65b5aa0d0e58b1fba75c67bfc162400ba86ad64f37aa038ad6d8887-1.svg)



= **book/snippets/math/scripts.md**

=  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

==  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)



= **book/snippets/math/fonts.md**

=  Fonts

==  Set math font

**Important:** The font you want to set for math should _contain_ necessary
math symbols. That should be a special font with math. If it isn't, you are
very likely to get _an error_ (remember to set ` fallback: false  ` and check
` typst fonts  ` to debug the fonts).

    
    
    #show math.equation: set text(font: "Fira Math", fallback: false)
    
    $
    emptyset \
    
    integral_a^b sum (A + B)/C dif x \
    $

![Rendered image](typst-
img/f1cc8c8afe82aeb14cb0898ff5a83292a7c6a73f8b84cac8dbffa19af0d9370f-1.svg)



= **book/snippets/math/calligraphic.md**

=  Calligraphic letters

    
    
    #let scr(it) = math.class("normal",
      text(font: "", stylistic-set: 1, $cal(it)$) + h(0em)
    )
    
    $ scr(A) scr(B) + scr(C), -scr(D) $

![Rendered image](typst-
img/6ee9ca10515c1b6158d8d7bddd4418a713313052c0114fe851be455fc09b2c92-1.svg)

Unfortunately, currently just ` stylistic-set  ` for math creates bad spacing.
Math engine detects if the letter should be correctly spaced by whether it is
the default font. However, just making it "normal" isn't enough, because than
it can be reduced. That's way the snippet is as hacky as it is (probably
should be located in Typstonomicon, but it's not large enough).



= **book/snippets/special/index.md**

=  Special documents

==  Signature places

    
    
    #block(width: 150pt)[
      #line(length: 100%)
      #align(center)[Signature]
    ]

![Rendered image](typst-
img/04e318a822e6a90fbae23cce4c1b829e03e4d283051bb5dd613be2d7fe5933a2-1.svg)

==  Presentations

See [ polylux ](../../packages/) .

==  Forms

===  Form with placeholder

    
    
    #grid(
      columns: 2,
      rows: 4,
      gutter: 1em,
    
      [Student:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [Teacher:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [ID:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [School:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
    )

![Rendered image](typst-
img/d921f4df08e8dab19c9440b3aca6b065cb83ba11f015240b2115a63351ce64ce-1.svg)

===  Interactive

> Presentation interactive forms are coming! They are currently under heavy
> work by @tinger.



= **book/snippets/text/text_shadows.md**

=  Fake italic & Text shadows

==  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)



= **book/snippets/text/individual_lang_fonts.md**

=  Individual language fonts

    
    
    A cat แปลว่า แมว
    
    #show regex("\p{Thai}+"): text.with(font: "Noto Serif Thai")
    
    A cat แปลว่า แมว

![Rendered image](typst-
img/612267fd94fab114a3e0b75bdb3785b818c0f83427071db0dce086d1b0a6a54a-1.svg)



= **book/basics/tutorial/templates.md**

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .



= **book/basics/tutorial/advanced_styling.md**

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)



= **book/basics/tutorial/index.md**

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .



= **book/basics/tutorial/functions.md**

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

==  How to call functions

    
    
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

==  Function arguments

    
    
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

==  Content

    
    
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

==  Markup and code modes

    
    
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

==  Passing content into functions

    
    
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

==  Passing content, part II

    
    
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



= **book/basics/tutorial/basic_styling.md**

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…



= **book/basics/tutorial/markup.md**

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
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

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

==  Math

    
    
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



= **book/basics/scripting/basics.md**

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)



= **book/basics/scripting/braces.md**

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

**This is a very important thing to remember** .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

**Important** : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .



= **book/basics/scripting/tips.md**

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries **the order may
matter** , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)



= **book/basics/scripting/conditions.md**

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)



= **book/basics/scripting/types_2.md**

=  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)



= **book/basics/scripting/index.md**

=  Scripting

**Typst** has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way



= **book/basics/scripting/types.md**

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)



= **book/basics/scripting/arguments.md**

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO



= **book/basics/math/symbols.md**

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= **book/basics/math/classes.md**

=  Classes

> See [ official documentation ](https://typst.app/docs/reference/math/class/)

Each math symbol has its own "class", the way it behaves. That's one of the
main reasons why they are layouted differently.

==  Classes

    
    
    $
    a b c\
    a class("normal", b) c\
    a class("punctuation", b) c\
    a class("opening", b) c\
    a lr(b c]) c\
    a lr(class("opening", b) c ]) c // notice it is moved vertically \
    a class("closing", b) c\
    a class("fence", b) c\
    a class("large", b) c\
    a class("relation", b) c\
    a class("unary", b) c\
    a class("binary", b) c\
    a class("vary", b) c\
    $

![Rendered image](typst-
img/5d4604274229b2f53ee04b88ff0e73d9aa8365643c5e60052fcca1298d4f5a23-1.svg)

==  Setting class for symbol

    
    
    Default:
    
    $square circle square$
    
    With `#h(0)`:
    
    $square #h(0pt) circle #h(0pt) square$
    
    With `math.class`:
    
    #show math.circle: math.class.with("normal")
    $square circle square$

![Rendered image](typst-
img/86a709c6189649b79005752253a842631eed4722b350e4197116e0be19094035-1.svg)



= **book/basics/math/operators.md**

=  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

==  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

==  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

===  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)



= **book/basics/math/alignment.md**

=  Alignment

==  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

==  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

**Each alignment point simply alternates between right-aligned/left-aligned.**



= **book/basics/math/limits.md**

=  Setting limits

Sometimes we want to change how the default attaching should work.

==  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

==  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

==  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)



= **book/basics/math/index.md**

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)



= **book/basics/math/vec.md**

=  Vectors, matrices, semicolumn syntax

==  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

===  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

===  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

===  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

==  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

===  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or **after the semicolon** .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

==  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $



= **book/basics/math/sizes.md**

=  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  - Display math size ( ` display  ` ) 
  - Inline math size ( ` inline  ` ) 
  - Script math size ( ` script  ` ) 
  - Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

==  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)



= **book/basics/math/grouping.md**

=  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

==  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

==  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)



= **book/basics/states/states.md**

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

**THIS DOES NOT COMPILE:** Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;**Never allow colliding states.** _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)



= **book/basics/states/metadata.md**

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)



= **book/basics/states/query.md**

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)



= **book/basics/states/index.md**

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!



= **book/basics/states/counters.md**

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      *Theorem #c.display():*
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)



= **book/basics/must_know/tables.md**

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)



= **book/basics/must_know/project_struct.md**

=  Project structure

==  Large document

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

===  Template

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

===  Main

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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

**Important:** Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.



= **book/basics/must_know/box_block.md**

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)



= **book/basics/must_know/index.md**

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.



= **book/basics/must_know/place.md**

=  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)



= **book/basics/must_know/spacing.md**

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

    
    #render(
        ```
          0       3  
           *-------* 
        1 /|    2 /| 
         *-+-----* | 
         | |4    | |7
         | *-----|-*
         |/      |/
         *-------*
        5       6
        ```,
        width: 25%,
    )
    
    ```bob
    "cats:"
     /\_/\  /\_/\  /\_/\  /\_/\ 
    ( o.o )( o.o )( o.o )( o.o )
    ```
    
    ```bob
           +10-15V           ___0,047R
          _---------o-----o-|___|-o--o---------o----o-------.
        + |         |     |       |  |         |    |       |
        -===-      _|_    |       | .+.        |    |       |
        -===-      .-.    |       | | | 2k2    |    |       |
        -===-    470| +   |       | | |        |    |      _|_
        - |       uF|     '--.    | '+'       .+.   |      \ / LED
          +---------o        |6   |7 |8    1k | |   |      -+-
                 ___|___   .-+----+--+--.     | |   |       |
                  -═══-    |            |     '+'   |       |
                    -      |            |1     |  |/  BC    |
                   GND     |            +------o--+   547   |
                           |            |      |  |`>       |
                           |            |     ,+.   |       |
                   .-------+            | 220R| |   o----||-+  IRF9Z34
                   |       |            |     | |   |    |+->
                   |       |  MC34063   |     `+'   |    ||-+
                   |       |            |      |    |       |  BYV29     -12V6
                   |       |            |      '----'       o--|<-o----o--X OUT
     6000 micro  - | +     |            |2                  |     |    |
     Farad, 40V ___|_____  |            |--o                C|    |    |
     Capacitor  ~ ~ ~ ~ ~  |            | GND         30uH  C|    |   --- 470
                   |       |            |3      1nF         C|    |   ###  uF
                   |       |            |-------||--.       |     |    | +
                   |       '-----+----+-'           |      GND    |   GND
                   |            5|   4|             |             |
                   |             |    '-------------o-------------o
                   |             |                           ___  |
                   `-------------_------/\/\/------------o--|___|-'
                                         2k              |       1k0
                                                        .+.
                                                        | | 5k6 + 3k3
                                                        | | in Serie
                                                        '+'
                                                         |
                                                        GND
    ```

![Rendered image](typst-
img/850abc33fa97f8b80bbda399475b0e4436d275c03f1ca369187eea9e72948b01-1.svg)

==  ` wavy  `

==  ` finite  `

Finite automata. See the [ manual ](https://github.com/jneug/typst-
finite/blob/main/manual.pdf) for a full documentation.

    
    
    #import "@preview/finite:0.3.0": automaton
    
    #automaton((
      q0: (q1:0, q0:"0,1"),
      q1: (q0:(0,1), q2:"0"),
      q2: (),
    ))

![Rendered image](typst-
img/9eddd9b18a2df43372188dab692be9e2973fac63f3764683c431a2c0fb8ba873-1.svg)



= *book/packages/word_count.md*

=  Counting words

==  Wordometr

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count
    
    In this document, there are #total-words words all up.
    
    #word-count(total => [
      The number of words in this block is #total.words
      and there are #total.characters letters.
    ])

![Rendered image](typst-
img/a36d12209002f93aeaf23d4b21fcd4dcb1f9326f6ad358ad01558f09dede39c2-1.svg)

===  Excluding elements

You can exclude elements by name (e.g., ` "caption"  ` ), function (e.g., `
figure.caption  ` ), where-selector (e.g., ` raw.where(block: true)  ` ), or `
label  ` (e.g., ` < no-wc  > ` ).

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count.with(exclude: (heading.where(level: 1), strike))
    
    = This Heading Doesn't Count
    == But I do!
    
    In this document #strike[(excluding me)], there are #total-words words all up.
    
    #word-count(total => [
      You can exclude elements by label, too.
      #[That was #total-words, excluding this sentence!] <no-wc>
    ], exclude: <no-wc>)

![Rendered image](typst-
img/0e46f8aa570972e4f8a92bfa4b8f7b86b6374d632fa27bd043c102b683d70f96-1.svg)



= *book/packages/index.md*

=  Packages

Once the [ Typst Universe ](https://typst.app/universe) was launched, this
chapter has become almost redundant. The Universe is actually a very cool
place to look for packages.

However, there are still some cool examples of interesting package usage.

==  General

Typst has packages, but, unlike LaTeX, you need to remember:

  - You need them only for some specialized tasks, basic formatting _can be totally done without them_ . 
  - Packages are much lighter and much easier "installed" than LaTeX ones. 
  - Packages are just plain Typst files (and sometimes plugins), so you can easily write your own! 

To use mighty package, just write, like this:

    
    
    #import "@preview/cetz:0.1.2": canvas, plot
    
    #canvas(length: 1cm, {
      plot.plot(size: (8, 6),
        x-tick-step: none,
        x-ticks: ((-calc.pi, $-pi$), (0, $0$), (calc.pi, $pi$)),
        y-tick-step: 1,
        {
          plot.add(
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.sin(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos(x * 1rad))
          plot.add(
            hypograph: true,
            style: plot.palette.blue,
            domain: (-calc.pi, calc.pi), x => calc.cos((x + calc.pi) * 1rad))
        })
    })

![Rendered image](typst-
img/29d7015ed96122fa3fb663929c1ac58d25340995423c82456ab8815811373979-1.svg)

==  Contributing

If you are author of a package or just want to make a fair overview, feel free
to make issues/PR-s!



= *book/packages/misc.md*

=  Misc

=  Formatting strings

==  ` oxifmt  ` , general purpose string formatter

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #strfmt("I'm {}. I have {num} cars. I'm {0}. {} is {{cool}}.", "John", "Carl", num: 10) \
    #strfmt("{0:?}, {test:+012e}, {1:-<#8x}", "hi", -74, test: 569.4) \
    #strfmt("{:_>+11.5}", 59.4) \
    #strfmt("Dict: {:!<10?}", (a: 5))

![Rendered image](typst-
img/f4f305da3efacf420f5d2a5159a57cca479ebbfd9b7412246d483de520135087-1.svg)

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #strfmt("First: {}, Second: {}, Fourth: {3}, Banana: {banana} (brackets: {{escaped}})", 1, 2.1, 3, label("four"), banana: "Banana!!")\
    #strfmt("The value is: {:?} | Also the label is {:?}", "something", label("label"))\
    #strfmt("Values: {:?}, {1:?}, {stuff:?}", (test: 500), ("a", 5.1), stuff: [a])\
    #strfmt("Left5 {:_<5}, Right6 {:*>6}, Center10 {centered: ^10?}, Left3 {tleft:_<3}", "xx", 539, tleft: "okay", centered: [a])\

![Rendered image](typst-
img/39d725a28a184c450c74f3f895d1d59d26271b86acbddd454da564df76b668c8-1.svg)

    
    
    #import "@preview/oxifmt:0.2.0": strfmt
    #repr(strfmt("Left-padded7 numbers: {:07} {:07} {:07} {3:07}", 123, -344, 44224059, 45.32))\
    #strfmt("Some numbers: {:+} {:+08}; With fill and align: {:_<+8}; Negative (no-op): {neg:+}", 123, 456, 4444, neg: -435)\
    #strfmt("Bases (10, 2, 8, 16(l), 16(U):) {0} {0:b} {0:o} {0:x} {0:X} | W/ prefixes and modifiers: {0:#b} {0:+#09o} {0:_>+#9X}", 124)\
    #strfmt("{0:.8} {0:.2$} {0:.potato$}", 1.234, 0, 2, potato: 5)\
    #strfmt("{0:e} {0:E} {0:+.9e} | {1:e} | {2:.4E}", 124.2312, 50, -0.02)\
    #strfmt("{0} {0:.6} {0:.5e}", 1.432, fmt-decimal-separator: ",")

![Rendered image](typst-
img/7b709cd252c147436c88822b60d49ede25a23040531eeac41fb2ba37ca46a2d8-1.svg)

==  ` name-it  ` , integer to text

    
    
    #import "@preview/name-it:0.1.0": name-it
    
    - #name-it(2418345)

![Rendered image](typst-
img/825de955e9f7261cd08d725520caf813e797aa4891da32ed7b43bafbe8b19f28-1.svg)

==  ` nth  ` , Nth element

    
    
    #import "@preview/nth:0.2.0": nth
    #nth(3), #nth(5), #nth(2421)

![Rendered image](typst-
img/f8389763af9ec32227285bdc25885f02b4ad74d6a5900852ccd0664989f1d3cb-1.svg)



= *book/packages/boxes.md*

=  Custom boxes

==  Showbox

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      [Hello world!]
    )

![Rendered image](typst-
img/5b1a31dde61cee643fe9c8550a396d2cad3d27bcaf56412fb1b1a1a2563c462e-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    // First showybox
    #showybox(
      frame: (
        border-color: red.darken(50%),
        title-color: red.lighten(60%),
        body-color: red.lighten(80%)
      ),
      title-style: (
        color: black,
        weight: "regular",
        align: center
      ),
      shadow: (
        offset: 3pt,
      ),
      title: "Red-ish showybox with separated sections!",
      lorem(20),
      lorem(12)
    )
    
    // Second showybox
    #showybox(
      frame: (
        dash: "dashed",
        border-color: red.darken(40%)
      ),
      body-style: (
        align: center
      ),
      sep: (
        dash: "dashed"
      ),
      shadow: (
    	  offset: (x: 2pt, y: 3pt),
        color: yellow.lighten(70%)
      ),
      [This is an important message!],
      [Be careful outside. There are dangerous bananas!]
    )

![Rendered image](typst-
img/71353a03ef746508398e53dc16ea676041d953dadb029a8e186fd9c317085510-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      title: "Stokes' theorem",
      frame: (
        border-color: blue,
        title-color: blue.lighten(30%),
        body-color: blue.lighten(95%),
        footer-color: blue.lighten(80%)
      ),
      footer: "Information extracted from a well-known public encyclopedia"
    )[
      Let $Sigma$ be a smooth oriented surface in $RR^3$ with boundary $diff Sigma equiv Gamma$. If a vector field $bold(F)(x,y,z)=(F_x (x,y,z), F_y (x,y,z), F_z (x,y,z))$ is defined and has continuous first order partial derivatives in a region containing $Sigma$, then
    
      $ integral.double_Sigma (bold(nabla) times bold(F)) dot bold(Sigma) = integral.cont_(diff Sigma) bold(F) dot dif bold(Gamma) $
    ]

![Rendered image](typst-
img/9e5c363090d9b928ee6c998876dd9e15a388ab6f6ae793f8a86ad688d2a62f2c-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      title-style: (
        weight: 900,
        color: red.darken(40%),
        sep-thickness: 0pt,
        align: center
      ),
      frame: (
        title-color: red.lighten(80%),
        border-color: red.darken(40%),
        thickness: (left: 1pt),
        radius: 0pt
      ),
      title: "Carnot cycle's efficiency"
    )[
      Inside a Carnot cycle, the efficiency $eta$ is defined to be:
    
      $ eta = W/Q_H = frac(Q_H + Q_C, Q_H) = 1 - T_C/T_H $
    ]

![Rendered image](typst-
img/3ce2b6bf5cd66f8aaa6c960c8f18902b63518eb4c6ee3f41337c1857e31128e9-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      footer-style: (
        sep-thickness: 0pt,
        align: right,
        color: black
      ),
      title: "Divergence theorem",
      footer: [
        In the case of $n=3$, $V$ represents a volume in three-dimensional space, and $diff V = S$ its surface
      ]
    )[
      Suppose $V$ is a subset of $RR^n$ which is compact and has a piecewise smooth boundary $S$ (also indicated with $diff V = S$). If $bold(F)$ is a continuously differentiable vector field defined on a neighborhood of $V$, then:
    
      $ integral.triple_V (bold(nabla) dot bold(F)) dif V = integral.surf_S (bold(F) dot bold(hat(n))) dif S $
    ]

![Rendered image](typst-
img/9abf5c05795f94a0b36b0e0fe84bb13ae210e6c234ad306606ed9bf52bd5e481-1.svg)

    
    
    #import "@preview/showybox:2.0.1": showybox
    
    #showybox(
      frame: (
        border-color: red.darken(30%),
        title-color: red.darken(30%),
        radius: 0pt,
        thickness: 2pt,
        body-inset: 2em,
        dash: "densely-dash-dotted"
      ),
      title: "Gauss's Law"
    )[
      The net electric flux through any hypothetical closed surface is equal to $1/epsilon_0$ times the net electric charge enclosed within that closed surface. The closed surface is also referred to as Gaussian surface. In its integral form:
    
      $ Phi_E = integral.surf_S bold(E) dot dif bold(A) = Q/epsilon_0 $
    ]

![Rendered image](typst-
img/9ae97a9b51a35a54fab7e017b1f500b5062b7e644928fa132a4cd1b218e8aad8-1.svg)

==  Colorful boxes

    
    
    #import "@preview/colorful-boxes:1.2.0": colorbox, slantedColorbox, outlinebox, stickybox
    
    #colorbox(
      title: lorem(5),
      color: "blue",
      radius: 2pt,
      width: auto
    )[
      #lorem(50)
    ]
    
    #slantedColorbox(
      title: lorem(5),
      color: "red",
      radius: 0pt,
      width: auto
    )[
      #lorem(50)
    ]
    
    #outlinebox(
      title: lorem(5),
      color: none,
      width: auto,
      radius: 2pt,
      centering: false
    )[
      #lorem(50)
    ]
    
    #outlinebox(
      title: lorem(5),
      color: "green",
      width: auto,
      radius: 2pt,
      centering: true
    )[
      #lorem(50)
    ]
    
    #stickybox(
      rotation: 3deg,
      width: 7cm
    )[
      #lorem(20)
    ]

![Rendered image](typst-
img/a8efee5212da42450ccb46cedda2280b5e876e22cc08ab656a73d379754c8661-1.svg)

==  Theorems

See [ math ](./math.html)



= *book/packages/code.md*

=  Code

==  ` codly  `

> See docs [ there ](https://github.com/Dherse/codly)
    
    
    #import "@preview/codly:0.1.0": codly-init, codly, disable-codly
    #show: codly-init.with()
    
    #codly(languages: (
            typst: (name: "Typst", color: rgb("#41A241"), icon: none),
        ),
        breakable: false
    )
    
    ```typst
    #import "@preview/codly:0.1.0": codly-init
    #show: codly-init.with()
    ```
    
    // Still formatted!
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
    
    #disable-codly()

![Rendered image](typst-
img/eaa07afd21b4783a4be0a9726e714a8a4644421e5a93383e7deaeffaf4765105-1.svg)

==  Codelst

    
    
    #import "@preview/codelst:2.0.0": sourcecode
    
    #sourcecode[```typ
    #show "ArtosFlow": name => box[
      #box(image(
        "logo.svg",
        height: 0.7em,
      ))
      #name
    ]
    
    This report is embedded in the
    ArtosFlow project. ArtosFlow is a
    project of the Artos Institute.
    ```]

![Rendered image](typst-
img/2b2bbf130111979e4bc4cbc33171a39842467b3ea5e67a7fa0fcbf26222e8f90-1.svg)



= *book/packages/layout.md*

=  Layouting

General useful things.

==  Pinit: relative place by pins

The idea of [ pinit ](https://github.com/OrangeX4/typst-pinit) is pinning pins
on the normal flow of the text, and then placing the content relative to pins.

    
    
    #import "@preview/pinit:0.1.3": *
    #set page(height: 6em, width: 20em)
    
    #set text(size: 24pt)
    
    A simple #pin(1)highlighted text#pin(2).
    
    #pinit-highlight(1, 2)
    
    #pinit-point-from(2)[It is simple.]

![Rendered image](typst-
img/b0a3a289ec65a00a9b39e0689578c9c139a65d1d9f379fa1593ba8ea9268af25-1.svg)

More complex example:

    
    
    #import "@preview/pinit:0.1.3": *
    
    // Pages
    #set page(paper: "presentation-4-3")
    #set text(size: 20pt)
    #show heading: set text(weight: "regular")
    #show heading: set block(above: 1.4em, below: 1em)
    #show heading.where(level: 1): set text(size: 1.5em)
    
    // Useful functions
    #let crimson = rgb("#c00000")
    #let greybox(..args, body) = rect(fill: luma(95%), stroke: 0.5pt, inset: 0pt, outset: 10pt, ..args, body)
    #let redbold(body) = {
      set text(fill: crimson, weight: "bold")
      body
    }
    #let blueit(body) = {
      set text(fill: blue)
      body
    }
    
    // Main body
    #block[
      = Asymptotic Notation: $O$
    
      Use #pin("h1")asymptotic notations#pin("h2") to describe asymptotic efficiency of algorithms.
      (Ignore constant coefficients and lower-order terms.)
    
      #greybox[
        Given a function $g(n)$, we denote by $O(g(n))$ the following _set of functions_:
        #redbold(${f(n): "exists" c > 0 "and" n_0 > 0, "such that" f(n) <= c dot g(n) "for all" n >= n_0}$)
      ]
    
      #pinit-highlight("h1", "h2")
    
      $f(n) = O(g(n))$: #pin(1)$f(n)$ is _asymptotically smaller_ than $g(n)$.#pin(2)
    
      $f(n) redbold(in) O(g(n))$: $f(n)$ is _asymptotically_ #redbold[at most] $g(n)$.
    
      #pinit-line(stroke: 3pt + crimson, start-dy: -0.25em, end-dy: -0.25em, 1, 2)
    
      #block[Insertion Sort as an #pin("r1")example#pin("r2"):]
    
      - Best Case: $T(n) approx c n + c' n - c''$ #pin(3)
      - Worst case: $T(n) approx c n + (c' \/ 2) n^2 - c''$ #pin(4)
    
      #pinit-rect("r1", "r2")
    
      #pinit-place(3, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n)$]]
      #pinit-place(4, dx: 15pt, dy: -15pt)[#redbold[$T(n) = O(n)$]]
    
      #blueit[Q: Is $n^(3) = O(n^2)$#pin("que")? How to prove your answer#pin("ans")?]
    
      #pinit-point-to("que", fill: crimson, redbold[No.])
      #pinit-point-from("ans", body-dx: -150pt)[
        Show that the equation $(3/2)^n >= c$ \
        has infinitely many solutions for $n$.
      ]
    ]

![Rendered image](typst-
img/4cc4ac1de81450b49f618408d35cd551858a4fcee317859f7f2a5d84482a9612-1.svg)

==  Margin notes

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    = Margin Notes
    == Setup
    Unfortunately `typst` doesn't expose margins to calling functions, so you'll need to set them explicitly. This is done using `set-page-properties` _before you place any content_:
    
    // At the top of your source file
    // Of course, you can substitute any margin numbers you prefer
    // provided the page margins match what you pass to `set-page-properties`
    
    == The basics
    #lorem(20)
    #margin-note(side: left)[Hello, world!]
    #lorem(10)
    #margin-note[Hello from the other side]
    
    #lorem(25)
    #margin-note[When notes are about to overlap, they're automatically shifted]
    #margin-note(stroke: aqua + 3pt)[To avoid collision]
    #lorem(25)
    
    #let caution-rect = rect.with(inset: 1em, radius: 0.5em, fill: orange.lighten(80%))
    #inline-note(rect: caution-rect)[
      Be aware that notes will stop automatically avoiding collisions if 4 or more notes
      overlap. This is because `typst` warns when the layout doesn't resolve after 5 attempts
      (initial layout + adjustment for each note)
    ]

![Rendered image](typst-
img/80c65cf70b8da549afe447ce97f6dc71087cc0654dd85cd4f5e95bea388e3179-1.svg)

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    == Adjusting the default style
    All function defaults are customizable through updating the module state:
    
    #lorem(4) #margin-note(dy: -2em)[Default style]
    #set-margin-note-defaults(stroke: orange, side: left)
    #lorem(4) #margin-note[Updated style]
    
    
    Even deeper customization is possible by overriding the default `rect`:
    
    #import "@preview/colorful-boxes:1.1.0": stickybox
    
    #let default-rect(stroke: none, fill: none, width: 0pt, content) = {
      stickybox(rotation: 30deg, width: width/1.5, content)
    }
    #set-margin-note-defaults(rect: default-rect, stroke: none, side: right)
    
    #lorem(20)
    #margin-note(dy: -25pt)[Why not use sticky notes in the margin?]
    
    // Undo changes from last example
    #set-margin-note-defaults(rect: rect, stroke: red)
    
    == Multiple document reviewers
    #let reviewer-a = margin-note.with(stroke: blue)
    #let reviewer-b = margin-note.with(stroke: purple)
    #lorem(20)
    #reviewer-a[Comment from reviewer A]
    #lorem(15)
    #reviewer-b(side: left)[Comment from reviewer B]
    
    == Inline Notes
    #lorem(10)
    #inline-note[The default inline note will split the paragraph at its location]
    #lorem(10)
    /*
    // Should work, but doesn't? Created an issue in repo.
    #inline-note(par-break: false, stroke: (paint: orange, dash: "dashed"))[
      But you can specify `par-break: false` to prevent this
    ]
    */
    #lorem(10)

![Rendered image](typst-
img/282de769e728a8bdb9c78c665664b382ecbf59fd7d3c915fab67aae7055e2acb-1.svg)

    
    
    #import "@preview/drafting:0.1.1": *
    
    #let (l-margin, r-margin) = (1in, 2in)
    #set page(
      margin: (left: l-margin, right: r-margin, rest: 0.1in),
    )
    #set-page-properties(margin-left: l-margin, margin-right: r-margin)
    
    == Hiding notes for print preview
    #set-margin-note-defaults(hidden: true)
    
    #lorem(20)
    #margin-note[This will respect the global "hidden" state]
    #margin-note(hidden: false, dy: -2.5em)[This note will never be hidden]
    
    = Positioning
    == Precise placement: rule grid
    Need to measure space for fine-tuned positioning? You can use `rule-grid` to cross-hatch
    the page with rule lines:
    
    #rule-grid(width: 10cm, height: 3cm, spacing: 20pt)
    #place(
      dx: 180pt,
      dy: 40pt,
      rect(fill: white, stroke: red, width: 1in, "This will originate at (180pt, 40pt)")
    )
    
    // Optionally specify divisions of the smallest dimension to automatically calculate
    // spacing
    #rule-grid(dx: 10cm + 3em, width: 3cm, height: 1.2cm, divisions: 5, square: true,  stroke: green)
    
    // The rule grid doesn't take up space, so add it explicitly
    #v(3cm + 1em)
    
    == Absolute positioning
    What about absolutely positioning something regardless of margin and relative location? `absolute-place` is your friend. You can put content anywhere:
    
    #context {
      let (dx, dy) = (25%, here().position().y)
      let content-str = (
        "This absolutely-placed box will originate at (" + repr(dx) + ", " + repr(dy) + ")"
        + " in page coordinates"
      )
      absolute-place(
        dx: dx, dy: dy,
        rect(
          fill: green.lighten(60%),
          radius: 0.5em,
          width: 2.5in,
          height: 0.5in,
          [#align(center + horizon, content-str)]
        )
      )
    }
    #v(1in)
    
    The "rule-grid" also supports absolute placement at the top-left of the page by passing `relative: false`. This is helpful for "rule"-ing the whole page.

![Rendered image](typst-
img/212dfc0f37bc9749e459085bb305f46a1db7ab3fbb22760f62ec58e349837d9e-1.svg)

==  Dropped capitals

> Get more info [ here ](https://github.com/EpicEricEE/typst-
> plugins/tree/master/droplet)

===  Basic usage

    
    
    #import "@preview/droplet:0.1.0": dropcap
    
    #dropcap(gap: -2pt, hanging-indent: 8pt)[
      #lorem(42)
    ]

![Rendered image](typst-
img/a9c411d628d90aa8313aa9f0829bfdf43122c4532ad0d9d323a64b989a049d64-1.svg)

===  Extended styling

    
    
    #import "@preview/droplet:0.1.0": dropcap
    
    #dropcap(
      height: 2,
      justify: true,
      gap: 6pt,
      transform: letter => style(styles => {
        let height = measure(letter, styles).height
    
        grid(columns: 2, gutter: 6pt,
          align(center + horizon, text(blue, letter)),
          // Use "place" to ignore the line's height when
          // the font size is calculated later on.
          place(horizon, line(
            angle: 90deg,
            length: height + 6pt,
            stroke: blue.lighten(40%) + 1pt
          )),
        )
      })
    )[
      #lorem(42)
    ]

![Rendered image](typst-
img/50d7ee4ffb1e61856535409373b040d579ab05734f3f304a4dc15f23361fd710-1.svg)

==  Headings for actual current chapter

> See [ hydra ](https://github.com/tingerrr/hydra)
    
    
    #import "@preview/hydra:0.2.0": hydra
    
    #set page(header: hydra() + line(length: 100%))
    #set heading(numbering: "1.1")
    #show heading.where(level: 1): it => pagebreak(weak: true) + it
    
    = Introduction
    #lorem(750)
    
    = Content
    == First Section
    #lorem(500)
    == Second Section
    #lorem(250)
    == Third Section
    #lorem(500)
    
    = Annex
    #lorem(10)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-1.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-2.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-3.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-4.svg)

![Rendered image](typst-
img/ab3a07e72c5e19f28936f6d2249c9c5bcd102a27f4af177db63d7715c5c64f33-5.svg)



= *book/packages/drawing.md*

=  Drawing

==  ` cetz  `

Cetz is an analogue of LaTeX's ` tikz  ` . Maybe it is not as powerful yet,
but certainly easier to learn and use.

It is the best choice in most of cases you want to draw something in Typst.

    
    
    #import "@preview/cetz:0.1.2"
    
    #cetz.canvas(length: 1cm, {
      import cetz.draw: *
      import cetz.angle: angle
      let (a, b, c) = ((0,0), (-1,1), (1.5,0))
      line(a, b)
      line(a, c)
      set-style(angle: (radius: 1, label-radius: .5), stroke: blue)
      angle(a, c, b, label: $alpha$, mark: (end: ">"), stroke: blue)
      set-style(stroke: red)
      angle(a, b, c, label: n => $#{n/1deg} degree$,
        mark: (end: ">"), stroke: red, inner: false)
    })

![Rendered image](typst-
img/d3b5277dd18dffb6da9a8f41486cb85a5044597821e80867652f062724ed8dd4-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      intersections(name: "demo", {
        circle((0, 0))
        bezier((0,0), (3,0), (1,-1), (2,1))
        line((0,-1), (0,1))
        rect((1.5,-1),(2.5,1))
      })
      for-each-anchor("demo", (name) => {
        circle("demo." + name, radius: .1, fill: black)
      })
    })

![Rendered image](typst-
img/05a1dbe2a2d17e5e81991406bed640775db6ab4ce2d585bc5a0d1175def43ea1-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      let (a, b, c) = ((0, 0), (1, 1), (2, -1))
      line(a, b, c, stroke: gray)
      bezier-through(a, b, c, name: "b")
      // Show calculated control points
      line(a, "b.ctrl-1", "b.ctrl-2", c, stroke: gray)
    })

![Rendered image](typst-
img/8e7d39d73212ebf8f230a0bd54a7fb7e58607a99f327e29809c4021b9e797345-1.svg)

    
    
    #import "@preview/cetz:0.1.2": canvas, draw
    
    #canvas(length: 1cm, {
      import draw: *
      group(name: "g", {
        rotate(45deg)
        rect((0,0), (1,1), name: "r")
        copy-anchors("r")
      })
      circle("g.top", radius: .1, fill: black)
    })

![Rendered image](typst-
img/b3d0b37a84cddb77a1508333743f851509e2250930abdcbda7ec4675e00077c3-1.svg)

    
    
    // author: LDemetrios
    #import "@preview/cetz:0.2.2"
    
    #cetz.canvas({
      let left = (a:2, b:1, d:-1, e:-2)
      let right = (p:2.7, q: 1.8, r: 0.9, s: -.3, t: -1.5, u: -2.4)
      let edges = "as,bq,dq,et".split(",")
    
      let ell-width = 1.5
      let ell-height = 3
      let dist = 5
      let dot-radius = 0.1
      let dot-clr = blue
    
      import cetz.draw: *
      circle((-dist/2, 0), radius:(ell-width ,  ell-height))
      circle((+dist/2, 0), radius:(ell-width ,  ell-height))
    
      for (name, y) in left {
        circle((-dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"east", pad(right:.7em, text(fill:dot-clr, name)))
      }
    
      for (name, y) in right {
        circle((dist/2, y), radius:dot-radius, fill:dot-clr, name:name)
        content(name, anchor:"west", pad(left:.7em, text(fill:dot-clr, name)))
      }
    
      for edge in edges {
        let from = edge.at(0)
        let to = edge.at(1)
        line(from, to)
        mark(from, to, symbol: ">",  fill: black)
      }
    
      content((0, - ell-height), text(fill:blue)[APPLICATION], anchor:"south")
    })

![Rendered image](typst-
img/7a4a9224b76305ecd694fd4505b3fdee8c706ccea76ac0e59fd13d469c343dd4-1.svg)



= *book/snippets/scripting/index.md*

=  Scripting

==  Unflatten arrays

    
    
    // author: PgSuper
    #let unflatten(arr, n) = {
      let columns = range(0, n).map(_ => ())
      for (i, x) in arr.enumerate() {
        columns.at(calc.rem(i, n)).push(x)
      }
      array.zip(..columns)
    }
    
    #unflatten((1, 2, 3, 4, 5, 6), 2)
    #unflatten((1, 2, 3, 4, 5, 6), 3)

![Rendered image](typst-
img/98271a255f0fb10f31ba1d8199ba5a91ebb6f647cdd570220f95e1b88d193ca0-1.svg)

==  Create an abbreviation

    
    
    #let full-name = "Federal University of Ceará"
    
    #let letts = {
      full-name
        .split()
        .map(word => word.at(0)) // filter only capital letters
        .filter(l => upper(l) == l)
        .join()
    }
    #letts

![Rendered image](typst-
img/e95b77243a1305a47517cb128577d1c7633d858561de0ef797ff551f35be40de-1.svg)

==  Split the string retrieving separators

    
    
    #",this, is a a a a; a. test? string!".matches(regex("(\b[\P{Punct}\s]+\b|\p{Punct})")).map(x => x.captures).join()

![Rendered image](typst-
img/c5d183e45097449e4f52b07f82185847092ad28bcad3b9474093d341c4b07c4a-1.svg)

==  Create selector matching any values in an array

This snippet creates a selector (that is then used in a show rule) that
matches any of the values inside the array. Here, it is used to highlight a
few raw lines, but it can be easily adapted to any kind of selector.

    
    
    // author: Blokyk
    #let lines = (2, 3, 5)
    #let lines-selectors = lines.map(lineno => raw.line.where(number: lineno))
    #let lines-combined-selector = lines-selectors.fold(
      // start with the first selector by default
      // you can also use a selector that wouldn't ever match anything, if possible
      lines-selectors.at(0),
      selector.or // create an OR of all selectors (alternatively: (acc, sel) => acc.or(sel))
    )
    
    #show lines-combined-selector: highlight
    
    ```py
    def foo(x, y):
      if x == y:
        return False
      z = x + y
      return z * x - z * y >= z
    ```

![Rendered image](typst-
img/085d1ae3a0672ba278edcde3ebb229a34a40ab5166d0b6d5b469d838b9262a51-1.svg)

==  Synthesize show (or show-set) rules from dictionnary

This snippet applies a show-set rule to any element inside a dictionary, by
using the key as the selector and the value as the parameter to set. In this
example, it's used to give custom supplements to custom figure kinds, based on
a dictionnary of correspondances.

    
    
    // author: laurmaedje
    #let kind_supp_dict = (
      algo: "Pseudo-code",
      ex: "Example",
      prob: "Problem",
    )
    
    // apply this rule to the whole (rest of the) document
    #show: it => {
      kind_supp_dict
        .pairs() // get an array of key-value pairs
        .fold( // we're going to stack show-set rules before the document
          it, // start with the default document
          (acc, (kind, supp)) => {
            // add the curent kind-supp combination on top of the rest
            show figure.where(kind: kind): set figure(supplement: supp)
            acc
          }
        )
    }
    #figure(
        kind: "algo",
        caption: [My code],
        ```Algorithm there```
    )

![Rendered image](typst-
img/9de9b5f4bb801735b13ffafe54d35ebcfc78f1df78a34a8ab90f8a6c350b986e-1.svg)

Additonnaly, as this is applied at the position where you write it, these
show-set rules will appear as if they were added in the same place where you
wrote this rule. This means that you can override them later, just like any
other show-set rules.



= *book/snippets/chapters/outlines.md*

=  Outlines

=  Outlines

> Lots of outlines examples are already available in [ official reference
> ](https://typst.app/docs/reference/meta/outline/)

==  Table of contents

    
    
    #outline()
    
    = Introduction
    #lorem(5)
    
    = Prior work
    #lorem(10)

![Rendered image](typst-
img/77dbcfc8072afc53714fea404efaa1f60692fee68a19821e77feb8bafdd5bd46-1.svg)

==  Outline of figures

    
    
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

==  Ignore low-level headings

    
    
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

==  Set indentation

    
    
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

==  Replace default dots

    
    
    #outline(fill: line(length: 100%), indent: 2em)
    
    = First level
    == Second level

![Rendered image](typst-
img/81c9f957fb8944561295980a7dfd1ee2b1fbd58f77d90e7b904aa8b99b3bbf9e-1.svg)

==  Make different outline levels look different

    
    
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

==  Long and short captions for the outline

    
    
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

==  Ignore citations and footnotes

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



= **book/snippets/chapters/page-numbering.md**

=  Page numbering

==  Separate page numbering for each chapter

    
    
    /// author: tinger
    
    // unnumbered title page if needed
    // ...
    
    // front-matter
    #set page(numbering: "I")
    #counter(page).update(1)
    #lorem(50)
    // ...
    
    // page counter anchor
    #metadata(()) <front-matter>
    
    // main document body
    #set page(numbering: "1")
    #lorem(50)
    #counter(page).update(1)
    // ...
    
    // back-matter
    #set page(numbering: "I")
    // must take page breaks into account, may need to be offset by +1 or -1
    #context counter(page).update(counter(page).at(<front-matter>).first())
    #lorem(50)
    // ...

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-1.svg)

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-2.svg)

![Rendered image](typst-
img/0cd153b35bf7532971dbbb220095812665f44b0ab9cca9d7a8c6c000f83e3e30-3.svg)



= **book/snippets/layout/page_setup.md**

=  Page setup

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



= **book/snippets/layout/duplicate.md**

=  Duplicate content

Notice that this implementation will mess up with labels and similar things.
For complex cases see one below.

```typ #set page(paper: "a4", flipped: true) #show: body => grid( columns:
(1fr, 1fr), column-gutter: 1cm, body, body, ) #lorem(200) ```

==  Advanced

    
    
    /// author: frozolotl
    #set page(paper: "a4", flipped: true)
    #set heading(numbering: "1.1")
    #show ref: it => {
      if it.element != none {
        it
      } else {
        let targets = query(it.target, it.location())
        if targets.len() == 2 {
          let target = targets.first()
          if target.func() == heading {
            let num = numbering(target.numbering, ..counter(heading).at(target.location()))
            [#target.supplement #num]
          } else if target.func() == figure {
            let num = numbering(target.numbering, ..target.counter.at(target.location()))
            [#target.supplement #num]
          } else {
            it
          }
        } else {
          it
        }
      }
    }
    #show link: it => context {
      let dest = query(it.dest)
      if dest.len() == 2 {
        link(dest.first().location(), it.body)
      } else {
        it
      }
    }
    #show: body => context grid(
      columns: (1fr, 1fr),
      column-gutter: 1cm,
      body,
      {
        let reset-counter(kind) = counter(kind).update(counter(kind).get())
        reset-counter(heading)
        reset-counter(figure.where(kind: image))
        reset-counter(figure.where(kind: raw))
        set heading(outlined: false)
        set figure(outlined: false)
        body
      },
    )
    
    #outline()
    
    = Foo <foo>
    See @foo and @foobar.
    
    #figure(rect[This is an image], caption: [Foobar], kind: raw) <foobar>
    
    == Bar
    == Baz
    #link(<foo>)[Click to visit Foo]

![Rendered image](typst-
img/2fdcc2778a936608ed868521793f59311ac54d43e226639db3ab14c6ca37c75f-1.svg)



= **book/snippets/layout/shapes.md**

=  Shaped boxes with text

(I guess that will make a package eventually, but let it be a snippet for now)

    
    
    /// author: JustForFun88
    #import "@preview/oxifmt:0.2.0": strfmt
    
    #let shadow_svg_path = `
    <svg
        width="{canvas-width}"
        height="{canvas-height}"
        viewBox="{viewbox}"
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:svg="http://www.w3.org/2000/svg">
        <!-- Definitions for reusable components -->
        <defs>
            <filter id="shadowing" >
                <feGaussianBlur in="SourceGraphic" stdDeviation="{blur}" />
            </filter>
        </defs>
    
        <!-- Drawing the rectangle with a fill and feGaussianBlur effect -->
        <path
            style="fill: {flood-color}; opacity: {flood-opacity}; filter:url(#shadowing)"
            d="{vertices} Z" />
    </svg>
    `.text
    
    #let parallelogram(width: 20mm, height: 5mm, angle: 30deg) = {
    	let δ = height * calc.tan(angle)
    	(
        (      + δ,     0pt   ),
        (width + δ * 2, 0pt   ),
        (width + δ,     height),
        (0pt,           height),
    	)
    }
    
    #let hexagon(width: 100pt, height: 30pt, angle: 30deg) = {
      let dy = height / 2;
    	let δ = dy * calc.tan(angle)
    	(
        (0pt,           dy    ),
        (      + δ,     0pt   ),
        (width + δ,     0pt   ),
        (width + δ * 2, dy    ),
        (width + δ,     height),
        (      + δ,     height),
    	)
    }
    
    #let shape_size(vertices) = {
        let x_vertices = vertices.map(array.first);
        let y_vertices = vertices.map(array.last);
    
        (
          calc.max(..x_vertices) - calc.min(..x_vertices),
          calc.max(..y_vertices) - calc.min(..y_vertices)
        )
    }
    
    #let shadowed_shape(shape: hexagon, fill: none,
      stroke: auto, angle: 30deg, shadow_fill: black, alpha: 0.5, 
      blur: 1.5, blur_margin: 5, dx: 0pt, dy: 0pt, ..args, content
    ) = layout(size => context {
        let named = args.named()
        for key in ("width", "height") {
          if key in named and type(named.at(key)) == ratio {
            named.insert(key, size.at(key) * named.at(key))
          }
        }
    
        let opts = (blur: blur, flood-color: shadow_fill.to-hex())
           
        let content = box(content, ..named)
        let size = measure(content)
    
        let vertices = shape(..size, angle: angle)
        let (shape_width, shape_height) = shape_size(vertices)
        let margin = opts.blur * blur_margin * 1pt
    
        opts += (
          canvas-width:  shape_width  + margin,
          canvas-height: shape_height + margin,
          flood-opacity: alpha
        )
    
        opts.viewbox = (0, 0, opts.canvas-width.pt(), opts.canvas-height.pt()).map(str).join(",")
    
        opts.vertices = "";
        let d = margin / 2;
        for (i, p) in vertices.enumerate() {
            let prefix = if i == 0 { "M " } else { " L " };
            opts.vertices += prefix + p.map(x => str((x + d).pt())).join(", ");
        }
    
        let svg-shadow = image.decode(strfmt(shadow_svg_path, ..opts))
        place(dx: dx, dy: dy, svg-shadow)
        place(path(..vertices, fill: fill, stroke: stroke, closed: true))
        box(h((shape_width - size.width) / 2) + content, width: shape_width)
    })
    
    #set text(3em);
    
    #shadowed_shape(shape: hexagon,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    #shadowed_shape(shape: parallelogram,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    

![Rendered image](typst-
img/f40acb7d6d2753b0845c9dd1fb26979c29dd0850448cf585f0c7f1b20acde7ea-1.svg)



= **book/snippets/layout/multiline_detect.md**

=  Multiline detection

Detects if figure caption (may be any other element) _has more than one line_
.

If the caption is multiline, it makes it left-aligned.

Breaks on manual linebreaks.

    
    
    #show figure.caption: it => {
      layout(size => context [
        #let text-size = measure(
          ..size,
          it.supplement + it.separator + it.body,
        )
    
        #let my-align
    
        #if text-size.width < size.width {
          my-align = center
        } else {
          my-align = left
        }
    
        #align(my-align, it)
      ])
    }
    
    #figure(caption: lorem(6))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]
    
    #figure(caption: lorem(20))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]

![Rendered image](typst-
img/8e2a1d9e2e66f654938733a2ed1d9a0dcc771165a60d89c4410f4d970054121c-1.svg)



= **book/snippets/layout/insert_lines.md**

=  Lines between list items

    
    
    /// author: frozolotl
    #show enum.where(tight: false): it => {
      it.children
        .enumerate()
        .map(((n, item)) => block(below: .6em, above: .6em)[#numbering("1.", n + 1) #item.body])
        .join(line(length: 100%))
    }
    
    + Item 1
    
    + Item 2
    
    + Item 3

![Rendered image](typst-
img/b1660863fded6fc3d870f8a92f364040d5ba9beaaf5bbd4a114b5384abe3db4c-1.svg)

The same approach may be easily adapted to style the enums as you want.



= **book/snippets/layout/hiding.md**

=  Hiding things

    
    
    // author: GeorgeMuscat
    #let redact(text, fill: black, height: 1em) = {
      box(rect(fill: fill, height: height)[#hide(text)])
    }
    
    Example:
      - Unredacted text
      - Redacted #redact("text")

![Rendered image](typst-
img/6b85fdf4b9ba387543271058b6acb27e202dab93b01c2cd7ac93187c1e8b643c-1.svg)



= **book/snippets/math/vecs.md**

=  Vectors & Matrices

You can easily note that the gap isn't necessarily even or the same in
different vectors and matrices:

    
    
    $
    mat(0, 1, -1; -1, 0, 1; 1, -1, 0) vec(a/b, a/b, a/b) = vec(c, d, e)
    $

![Rendered image](typst-
img/6a28529f5b38a17bcb660981691cdcc2bc4b6ddfbdb103327ae9e42b1365458e-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use this snippet:

    
    
    // Fixed height vector
    #let fvec(..children, delim: "(", gap: 1.5em) = { // change default gap there
      context math.vec(
          delim: delim,
          gap: 0em,
          ..for el in children.pos() {
            ({
              box(
                width: measure(el).width,
                height: gap, place(horizon, el)
              )
            },) // this is an array
            // `for` merges all these arrays, then we pass it to arguments
          }
        )
    }
    
    // fixed hight matrix
    // accepts also row-gap, column-gap and gap
    #let fmat(..rows, delim: "(", augment: none) = {
      let args = rows.named()
      let (gap, row-gap, column-gap) = (none,)*3;
    
      if "gap" in args {
        gap = args.at("gap")
        row-gap = args.at("row-gap", default: gap)
        column-gap = args.at("row-gap", default: gap)
      }
      else {
        // change default vertical there
        row-gap = args.at("row-gap", default: 1.5em) 
        // and horizontal there
        column-gap = rows.named().at("column-gap", default: 0.5em)
      }
    
      context math.mat(
          delim: delim,
          row-gap: 0em,
          column-gap: column-gap,
          ..for row in rows.pos() {
            (for el in row {
              ({
              box(
                width: measure(el).width,
                height: row-gap, place(horizon, el)
              )
            },)
            }, )
          }
        )
    }
    
    $
    "Before:"& vec(((a/b))/c, a/b, c) = vec(1, 1, 1)\
    "After:"& fvec(((a/b))/c, a/b, c) = fvec(1, 1, 1)\
    
    "Before:"& mat(a, b; c, d) vec(e, dot) = vec(c/d, e/f)\
    "After:"& fmat(a, b; c, d) fvec(e, dot) = fvec(c/d, e/f)
    $

![Rendered image](typst-
img/98195a6d9cfb93fdc5dca4db04dde22c00b969129e2962c8f7cba9012cd2bd0d-1.svg)



= **book/snippets/math/operations.md**

=  Operations

==  Fractions

    
    
    $
    p/q, p slash q, p\/q
    $

![Rendered image](typst-
img/7e6b189e7b1c1329caebb4d4c6ea718c897ef64f51383889c65e62e308c73478-1.svg)

===  Slightly moved:

    
    
    #let mfrac(a, b) = move(a, dy: -0.2em) + "/" + move(b, dy: 0.2em, dx: -0.1em)
    $A\/B, #mfrac($A$, $B$)$,

![Rendered image](typst-
img/002c9e0e934a98cfb5e93a407d130841a5e1a493d361c368ae605acdfd6f64bc-1.svg)

===  Large fractions

    
    
    #let dfrac(a, b) = $display(frac(#a, #b))$
    
    $(x + y)/(1/x + 1/y) quad (x + y)/(dfrac(1,x) + dfrac(1, y))$

![Rendered image](typst-
img/36454aba32957127c97710e4fc1db3e6d8c9a558e886b7103915d501004bad76-1.svg)



= **book/snippets/math/numbering.md**

=  Math Numbering

==  Number by current heading

> See also built-in numbering in [ math package section
> ](../../packages/math.html#theorems)
    
    
    /// original author: laurmaedje
    #set heading(numbering: "1.")
    
    // reset counter at each chapter
    // if you want to change the number of displayed 
    // section numbers, change the level there
    #show heading.where(level:1): it => {
      counter(math.equation).update(0)
      it
    }
    
    #set math.equation(numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
      // if you want change the number of number of displayed
      // section numbers, modify it this way:
      /*
      let count = counter(heading).get()
      let h1 = count.first()
      let h2 = count.at(1, default: 0)
      numbering("(1.1.1)", h1, h2, n)
      */
    })
    
    
    = Section
    == Subsection
    
    $ 5 + 3 = 8 $ <a>
    $ 5 + 3 = 8 $
    
    = New Section
    == Subsection
    $ 5 + 3 = 8 $
    == Subsection
    $ 5 + 3 = 8 $ <b>
    
    Mentioning @a and @b.

![Rendered image](typst-
img/9662902bb463e350d7a9bdf94e143bbaab8245da34eee4a426d2263d44511d1f-1.svg)

==  Number only labeled equations

===  Simple code

    
    
    // author: shampoohere
    #show math.equation:it => {
      if it.fields().keys().contains("label"){
        math.equation(block: true, numbering: "(1)", it)
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        //
        // Note that you don't need to #set the numbering now.
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>

![Rendered image](typst-
img/84052f83d0e2e2c330ef041c254dfb7c735526fc7f47cdb14ecc46961f66fee3-1.svg)

===  Make the hacked references clickable again

    
    
    // author: gijsleb
    #show math.equation:it => {
      if it.has("label") {
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        math.equation(block: true, numbering: "(1)", it)
      } else {
        it
      }
    }
    
    #show ref: it => {
      let el = it.element
      if el != none and el.func() == math.equation {
        link(el.location(), numbering(
          // don't forget to change the numbering according to the one
          // you are actually using (e.g. section numbering)
          "(1)",
          counter(math.equation).at(el.location()).at(0) + 1
        ))
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
    In @ep-2 and @ep-3 we see equations

![Rendered image](typst-
img/c17ccdb8d65b5aa0d0e58b1fba75c67bfc162400ba86ad64f37aa038ad6d8887-1.svg)



= **book/snippets/math/scripts.md**

=  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

==  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)



= **book/snippets/math/fonts.md**

=  Fonts

==  Set math font

**Important:** The font you want to set for math should _contain_ necessary
math symbols. That should be a special font with math. If it isn't, you are
very likely to get _an error_ (remember to set ` fallback: false  ` and check
` typst fonts  ` to debug the fonts).

    
    
    #show math.equation: set text(font: "Fira Math", fallback: false)
    
    $
    emptyset \
    
    integral_a^b sum (A + B)/C dif x \
    $

![Rendered image](typst-
img/f1cc8c8afe82aeb14cb0898ff5a83292a7c6a73f8b84cac8dbffa19af0d9370f-1.svg)



= **book/snippets/math/calligraphic.md**

=  Calligraphic letters

    
    
    #let scr(it) = math.class("normal",
      text(font: "", stylistic-set: 1, $cal(it)$) + h(0em)
    )
    
    $ scr(A) scr(B) + scr(C), -scr(D) $

![Rendered image](typst-
img/6ee9ca10515c1b6158d8d7bddd4418a713313052c0114fe851be455fc09b2c92-1.svg)

Unfortunately, currently just ` stylistic-set  ` for math creates bad spacing.
Math engine detects if the letter should be correctly spaced by whether it is
the default font. However, just making it "normal" isn't enough, because than
it can be reduced. That's way the snippet is as hacky as it is (probably
should be located in Typstonomicon, but it's not large enough).



= **book/snippets/special/index.md**

=  Special documents

==  Signature places

    
    
    #block(width: 150pt)[
      #line(length: 100%)
      #align(center)[Signature]
    ]

![Rendered image](typst-
img/04e318a822e6a90fbae23cce4c1b829e03e4d283051bb5dd613be2d7fe5933a2-1.svg)

==  Presentations

See [ polylux ](../../packages/) .

==  Forms

===  Form with placeholder

    
    
    #grid(
      columns: 2,
      rows: 4,
      gutter: 1em,
    
      [Student:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [Teacher:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [ID:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [School:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
    )

![Rendered image](typst-
img/d921f4df08e8dab19c9440b3aca6b065cb83ba11f015240b2115a63351ce64ce-1.svg)

===  Interactive

> Presentation interactive forms are coming! They are currently under heavy
> work by @tinger.



= **book/snippets/text/text_shadows.md**

=  Fake italic & Text shadows

==  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)



= **book/snippets/text/individual_lang_fonts.md**

=  Individual language fonts

    
    
    A cat แปลว่า แมว
    
    #show regex("\p{Thai}+"): text.with(font: "Noto Serif Thai")
    
    A cat แปลว่า แมว

![Rendered image](typst-
img/612267fd94fab114a3e0b75bdb3785b818c0f83427071db0dce086d1b0a6a54a-1.svg)



= **book/basics/tutorial/templates.md**

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .



= **book/basics/tutorial/advanced_styling.md**

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)



= **book/basics/tutorial/index.md**

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .



= **book/basics/tutorial/functions.md**

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

==  How to call functions

    
    
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

==  Function arguments

    
    
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

==  Content

    
    
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

==  Markup and code modes

    
    
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

==  Passing content into functions

    
    
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

==  Passing content, part II

    
    
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



= **book/basics/tutorial/basic_styling.md**

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…



= **book/basics/tutorial/markup.md**

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
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

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

==  Math

    
    
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



= **book/basics/scripting/basics.md**

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)



= **book/basics/scripting/braces.md**

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

**This is a very important thing to remember** .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

**Important** : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .



= **book/basics/scripting/tips.md**

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries **the order may
matter** , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)



= **book/basics/scripting/conditions.md**

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)



= **book/basics/scripting/types_2.md**

=  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)



= **book/basics/scripting/index.md**

=  Scripting

**Typst** has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way



= **book/basics/scripting/types.md**

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)



= **book/basics/scripting/arguments.md**

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO



= **book/basics/math/symbols.md**

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= **book/basics/math/classes.md**

=  Classes

> See [ official documentation ](https://typst.app/docs/reference/math/class/)

Each math symbol has its own "class", the way it behaves. That's one of the
main reasons why they are layouted differently.

==  Classes

    
    
    $
    a b c\
    a class("normal", b) c\
    a class("punctuation", b) c\
    a class("opening", b) c\
    a lr(b c]) c\
    a lr(class("opening", b) c ]) c // notice it is moved vertically \
    a class("closing", b) c\
    a class("fence", b) c\
    a class("large", b) c\
    a class("relation", b) c\
    a class("unary", b) c\
    a class("binary", b) c\
    a class("vary", b) c\
    $

![Rendered image](typst-
img/5d4604274229b2f53ee04b88ff0e73d9aa8365643c5e60052fcca1298d4f5a23-1.svg)

==  Setting class for symbol

    
    
    Default:
    
    $square circle square$
    
    With `#h(0)`:
    
    $square #h(0pt) circle #h(0pt) square$
    
    With `math.class`:
    
    #show math.circle: math.class.with("normal")
    $square circle square$

![Rendered image](typst-
img/86a709c6189649b79005752253a842631eed4722b350e4197116e0be19094035-1.svg)



= **book/basics/math/operators.md**

=  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

==  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

==  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

===  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)



= **book/basics/math/alignment.md**

=  Alignment

==  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

==  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

**Each alignment point simply alternates between right-aligned/left-aligned.**



= **book/basics/math/limits.md**

=  Setting limits

Sometimes we want to change how the default attaching should work.

==  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

==  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

==  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)



= **book/basics/math/index.md**

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)



= **book/basics/math/vec.md**

=  Vectors, matrices, semicolumn syntax

==  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

===  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

===  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

===  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

==  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

===  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or **after the semicolon** .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

==  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $



= **book/basics/math/sizes.md**

=  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  - Display math size ( ` display  ` ) 
  - Inline math size ( ` inline  ` ) 
  - Script math size ( ` script  ` ) 
  - Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

==  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)



= **book/basics/math/grouping.md**

=  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

==  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

==  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)



= **book/basics/states/states.md**

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

**THIS DOES NOT COMPILE:** Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;**Never allow colliding states.** _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)



= **book/basics/states/metadata.md**

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)



= **book/basics/states/query.md**

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)



= **book/basics/states/index.md**

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!



= **book/basics/states/counters.md**

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      *Theorem #c.display():*
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)



= **book/basics/must_know/tables.md**

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)



= **book/basics/must_know/project_struct.md**

=  Project structure

==  Large document

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

===  Template

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

===  Main

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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

**Important:** Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.



= **book/basics/must_know/box_block.md**

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)



= **book/basics/must_know/index.md**

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.



= **book/basics/must_know/place.md**

=  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)



= **book/basics/must_know/spacing.md**

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

    
    
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
    _Dark mode enabled._

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



= *book/snippets/layout/duplicate.md*

=  Duplicate content

Notice that this implementation will mess up with labels and similar things.
For complex cases see one below.

```typ #set page(paper: "a4", flipped: true) #show: body => grid( columns:
(1fr, 1fr), column-gutter: 1cm, body, body, ) #lorem(200) ```

==  Advanced

    
    
    /// author: frozolotl
    #set page(paper: "a4", flipped: true)
    #set heading(numbering: "1.1")
    #show ref: it => {
      if it.element != none {
        it
      } else {
        let targets = query(it.target, it.location())
        if targets.len() == 2 {
          let target = targets.first()
          if target.func() == heading {
            let num = numbering(target.numbering, ..counter(heading).at(target.location()))
            [#target.supplement #num]
          } else if target.func() == figure {
            let num = numbering(target.numbering, ..target.counter.at(target.location()))
            [#target.supplement #num]
          } else {
            it
          }
        } else {
          it
        }
      }
    }
    #show link: it => context {
      let dest = query(it.dest)
      if dest.len() == 2 {
        link(dest.first().location(), it.body)
      } else {
        it
      }
    }
    #show: body => context grid(
      columns: (1fr, 1fr),
      column-gutter: 1cm,
      body,
      {
        let reset-counter(kind) = counter(kind).update(counter(kind).get())
        reset-counter(heading)
        reset-counter(figure.where(kind: image))
        reset-counter(figure.where(kind: raw))
        set heading(outlined: false)
        set figure(outlined: false)
        body
      },
    )
    
    #outline()
    
    = Foo <foo>
    See @foo and @foobar.
    
    #figure(rect[This is an image], caption: [Foobar], kind: raw) <foobar>
    
    == Bar
    == Baz
    #link(<foo>)[Click to visit Foo]

![Rendered image](typst-
img/2fdcc2778a936608ed868521793f59311ac54d43e226639db3ab14c6ca37c75f-1.svg)



= *book/snippets/layout/shapes.md*

=  Shaped boxes with text

(I guess that will make a package eventually, but let it be a snippet for now)

    
    
    /// author: JustForFun88
    #import "@preview/oxifmt:0.2.0": strfmt
    
    #let shadow_svg_path = `
    <svg
        width="{canvas-width}"
        height="{canvas-height}"
        viewBox="{viewbox}"
        version="1.1"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:svg="http://www.w3.org/2000/svg">
        <!-- Definitions for reusable components -->
        <defs>
            <filter id="shadowing" >
                <feGaussianBlur in="SourceGraphic" stdDeviation="{blur}" />
            </filter>
        </defs>
    
        <!-- Drawing the rectangle with a fill and feGaussianBlur effect -->
        <path
            style="fill: {flood-color}; opacity: {flood-opacity}; filter:url(#shadowing)"
            d="{vertices} Z" />
    </svg>
    `.text
    
    #let parallelogram(width: 20mm, height: 5mm, angle: 30deg) = {
    	let δ = height * calc.tan(angle)
    	(
        (      + δ,     0pt   ),
        (width + δ * 2, 0pt   ),
        (width + δ,     height),
        (0pt,           height),
    	)
    }
    
    #let hexagon(width: 100pt, height: 30pt, angle: 30deg) = {
      let dy = height / 2;
    	let δ = dy * calc.tan(angle)
    	(
        (0pt,           dy    ),
        (      + δ,     0pt   ),
        (width + δ,     0pt   ),
        (width + δ * 2, dy    ),
        (width + δ,     height),
        (      + δ,     height),
    	)
    }
    
    #let shape_size(vertices) = {
        let x_vertices = vertices.map(array.first);
        let y_vertices = vertices.map(array.last);
    
        (
          calc.max(..x_vertices) - calc.min(..x_vertices),
          calc.max(..y_vertices) - calc.min(..y_vertices)
        )
    }
    
    #let shadowed_shape(shape: hexagon, fill: none,
      stroke: auto, angle: 30deg, shadow_fill: black, alpha: 0.5, 
      blur: 1.5, blur_margin: 5, dx: 0pt, dy: 0pt, ..args, content
    ) = layout(size => context {
        let named = args.named()
        for key in ("width", "height") {
          if key in named and type(named.at(key)) == ratio {
            named.insert(key, size.at(key) * named.at(key))
          }
        }
    
        let opts = (blur: blur, flood-color: shadow_fill.to-hex())
           
        let content = box(content, ..named)
        let size = measure(content)
    
        let vertices = shape(..size, angle: angle)
        let (shape_width, shape_height) = shape_size(vertices)
        let margin = opts.blur * blur_margin * 1pt
    
        opts += (
          canvas-width:  shape_width  + margin,
          canvas-height: shape_height + margin,
          flood-opacity: alpha
        )
    
        opts.viewbox = (0, 0, opts.canvas-width.pt(), opts.canvas-height.pt()).map(str).join(",")
    
        opts.vertices = "";
        let d = margin / 2;
        for (i, p) in vertices.enumerate() {
            let prefix = if i == 0 { "M " } else { " L " };
            opts.vertices += prefix + p.map(x => str((x + d).pt())).join(", ");
        }
    
        let svg-shadow = image.decode(strfmt(shadow_svg_path, ..opts))
        place(dx: dx, dy: dy, svg-shadow)
        place(path(..vertices, fill: fill, stroke: stroke, closed: true))
        box(h((shape_width - size.width) / 2) + content, width: shape_width)
    })
    
    #set text(3em);
    
    #shadowed_shape(shape: hexagon,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    #shadowed_shape(shape: parallelogram,
        inset: 1em, fill: teal,
        stroke: 1.5pt + teal.darken(50%),
        shadow_fill: red,
        dx: 0.5em, dy: 0.35em, blur: 3)[Hello there!]
    

![Rendered image](typst-
img/f40acb7d6d2753b0845c9dd1fb26979c29dd0850448cf585f0c7f1b20acde7ea-1.svg)



= *book/snippets/layout/multiline_detect.md*

=  Multiline detection

Detects if figure caption (may be any other element) _has more than one line_
.

If the caption is multiline, it makes it left-aligned.

Breaks on manual linebreaks.

    
    
    #show figure.caption: it => {
      layout(size => context [
        #let text-size = measure(
          ..size,
          it.supplement + it.separator + it.body,
        )
    
        #let my-align
    
        #if text-size.width < size.width {
          my-align = center
        } else {
          my-align = left
        }
    
        #align(my-align, it)
      ])
    }
        #let text-size = measure(
          ..size,
          it.supplement + it.separator + it.body,
        )
    
        #let my-align
    
        #if text-size.width < size.width {
          my-align = center
        } else {
          my-align = left
        }
    
        #align(my-align, it)
      ])
    }
    
    #figure(caption: lorem(6))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]
    
    #figure(caption: lorem(20))[
        ```rust
        pub fn main() {
            println!("Hello, world!");
        }
        ```
    ]

![Rendered image](typst-
img/8e2a1d9e2e66f654938733a2ed1d9a0dcc771165a60d89c4410f4d970054121c-1.svg)



= *book/snippets/layout/insert_lines.md*

=  Lines between list items

    
    
    /// author: frozolotl
    #show enum.where(tight: false): it => {
      it.children
        .enumerate()
        .map(((n, item)) => block(below: .6em, above: .6em)[#numbering("1.", n + 1) #item.body])
        .join(line(length: 100%))
    }
    
    + Item 1
    
    + Item 2
    
    + Item 3

![Rendered image](typst-
img/b1660863fded6fc3d870f8a92f364040d5ba9beaaf5bbd4a114b5384abe3db4c-1.svg)

The same approach may be easily adapted to style the enums as you want.



= *book/snippets/layout/hiding.md*

=  Hiding things

    
    
    // author: GeorgeMuscat
    #let redact(text, fill: black, height: 1em) = {
      box(rect(fill: fill, height: height)[#hide(text)])
    }
    
    Example:
      - Unredacted text
      - Redacted #redact("text")

![Rendered image](typst-
img/6b85fdf4b9ba387543271058b6acb27e202dab93b01c2cd7ac93187c1e8b643c-1.svg)



= *book/snippets/math/vecs.md*

=  Vectors & Matrices

You can easily note that the gap isn't necessarily even or the same in
different vectors and matrices:

    
    
    $
    mat(0, 1, -1; -1, 0, 1; 1, -1, 0) vec(a/b, a/b, a/b) = vec(c, d, e)
    $

![Rendered image](typst-
img/6a28529f5b38a17bcb660981691cdcc2bc4b6ddfbdb103327ae9e42b1365458e-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use this snippet:

    
    
    // Fixed height vector
    #let fvec(..children, delim: "(", gap: 1.5em) = { // change default gap there
      context math.vec(
          delim: delim,
          gap: 0em,
          ..for el in children.pos() {
            ({
              box(
                width: measure(el).width,
                height: gap, place(horizon, el)
              )
            },) // this is an array
            // `for` merges all these arrays, then we pass it to arguments
          }
        )
    }
    
    // fixed hight matrix
    // accepts also row-gap, column-gap and gap
    #let fmat(..rows, delim: "(", augment: none) = {
      let args = rows.named()
      let (gap, row-gap, column-gap) = (none,)*3;
    
      if "gap" in args {
        gap = args.at("gap")
        row-gap = args.at("row-gap", default: gap)
        column-gap = args.at("row-gap", default: gap)
      }
      else {
        // change default vertical there
        row-gap = args.at("row-gap", default: 1.5em) 
        // and horizontal there
        column-gap = rows.named().at("column-gap", default: 0.5em)
      }
    
      context math.mat(
          delim: delim,
          row-gap: 0em,
          column-gap: column-gap,
          ..for row in rows.pos() {
            (for el in row {
              ({
              box(
                width: measure(el).width,
                height: row-gap, place(horizon, el)
              )
            },)
            }, )
          }
        )
    }
    
    $
    "Before:"& vec(((a/b))/c, a/b, c) = vec(1, 1, 1)\
    "After:"& fvec(((a/b))/c, a/b, c) = fvec(1, 1, 1)\
    
    "Before:"& mat(a, b; c, d) vec(e, dot) = vec(c/d, e/f)\
    "After:"& fmat(a, b; c, d) fvec(e, dot) = fvec(c/d, e/f)
    $

![Rendered image](typst-
img/98195a6d9cfb93fdc5dca4db04dde22c00b969129e2962c8f7cba9012cd2bd0d-1.svg)



= **book/snippets/math/operations.md**

=  Operations

==  Fractions

    
    
    $
    p/q, p slash q, p\/q
    $

![Rendered image](typst-
img/7e6b189e7b1c1329caebb4d4c6ea718c897ef64f51383889c65e62e308c73478-1.svg)

===  Slightly moved:

    
    
    #let mfrac(a, b) = move(a, dy: -0.2em) + "/" + move(b, dy: 0.2em, dx: -0.1em)
    $A\/B, #mfrac($A$, $B$)$,

![Rendered image](typst-
img/002c9e0e934a98cfb5e93a407d130841a5e1a493d361c368ae605acdfd6f64bc-1.svg)

===  Large fractions

    
    
    #let dfrac(a, b) = $display(frac(#a, #b))$
    
    $(x + y)/(1/x + 1/y) quad (x + y)/(dfrac(1,x) + dfrac(1, y))$

![Rendered image](typst-
img/36454aba32957127c97710e4fc1db3e6d8c9a558e886b7103915d501004bad76-1.svg)



= **book/snippets/math/numbering.md**

=  Math Numbering

==  Number by current heading

> See also built-in numbering in [ math package section
> ](../../packages/math.html#theorems)
    
    
    /// original author: laurmaedje
    #set heading(numbering: "1.")
    
    // reset counter at each chapter
    // if you want to change the number of displayed 
    // section numbers, change the level there
    #show heading.where(level:1): it => {
      counter(math.equation).update(0)
      it
    }
    
    #set math.equation(numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
      // if you want change the number of number of displayed
      // section numbers, modify it this way:
      /*
      let count = counter(heading).get()
      let h1 = count.first()
      let h2 = count.at(1, default: 0)
      numbering("(1.1.1)", h1, h2, n)
      */
    })
    
    
    = Section
    == Subsection
    
    $ 5 + 3 = 8 $ <a>
    $ 5 + 3 = 8 $
    
    = New Section
    == Subsection
    $ 5 + 3 = 8 $
    == Subsection
    $ 5 + 3 = 8 $ <b>
    
    Mentioning @a and @b.

![Rendered image](typst-
img/9662902bb463e350d7a9bdf94e143bbaab8245da34eee4a426d2263d44511d1f-1.svg)

==  Number only labeled equations

===  Simple code

    
    
    // author: shampoohere
    #show math.equation:it => {
      if it.fields().keys().contains("label"){
        math.equation(block: true, numbering: "(1)", it)
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        //
        // Note that you don't need to #set the numbering now.
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>

![Rendered image](typst-
img/84052f83d0e2e2c330ef041c254dfb7c735526fc7f47cdb14ecc46961f66fee3-1.svg)

===  Make the hacked references clickable again

    
    
    // author: gijsleb
    #show math.equation:it => {
      if it.has("label") {
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        math.equation(block: true, numbering: "(1)", it)
      } else {
        it
      }
    }
    
    #show ref: it => {
      let el = it.element
      if el != none and el.func() == math.equation {
        link(el.location(), numbering(
          // don't forget to change the numbering according to the one
          // you are actually using (e.g. section numbering)
          "(1)",
          counter(math.equation).at(el.location()).at(0) + 1
        ))
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
    In @ep-2 and @ep-3 we see equations

![Rendered image](typst-
img/c17ccdb8d65b5aa0d0e58b1fba75c67bfc162400ba86ad64f37aa038ad6d8887-1.svg)



= **book/snippets/math/scripts.md**

=  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

==  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)



= **book/snippets/math/fonts.md**

=  Fonts

==  Set math font

**Important:** The font you want to set for math should _contain_ necessary
math symbols. That should be a special font with math. If it isn't, you are
very likely to get _an error_ (remember to set ` fallback: false  ` and check
` typst fonts  ` to debug the fonts).

    
    
    #show math.equation: set text(font: "Fira Math", fallback: false)
    
    $
    emptyset \
    
    integral_a^b sum (A + B)/C dif x \
    $

![Rendered image](typst-
img/f1cc8c8afe82aeb14cb0898ff5a83292a7c6a73f8b84cac8dbffa19af0d9370f-1.svg)



= **book/snippets/math/calligraphic.md**

=  Calligraphic letters

    
    
    #let scr(it) = math.class("normal",
      text(font: "", stylistic-set: 1, $cal(it)$) + h(0em)
    )
    
    $ scr(A) scr(B) + scr(C), -scr(D) $

![Rendered image](typst-
img/6ee9ca10515c1b6158d8d7bddd4418a713313052c0114fe851be455fc09b2c92-1.svg)

Unfortunately, currently just ` stylistic-set  ` for math creates bad spacing.
Math engine detects if the letter should be correctly spaced by whether it is
the default font. However, just making it "normal" isn't enough, because than
it can be reduced. That's way the snippet is as hacky as it is (probably
should be located in Typstonomicon, but it's not large enough).



= **book/snippets/special/index.md**

=  Special documents

==  Signature places

    
    
    #block(width: 150pt)[
      #line(length: 100%)
      #align(center)[Signature]
    ]

![Rendered image](typst-
img/04e318a822e6a90fbae23cce4c1b829e03e4d283051bb5dd613be2d7fe5933a2-1.svg)

==  Presentations

See [ polylux ](../../packages/) .

==  Forms

===  Form with placeholder

    
    
    #grid(
      columns: 2,
      rows: 4,
      gutter: 1em,
    
      [Student:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [Teacher:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [ID:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [School:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
    )

![Rendered image](typst-
img/d921f4df08e8dab19c9440b3aca6b065cb83ba11f015240b2115a63351ce64ce-1.svg)

===  Interactive

> Presentation interactive forms are coming! They are currently under heavy
> work by @tinger.



= **book/snippets/text/text_shadows.md**

=  Fake italic & Text shadows

==  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)



= **book/snippets/text/individual_lang_fonts.md**

=  Individual language fonts

    
    
    A cat แปลว่า แมว
    
    #show regex("\p{Thai}+"): text.with(font: "Noto Serif Thai")
    
    A cat แปลว่า แมว

![Rendered image](typst-
img/612267fd94fab114a3e0b75bdb3785b818c0f83427071db0dce086d1b0a6a54a-1.svg)



= **book/basics/tutorial/templates.md**

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .



= **book/basics/tutorial/advanced_styling.md**

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)



= **book/basics/tutorial/index.md**

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .



= **book/basics/tutorial/functions.md**

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

==  How to call functions

    
    
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

==  Function arguments

    
    
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

==  Content

    
    
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

==  Markup and code modes

    
    
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

==  Passing content into functions

    
    
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

==  Passing content, part II

    
    
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



= **book/basics/tutorial/basic_styling.md**

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…



= **book/basics/tutorial/markup.md**

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
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

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

==  Math

    
    
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



= **book/basics/scripting/basics.md**

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)



= **book/basics/scripting/braces.md**

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

**This is a very important thing to remember** .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

**Important** : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .



= **book/basics/scripting/tips.md**

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries **the order may
matter** , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)



= **book/basics/scripting/conditions.md**

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)



= **book/basics/scripting/types_2.md**

=  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)



= **book/basics/scripting/index.md**

=  Scripting

**Typst** has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way



= **book/basics/scripting/types.md**

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)



= **book/basics/scripting/arguments.md**

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO



= **book/basics/math/symbols.md**

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= **book/basics/math/classes.md**

=  Classes

> See [ official documentation ](https://typst.app/docs/reference/math/class/)

Each math symbol has its own "class", the way it behaves. That's one of the
main reasons why they are layouted differently.

==  Classes

    
    
    $
    a b c\
    a class("normal", b) c\
    a class("punctuation", b) c\
    a class("opening", b) c\
    a lr(b c]) c\
    a lr(class("opening", b) c ]) c // notice it is moved vertically \
    a class("closing", b) c\
    a class("fence", b) c\
    a class("large", b) c\
    a class("relation", b) c\
    a class("unary", b) c\
    a class("binary", b) c\
    a class("vary", b) c\
    $

![Rendered image](typst-
img/5d4604274229b2f53ee04b88ff0e73d9aa8365643c5e60052fcca1298d4f5a23-1.svg)

==  Setting class for symbol

    
    
    Default:
    
    $square circle square$
    
    With `#h(0)`:
    
    $square #h(0pt) circle #h(0pt) square$
    
    With `math.class`:
    
    #show math.circle: math.class.with("normal")
    $square circle square$

![Rendered image](typst-
img/86a709c6189649b79005752253a842631eed4722b350e4197116e0be19094035-1.svg)



= **book/basics/math/operators.md**

=  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

==  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

==  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

===  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)



= **book/basics/math/alignment.md**

=  Alignment

==  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

==  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

**Each alignment point simply alternates between right-aligned/left-aligned.**



= **book/basics/math/limits.md**

=  Setting limits

Sometimes we want to change how the default attaching should work.

==  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

==  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

==  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)



= **book/basics/math/index.md**

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)



= **book/basics/math/vec.md**

=  Vectors, matrices, semicolumn syntax

==  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

===  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

===  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

===  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

==  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

===  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or **after the semicolon** .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

==  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $



= **book/basics/math/sizes.md**

=  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  - Display math size ( ` display  ` ) 
  - Inline math size ( ` inline  ` ) 
  - Script math size ( ` script  ` ) 
  - Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

==  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)



= **book/basics/math/grouping.md**

=  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

==  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

==  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)



= **book/basics/states/states.md**

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

**THIS DOES NOT COMPILE:** Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;**Never allow colliding states.** _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)



= **book/basics/states/metadata.md**

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)



= **book/basics/states/query.md**

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)



= **book/basics/states/index.md**

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!



= **book/basics/states/counters.md**

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      *Theorem #c.display():*
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)



= **book/basics/must_know/tables.md**

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)



= **book/basics/must_know/project_struct.md**

=  Project structure

==  Large document

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

===  Template

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

===  Main

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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

**Important:** Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.



= **book/basics/must_know/box_block.md**

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)



= **book/basics/must_know/index.md**

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.



= **book/basics/must_know/place.md**

=  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)



= **book/basics/must_know/spacing.md**

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

    #let fmat(..rows, delim: "(", augment: none) = {
      let args = rows.named()
      let (gap, row-gap, column-gap) = (none,)*3;
    
      if "gap" in args {
        gap = args.at("gap")
        row-gap = args.at("row-gap", default: gap)
        column-gap = args.at("row-gap", default: gap)
      }
      else {
        // change default vertical there
        row-gap = args.at("row-gap", default: 1.5em) 
        // and horizontal there
        column-gap = rows.named().at("column-gap", default: 0.5em)
      }
    
      context math.mat(
          delim: delim,
          row-gap: 0em,
          column-gap: column-gap,
          ..for row in rows.pos() {
            (for el in row {
              ({
              box(
                width: measure(el).width,
                height: row-gap, place(horizon, el)
              )
            },)
            }, )
          }
        )
    }
    
    $
    "Before:"& vec(((a/b))/c, a/b, c) = vec(1, 1, 1)\
    "After:"& fvec(((a/b))/c, a/b, c) = fvec(1, 1, 1)\
    
    "Before:"& mat(a, b; c, d) vec(e, dot) = vec(c/d, e/f)\
    "After:"& fmat(a, b; c, d) fvec(e, dot) = fvec(c/d, e/f)
    $

![Rendered image](typst-
img/98195a6d9cfb93fdc5dca4db04dde22c00b969129e2962c8f7cba9012cd2bd0d-1.svg)



= **book/snippets/math/operations.md**

=  Operations

==  Fractions

    
    
    $
    p/q, p slash q, p\/q
    $

![Rendered image](typst-
img/7e6b189e7b1c1329caebb4d4c6ea718c897ef64f51383889c65e62e308c73478-1.svg)

===  Slightly moved:

    
    
    #let mfrac(a, b) = move(a, dy: -0.2em) + "/" + move(b, dy: 0.2em, dx: -0.1em)
    $A\/B, #mfrac($A$, $B$)$,

![Rendered image](typst-
img/002c9e0e934a98cfb5e93a407d130841a5e1a493d361c368ae605acdfd6f64bc-1.svg)

===  Large fractions

    
    
    #let dfrac(a, b) = $display(frac(#a, #b))$
    
    $(x + y)/(1/x + 1/y) quad (x + y)/(dfrac(1,x) + dfrac(1, y))$

![Rendered image](typst-
img/36454aba32957127c97710e4fc1db3e6d8c9a558e886b7103915d501004bad76-1.svg)



= **book/snippets/math/numbering.md**

=  Math Numbering

==  Number by current heading

> See also built-in numbering in [ math package section
> ](../../packages/math.html#theorems)
    
    
    /// original author: laurmaedje
    #set heading(numbering: "1.")
    
    // reset counter at each chapter
    // if you want to change the number of displayed 
    // section numbers, change the level there
    #show heading.where(level:1): it => {
      counter(math.equation).update(0)
      it
    }
    
    #set math.equation(numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
      // if you want change the number of number of displayed
      // section numbers, modify it this way:
      /*
      let count = counter(heading).get()
      let h1 = count.first()
      let h2 = count.at(1, default: 0)
      numbering("(1.1.1)", h1, h2, n)
      */
    })
    
    
    = Section
    == Subsection
    
    $ 5 + 3 = 8 $ <a>
    $ 5 + 3 = 8 $
    
    = New Section
    == Subsection
    $ 5 + 3 = 8 $
    == Subsection
    $ 5 + 3 = 8 $ <b>
    
    Mentioning @a and @b.

![Rendered image](typst-
img/9662902bb463e350d7a9bdf94e143bbaab8245da34eee4a426d2263d44511d1f-1.svg)

==  Number only labeled equations

===  Simple code

    
    
    // author: shampoohere
    #show math.equation:it => {
      if it.fields().keys().contains("label"){
        math.equation(block: true, numbering: "(1)", it)
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        //
        // Note that you don't need to #set the numbering now.
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>

![Rendered image](typst-
img/84052f83d0e2e2c330ef041c254dfb7c735526fc7f47cdb14ecc46961f66fee3-1.svg)

===  Make the hacked references clickable again

    
    
    // author: gijsleb
    #show math.equation:it => {
      if it.has("label") {
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        math.equation(block: true, numbering: "(1)", it)
      } else {
        it
      }
    }
    
    #show ref: it => {
      let el = it.element
      if el != none and el.func() == math.equation {
        link(el.location(), numbering(
          // don't forget to change the numbering according to the one
          // you are actually using (e.g. section numbering)
          "(1)",
          counter(math.equation).at(el.location()).at(0) + 1
        ))
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
    In @ep-2 and @ep-3 we see equations

![Rendered image](typst-
img/c17ccdb8d65b5aa0d0e58b1fba75c67bfc162400ba86ad64f37aa038ad6d8887-1.svg)



= **book/snippets/math/scripts.md**

=  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

==  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)



= **book/snippets/math/fonts.md**

=  Fonts

==  Set math font

**Important:** The font you want to set for math should _contain_ necessary
math symbols. That should be a special font with math. If it isn't, you are
very likely to get _an error_ (remember to set ` fallback: false  ` and check
` typst fonts  ` to debug the fonts).

    
    
    #show math.equation: set text(font: "Fira Math", fallback: false)
    
    $
    emptyset \
    
    integral_a^b sum (A + B)/C dif x \
    $

![Rendered image](typst-
img/f1cc8c8afe82aeb14cb0898ff5a83292a7c6a73f8b84cac8dbffa19af0d9370f-1.svg)



= **book/snippets/math/calligraphic.md**

=  Calligraphic letters

    
    
    #let scr(it) = math.class("normal",
      text(font: "", stylistic-set: 1, $cal(it)$) + h(0em)
    )
    
    $ scr(A) scr(B) + scr(C), -scr(D) $

![Rendered image](typst-
img/6ee9ca10515c1b6158d8d7bddd4418a713313052c0114fe851be455fc09b2c92-1.svg)

Unfortunately, currently just ` stylistic-set  ` for math creates bad spacing.
Math engine detects if the letter should be correctly spaced by whether it is
the default font. However, just making it "normal" isn't enough, because than
it can be reduced. That's way the snippet is as hacky as it is (probably
should be located in Typstonomicon, but it's not large enough).



= **book/snippets/special/index.md**

=  Special documents

==  Signature places

    
    
    #block(width: 150pt)[
      #line(length: 100%)
      #align(center)[Signature]
    ]

![Rendered image](typst-
img/04e318a822e6a90fbae23cce4c1b829e03e4d283051bb5dd613be2d7fe5933a2-1.svg)

==  Presentations

See [ polylux ](../../packages/) .

==  Forms

===  Form with placeholder

    
    
    #grid(
      columns: 2,
      rows: 4,
      gutter: 1em,
    
      [Student:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [Teacher:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [ID:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [School:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
    )

![Rendered image](typst-
img/d921f4df08e8dab19c9440b3aca6b065cb83ba11f015240b2115a63351ce64ce-1.svg)

===  Interactive

> Presentation interactive forms are coming! They are currently under heavy
> work by @tinger.



= **book/snippets/text/text_shadows.md**

=  Fake italic & Text shadows

==  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)



= **book/snippets/text/individual_lang_fonts.md**

=  Individual language fonts

    
    
    A cat แปลว่า แมว
    
    #show regex("\p{Thai}+"): text.with(font: "Noto Serif Thai")
    
    A cat แปลว่า แมว

![Rendered image](typst-
img/612267fd94fab114a3e0b75bdb3785b818c0f83427071db0dce086d1b0a6a54a-1.svg)



= **book/basics/tutorial/templates.md**

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .



= **book/basics/tutorial/advanced_styling.md**

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)



= **book/basics/tutorial/index.md**

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .



= **book/basics/tutorial/functions.md**

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

==  How to call functions

    
    
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

==  Function arguments

    
    
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

==  Content

    
    
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

==  Markup and code modes

    
    
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

==  Passing content into functions

    
    
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

==  Passing content, part II

    
    
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



= **book/basics/tutorial/basic_styling.md**

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…



= **book/basics/tutorial/markup.md**

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
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

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

==  Math

    
    
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



= **book/basics/scripting/basics.md**

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)



= **book/basics/scripting/braces.md**

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

**This is a very important thing to remember** .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

**Important** : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .



= **book/basics/scripting/tips.md**

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries **the order may
matter** , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)



= **book/basics/scripting/conditions.md**

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)



= **book/basics/scripting/types_2.md**

=  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)



= **book/basics/scripting/index.md**

=  Scripting

**Typst** has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way



= **book/basics/scripting/types.md**

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)



= **book/basics/scripting/arguments.md**

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO



= **book/basics/math/symbols.md**

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= **book/basics/math/classes.md**

=  Classes

> See [ official documentation ](https://typst.app/docs/reference/math/class/)

Each math symbol has its own "class", the way it behaves. That's one of the
main reasons why they are layouted differently.

==  Classes

    
    
    $
    a b c\
    a class("normal", b) c\
    a class("punctuation", b) c\
    a class("opening", b) c\
    a lr(b c]) c\
    a lr(class("opening", b) c ]) c // notice it is moved vertically \
    a class("closing", b) c\
    a class("fence", b) c\
    a class("large", b) c\
    a class("relation", b) c\
    a class("unary", b) c\
    a class("binary", b) c\
    a class("vary", b) c\
    $

![Rendered image](typst-
img/5d4604274229b2f53ee04b88ff0e73d9aa8365643c5e60052fcca1298d4f5a23-1.svg)

==  Setting class for symbol

    
    
    Default:
    
    $square circle square$
    
    With `#h(0)`:
    
    $square #h(0pt) circle #h(0pt) square$
    
    With `math.class`:
    
    #show math.circle: math.class.with("normal")
    $square circle square$

![Rendered image](typst-
img/86a709c6189649b79005752253a842631eed4722b350e4197116e0be19094035-1.svg)



= **book/basics/math/operators.md**

=  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

==  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

==  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

===  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)



= **book/basics/math/alignment.md**

=  Alignment

==  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

==  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

**Each alignment point simply alternates between right-aligned/left-aligned.**



= **book/basics/math/limits.md**

=  Setting limits

Sometimes we want to change how the default attaching should work.

==  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

==  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

==  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)



= **book/basics/math/index.md**

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)



= **book/basics/math/vec.md**

=  Vectors, matrices, semicolumn syntax

==  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

===  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

===  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

===  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

==  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

===  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or **after the semicolon** .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

==  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $



= **book/basics/math/sizes.md**

=  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  - Display math size ( ` display  ` ) 
  - Inline math size ( ` inline  ` ) 
  - Script math size ( ` script  ` ) 
  - Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

==  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)



= **book/basics/math/grouping.md**

=  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

==  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

==  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)



= **book/basics/states/states.md**

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

**THIS DOES NOT COMPILE:** Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;**Never allow colliding states.** _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)



= **book/basics/states/metadata.md**

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)



= **book/basics/states/query.md**

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    *Here.* <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)



= **book/basics/states/index.md**

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!



= **book/basics/states/counters.md**

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      *Theorem #c.display():*
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)



= **book/basics/must_know/tables.md**

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)



= **book/basics/must_know/project_struct.md**

=  Project structure

==  Large document

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

===  Template

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

===  Main

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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

**Important:** Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.



= **book/basics/must_know/box_block.md**

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)



= **book/basics/must_know/index.md**

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.



= **book/basics/must_know/place.md**

=  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)



= **book/basics/must_know/spacing.md**

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

    #show heading.where(level:1): it => {
      counter(math.equation).update(0)
      it
    }
    
    #set math.equation(numbering: n => {
      numbering("(1.1)", counter(heading).get().first(), n)
      // if you want change the number of number of displayed
      // section numbers, modify it this way:
      /*
      let count = counter(heading).get()
      let h1 = count.first()
      let h2 = count.at(1, default: 0)
      numbering("(1.1.1)", h1, h2, n)
      */
    })
    
    
    = Section
    == Subsection
    
    $ 5 + 3 = 8 $ <a>
    $ 5 + 3 = 8 $
    
    = New Section
    == Subsection
    $ 5 + 3 = 8 $
    == Subsection
    $ 5 + 3 = 8 $ <b>
    
    Mentioning @a and @b.

![Rendered image](typst-
img/9662902bb463e350d7a9bdf94e143bbaab8245da34eee4a426d2263d44511d1f-1.svg)

==  Number only labeled equations

===  Simple code

    
    
    // author: shampoohere
    #show math.equation:it => {
      if it.fields().keys().contains("label"){
        math.equation(block: true, numbering: "(1)", it)
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        //
        // Note that you don't need to #set the numbering now.
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>

![Rendered image](typst-
img/84052f83d0e2e2c330ef041c254dfb7c735526fc7f47cdb14ecc46961f66fee3-1.svg)

===  Make the hacked references clickable again

    
    
    // author: gijsleb
    #show math.equation:it => {
      if it.has("label") {
        // Don't forget to change your numbering style in `numbering`
        // to the one you actually want to use.
        math.equation(block: true, numbering: "(1)", it)
      } else {
        it
      }
    }
    
    #show ref: it => {
      let el = it.element
      if el != none and el.func() == math.equation {
        link(el.location(), numbering(
          // don't forget to change the numbering according to the one
          // you are actually using (e.g. section numbering)
          "(1)",
          counter(math.equation).at(el.location()).at(0) + 1
        ))
      } else {
        it
      }
    }
    
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-2>
    $ sum_x^2 $
    $ dif/(dif x)(A(t)+B(x))=dif/(dif x)A(t)+dif/(dif x)B(t) $ <ep-3>
    In @ep-2 and @ep-3 we see equations

![Rendered image](typst-
img/c17ccdb8d65b5aa0d0e58b1fba75c67bfc162400ba86ad64f37aa038ad6d8887-1.svg)



= *book/snippets/math/scripts.md*

=  Scripts

> To set scripts and limits see [ Typst Basics section
> ](../../basics/math/limits.html)

==  Make every character upright when used in subscript

    
    
    // author: emilyyyylime
    
    $f_a, f_b, f^a, f_italic("word")$
    #show math.attach: it => {
      import math: *
      if it.b != none and it.b.func() != upright[].func() and it.b.has("text") and it.b.text.len() == 1 {
        let args = it.fields()
        let _ = args.remove("base")
        let _ = args.remove("b")
        attach(it.base, b: upright(it.b), ..args)
      } else {
        it
      }
    }
    
    $f_a, f_b, f^a, f_italic("word")$

![Rendered image](typst-
img/40b68a1d7f5aeb1c498431996be1b140b3d217ba5b0230b6b73e6fefe64d45cd-1.svg)



= *book/snippets/math/fonts.md*

=  Fonts

==  Set math font

*Important:* The font you want to set for math should _contain_ necessary
math symbols. That should be a special font with math. If it isn't, you are
very likely to get _an error_ (remember to set ` fallback: false  ` and check
` typst fonts  ` to debug the fonts).

    
    
    #show math.equation: set text(font: "Fira Math", fallback: false)
    
    $
    emptyset \
    
    integral_a^b sum (A + B)/C dif x \
    $

![Rendered image](typst-
img/f1cc8c8afe82aeb14cb0898ff5a83292a7c6a73f8b84cac8dbffa19af0d9370f-1.svg)



= *book/snippets/math/calligraphic.md*

=  Calligraphic letters

    
    
    #let scr(it) = math.class("normal",
      text(font: "", stylistic-set: 1, $cal(it)$) + h(0em)
    )
    
    $ scr(A) scr(B) + scr(C), -scr(D) $

![Rendered image](typst-
img/6ee9ca10515c1b6158d8d7bddd4418a713313052c0114fe851be455fc09b2c92-1.svg)

Unfortunately, currently just ` stylistic-set  ` for math creates bad spacing.
Math engine detects if the letter should be correctly spaced by whether it is
the default font. However, just making it "normal" isn't enough, because than
it can be reduced. That's way the snippet is as hacky as it is (probably
should be located in Typstonomicon, but it's not large enough).



= *book/snippets/special/index.md*

=  Special documents

==  Signature places

    
    
    #block(width: 150pt)[
      #line(length: 100%)
      #align(center)[Signature]
    ]

![Rendered image](typst-
img/04e318a822e6a90fbae23cce4c1b829e03e4d283051bb5dd613be2d7fe5933a2-1.svg)

==  Presentations

See [ polylux ](../../packages/) .

==  Forms

===  Form with placeholder

    
    
    #grid(
      columns: 2,
      rows: 4,
      gutter: 1em,
    
      [Student:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [Teacher:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [ID:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
      [School:],
      [#block()#align(bottom)[#line(length: 10em, stroke: 0.5pt)]],
    )

![Rendered image](typst-
img/d921f4df08e8dab19c9440b3aca6b065cb83ba11f015240b2115a63351ce64ce-1.svg)

===  Interactive

> Presentation interactive forms are coming! They are currently under heavy
> work by @tinger.



= *book/snippets/text/text_shadows.md*

=  Fake italic & Text shadows

==  Skew

    
    
    // author: Enivex
    #set page(width: 21cm, height: 3cm)
    #set text(size:25pt)
    #let skew(angle,vscale: 1,body) = {
      let (a,b,c,d)= (1,vscale*calc.tan(angle),0,vscale)
      let E = (a + d)/2
      let F = (a - d)/2
      let G = (b + c)/2
      let H = (c - b)/2
      let Q = calc.sqrt(E*E + H*H)
      let R = calc.sqrt(F*F + G*G)
      let sx = Q + R
      let sy = Q - R
      let a1 = calc.atan2(F,G)
      let a2 = calc.atan2(E,H)
      let theta = (a2 - a1) /2
      let phi = (a2 + a1)/2
    
      set rotate(origin: bottom+center)
      set scale(origin: bottom+center)
    
      rotate(phi,scale(x: sx*100%, y: sy*100%,rotate(theta,body)))
    }
    
    #let fake-italic(body) = skew(-12deg,body)
    #fake-italic[This is fake italic text]
    
    #let shadowed(body) = box(place(skew(-50deg, vscale: 0.8, text(fill:luma(200),body)))+place(body))
    #shadowed[This is some fancy text with a shadow]

![Rendered image](typst-
img/1c00de41a0643ecf254de80601efa4a043302c1e76aedfbf2458a9e30f1c7fd3-1.svg)



= *book/snippets/text/individual_lang_fonts.md*

=  Individual language fonts

    
    
    A cat แปลว่า แมว
    
    #show regex("\p{Thai}+"): text.with(font: "Noto Serif Thai")
    
    A cat แปลว่า แมว

![Rendered image](typst-
img/612267fd94fab114a3e0b75bdb3785b818c0f83427071db0dce086d1b0a6a54a-1.svg)



= *book/basics/tutorial/templates.md*

=  Templates

==  Templates

If you want to reuse styling in other files, you can use the _template_ idiom.
Because ` set  ` and ` show  ` rules are only active in their current scope,
they will not affect content in a file you imported your file into. But
functions can circumvent this in a predictable way:

    
    
    // define a function that:
    // - takes content
    // - applies styling to it
    // - returns the styled content
    #let apply-template(body) = [
      #show heading.where(level: 1): emph
      #set heading(numbering: "1.1")
      // ...
      #body
    ]

This is equivalent to:

    
    
    // we can reduce the number of hashes needed here by using scripting mode
    // same as above but we exchanged `[...]` for `{...}` to switch from markup
    // into scripting mode
    #let apply-template(body) = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
      // ...
      body
    }

Then in your main file:

    
    
    #import "template.typ": apply-template
    #show: apply-template

_This will apply a "template" function to the rest of your document!_

===  Passing arguments

    
    
    // add optional named arguments
    #let apply-template(body, name: "My document") = {
      show heading.where(level: 1): emph
      set heading(numbering: "1.1")
    
      align(center, text(name, size: 2em))
    
      body
    }

Then, in template file:

    
    
    #import "template.typ": apply-template
    
    // `func.with(..)` applies the arguments to the function and returns the new
    // function with those defaults applied
    #show: apply-template.with(name: "Report")
    
    // it is functionally the same as this
    #let new-template(..args) = apply-template(name: "Report", ..args)
    #show: new-template

Writing templates is fairly easy if you understand [ scripting
](../scripting/index.html) .

See more information about writing templates in [ Official Tutorial
](https://typst.app/docs/tutorial/making-a-template/) .

There is no official repository for templates yet, but there are a plenty
community ones in [ awesome-typst ](https://github.com/qjcg/awesome-
typst?ysclid=lj8pur1am7431908794#general) .



= *book/basics/tutorial/advanced_styling.md*

=  Advanced styling

==  The ` show  ` rule

    
    
    Advanced styling comes with another rule. The _`show` rule_.
    
    Now please compare the source code and the output.
    
    #show "Be careful": strong[Play]
    
    This is a very powerful thing, sometimes even too powerful.
    Be careful with it.
    
    #show "it is holding me hostage": text(green)[I'm fine]
    
    Wait, what? I told you "Be careful!", not "Play!".
    
    Help, it is holding me hostage.

![Rendered image](typst-
img/8a9ac38769d4ac7b42a2755047d0cd5a6404ad26e9e7f5b72b6984fa67abadf9-1.svg)

==  Now a bit more serious

    
    
    Show rule is a powerful thing that takes a _selector_
    and what to apply to it. After that it will apply to
    all elements it can find.
    
    It may be extremely useful like that:
    
    #show emph: set text(blue)
    
    Now if I want to _emphasize_ something,
    it will be both _emphasized_ and _blue_.
    Isn't that cool?

![Rendered image](typst-
img/657acaf5c4ca684408bbc6fe0dec4c74b9fa58d24805ec975be1382aa7bf959c-1.svg)

==  About syntax

    
    
    Sometimes show rules may be confusing. They may seem very diverse, but in fact they all are quite the same! So
    
    // actually, this is the same as
    // redify = text.with(red)
    // `with` creates a new function with this argument already set
    #let redify(string) = text(red, string)
    
    // and this is the same as
    // framify = rect.with(stroke: orange)
    #let framify(object) = rect(object, stroke: orange)
    
    // set default color of text blue for all following text
    #show: set text(blue)
    
    Blue text.
    
    // wrap everything into a frame
    #show: framify
    
    Framed text.
    
    // it's the same, just creating new function that calls framify
    #show: a => framify(a)
    
    Double-framed.
    
    // apply function to `the`
    #show "the": redify
    // set text color for all the headings
    #show heading: set text(purple)
    
    = Conclusion
    
    All these rules do basically the same!

![Rendered image](typst-
img/2dfcde68345d3fa276b99a1f308343118c6eeae09fd106389a8fc488d7244ebb-1.svg)

==  Blocks

One of the most important usages is that you can set up all spacing using
blocks. Like every element with text contains text that can be set up, every
_block element_ contains blocks:

    
    
    Text before
    = Heading
    Text after
    
    #show heading: set block(spacing: 0.5em)
    
    Text before
    = Heading
    Text after

![Rendered image](typst-
img/7891207932d0918c88b5804b3a7ee051ce5dda93081f8999eb0f7ebaee48400a-1.svg)

==  Selector

    
    
    So show rule can accept _selectors_.
    
    There are lots of different selector types,
    for example
    
    - element functions
    - strings
    - regular expressions
    - field filters
    
    Let's see example of the latter:
    
    #show heading.where(level: 1): set align(center)
    
    = Title
    == Small title
    
    Of course, you can set align by hand,
    no need to use show rules
    (but they are very handy!):
    
    #align(center)[== Centered small title]

![Rendered image](typst-
img/f41f337dd75b55211dd8d16e2682132c1ffb1ef19f774ba6cafc94cae090ec75-1.svg)

==  Custom formatting

    
    
    Let's try now writing custom functions.
    It is very easy, see yourself:
    
    // "it" is a heading, we take it and output things in braces
    #show heading: it => {
      // center it
      set align(center)
      // set size and weight
      set text(12pt, weight: "regular")
      // see more about blocks and boxes
      // in corresponding chapter
      block(smallcaps(it.body))
    }
    
    = Smallcaps heading
    

![Rendered image](typst-
img/a5c37bce3cf9a077a4eb62a4d95f89584b5ef8acee279b81de6019d0e5768ba0-1.svg)

==  Setting spacing

TODO: explain block spacing for common elements

==  Formatting to get an "article look"

    
    
    #set page(
      // Header is that small thing on top
      header: align(
        right + horizon,
        [Some header there]
      ),
      height: 12cm
    )
    
    #align(center, text(17pt)[
      *Important title*
    ])
    
    #grid(
      columns: (1fr, 1fr),
      align(center)[
        Some author \
        Some Institute \
        #link("mailto:some@mail.edu")
      ],
      align(center)[
        Another author \
        Another Institute \
        #link("mailto:another@mail.edu")
      ]
    )
    
    Now let's split text into two columns:
    
    #show: rest => columns(2, rest)
    
    #show heading.where(
      level: 1
    ): it => block(width: 100%)[
      #set align(center)
      #set text(12pt, weight: "regular")
      #smallcaps(it.body)
    ]
    
    #show heading.where(
      level: 2
    ): it => text(
      size: 11pt,
      weight: "regular",
      style: "italic",
      it.body + [.],
    )
    
    // Now let's fill it with words:
    
    = Heading
    == Small heading
    #lorem(10)
    == Second subchapter
    #lorem(10)
    = Second heading
    #lorem(40)
    
    == Second subchapter
    #lorem(40)

![Rendered image](typst-
img/76ee0cca809299df178ec9d94371c01031d1808a700b39deac5245dd6b83157f-1.svg)



= *book/basics/tutorial/index.md*

=  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .



= *book/basics/tutorial/functions.md*

=  Functions

==  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are _lots of magic_ in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and _some function name_
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That _function_ just generated 50 "Lorem Ipsum" words!_

![Rendered image](typst-
img/036fce36d10e06e8e41be8e77d7d5672f5dfc82c57e7c3ba9b8060d0822ca115-1.svg)

==  More functions

    
    
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

==  How to call functions

    
    
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

==  Function arguments

    
    
    There are _two types_ of function arguments:
    
    + _Positional._ Like `50` in `lorem(50)`.
      Just write them in parentheses and it will be okay.
      If you have many, use commas.
    + _Named._ Like in `#quote(attribution: "Whoever")`.
      Write the value after a name and a colon.
    
    If argument is named, it has some _default value_.
    To find out what it is, see
    #link("https://typst.app/docs/reference/")[Official Typst Reference].

![Rendered image](typst-
img/d66fb474260490595a207f06c687efcc85808701c39c2a6e8b686bc22ffde279-1.svg)

==  Content

    
    
    The most "universal" type in Typst language is _content_.
    Everything you write in the document becomes content.
    
    #[
      But you can explicitly create it with
      _scripting mode_ and _square brackets_.
    
      There, in square brackets, you can use any markup
      functions or whatever you want.
    ]

![Rendered image](typst-
img/faf9d7cddd55e68f84d212013a52a724c2ad763f18d83221a99bbd380410d7d1-1.svg)

==  Markup and code modes

    
    
    When you use `#`, you are "switching" to code mode.
    When you use `[]`, you turn back:
    
    // +-- going from markup (the default mode) to scripting for that function
    // |                 +-- scripting mode: calling `text`, the last argument is markup
    // |     first arg   |
    // v     vvvvvvvvv   vvvv
       #rect(width: 5cm, text(red)[hello _world_])
    //  ^^^^                       ^^^^^^^^^^^^^ just a markup argument for `text`
    //  |
    //  +-- calling `rect` in scripting mode, with two arguments: width and other content

![Rendered image](typst-
img/0cabe3da1eb49f805535fb1d7e34a0d6eb1a6c49227b0be98634c6965e892185-1.svg)

==  Passing content into functions

    
    
    So what are these square brackets after functions?
    
    If you _write content right after
    function, it will be passed as positional argument there_.
    
    #quote(block: true)[
      So #text(red)[_that_] allows me to write
      _literally anything in things
      I pass to #underline[functions]!_
    ]

![Rendered image](typst-
img/686d2b2a361a60244452ce53bd37ebef0699e92cf962c477bfb62bafdc0f7241-1.svg)

==  Passing content, part II

    
    
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



= *book/basics/tutorial/basic_styling.md*

=  Basic styling

==  ` Set  ` rule

    
    
    #set page(width: 15cm, margin: (left: 4cm, right: 4cm))
    
    That was great, but using functions everywhere, especially
    with many arguments every time is awfully cumbersome.
    
    That's why Typst has _rules_. No, not for you, for the document.
    
    #set par(justify: true)
    
    And the first rule we will consider there is `set` rule.
    As you see, I've just used it on `par` (which is short from paragraph)
    and now all paragraphs became _justified_.
    
    It will apply to all paragraphs after the rule,
    but will work only in it's _scope_ (we will discuss them later).
    
    #par(justify: false)[
      Of course, you can override a `set` rule.
      This rule just sets the _default value_
      of an argument of an element.
    ]
    
    By the way, at first line of this snippet
    I've reduced page size to make justifying more visible,
    also increasing margins to add blank space on left and right.

![Rendered image](typst-
img/cee42a8b1274afa36891438d4b1611eb55b2cd8bb4546df47128a7d3eb66653b-1.svg)

==  A bit about length units

    
    
    Before we continue with rules, we should talk about length. There are several absolute length units in Typst:
    
    #set rect(height: 1em)
    
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
      [Relative to font size], rect(width: 6.5em)
    )
    
    `1 em` = current font size. \
    It is a very convenient unit,
    so we are going to use it a lot

![Rendered image](typst-
img/5f8abc94a3d9df0e16f78c258e7f487d5698b4c96491300b3a48ad8e685534bc-1.svg)

==  Setting something else

Of course, you can use ` set  ` rule with all built-in functions and all their
named arguments to make some argument "default".

For example, let's make all quotes in this snippet authored by the book:

    
    
    #set quote(block: true, attribution: [Typst Examples Book])
    
    #quote[
      Typst is great!
    ]
    
    #quote[
      The problem with quotes on the internet is
      that it is hard to verify their authenticity.
    ]

![Rendered image](typst-
img/c34c25cad05b7c20b6e0f146002886a1de65b61f48666cfec3d3494bd694a641-1.svg)

==  Opinionated defaults

That allows you to set Typst default styling as you want it:

    
    
    #set par(justify: true)
    #set list(indent: 1em)
    #set enum(indent: 1em)
    #set page(numbering: "1")
    
    - List item
    - List item
    
    + Enum item
    + Enum item

![Rendered image](typst-
img/773d68bc55eb89f119ad07b882eae5fd31868d8a1bb3d4963573ec80fb1c7466-1.svg)

Don't complain about bad defaults! ` Set  ` your own.

==  Numbering

    
    
    = Numbering
    
    Some of elements have a property called "numbering".
    They accept so-called "numbering patterns" and
    are very useful with set rules. Let's see what I mean.
    
    #set heading(numbering: "I.1:")
    
    = This is first level
    = Another first
    == Second
    == Another second
    === Now third
    == And second again
    = Now returning to first
    = These are actual romanian numerals

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…



= *book/basics/tutorial/markup.md*

=  Markup language

==  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

==  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and _bold_ text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

==  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](typst-
img/4dabdee2a61e7d10773d51772dba3665271a09d4d5df4a8f66dd80589f0bcd7a-1.svg)

==  Comments & codeblocks

    
    
    You can write comments with `//` and `/* comment _/`:
    // Like this
    /_ Or even like
    this _/
    
    ```typ
    Just in case you didn't read source,
    this is how it is written:
    
    // Like this
    /_ Or even like
    this */
    
    By the way, I'm writing it all in a _fenced code block_ with _syntax highlighting_!
    ```

![Rendered image](typst-
img/a481d12b3ed0bbe2d9db6cc4b4a1237cba9936de83333254dfce8702832db125-1.svg)

==  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](typst-
img/89114a6e9af45c2eb9db2ef44d0e5ba41e31bf816e72803bd1a9a02120e69fc3-1.svg)

==  Lists

    
    
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

*Notice:*

    
    
    Typst numbered lists differ from markdown-like syntax for lists. If you write them by hand, numbering is preserved:
    
    1. Apple
    1. Orange
    1. Peach

![Rendered image](typst-
img/477695c86becc136dceb144e90c0acd2b75faa2a49743f8673d09974b71da324-1.svg)

==  Math

    
    
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



= *book/basics/scripting/basics.md*

=  Basics

==  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

==  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

==  Functions

We have already seen some "custom" functions in [ Advanced Styling
](../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

===  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)



= *book/basics/scripting/braces.md*

=  Braces, brackets and default

==  Square brackets

You may remember that square brackets convert everything inside to _content_ .

    
    
    #let v = [Some text, _markup_ and other #strong[functions]]
    #v

![Rendered image](typst-
img/5ba617daa8d4c166d96a0abbba02d6502fe7fde1ded460afa78682993295142d-1.svg)

We may use same for functions bodies:

    
    
    #let f(name) = [Hello, #name]
    #f[World] // also don't forget we can use it to pass content!

![Rendered image](typst-
img/4545deeee45655ee6666feb4773416cd075fe7522cbfd80d0847c615c6c5f30a-1.svg)

*Important:* It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

==  Braces

However, we often want to use code inside functions. That's when we use ` {}
` :

    
    
    #let f(name) = {
      // this is code mode
    
      // First part of our output
      "Hello, "
    
      // we check if name is empty, and if it is,
      // insert placeholder
      if name == "" {
          "anonym"
      } else {
          name
      }
    
      // finish sentence
      "!"
    }
    
    #f("")
    #f("Joe")
    #f("world")

![Rendered image](typst-
img/f2bc6aebef06f213c9a8e740266a96e424318d953c09cffba6c5811375e91395-1.svg)

==  Scopes

*This is a very important thing to remember* .

_You can't use variables outside of scopes they are defined (unless it is file
root, then you can import them)_ . _Set and show rules affect things in their
scope only._

    
    
    #{
      let a = 3;
    }
    // can't use "a" there.
    
    #[
      #show "true": "false"
    
      This is true.
    ]
    
    This is true.

![Rendered image](typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

==  Return

*Important* : by default braces return anything that "returns" into them.
For example,

    
    
    #let change_world() = {
      // some code there changing everything in the world
      str(4e7)
      // another code changing the world
    }
    
    #let g() = {
      "Hahaha, I will change the world now! "
      change_world()
      " So here is my long evil monologue..."
    }
    
    #g()

![Rendered image](typst-
img/160d9672bd7abc64ea61943d1bfcbd1b06dc70f87be5e5cf9c411fe4ee6d2a44-1.svg)

To avoid returning everything, return only what you want explicitly, otherwise
everything will be joined:

    
    
    #let f() = {
      "Some long text"
      // Crazy numbers
      "2e7"
      return none
    }
    
    // Returns nothing
    #f()

![Rendered image](typst-
img/14c935733a8c91165ee4ebe8246efb841207feeaa0309e36a1cde2888acffb10-1.svg)

==  Default values

What we made just now was inventing "default values".

They are very common in styling, so there is a special syntax for them:

    
    
    #let f(name: "anonym") = [Hello, #name!]
    
    #f()
    #f(name: "Joe")
    #f(name: "world")

![Rendered image](typst-
img/e9730d0d1f30ec9f2404179560ae4a4b19dd788b1afc2f6b956fb32268439cb6-1.svg)

You may have noticed that the argument became _named_ now. In Typst, named
argument is an argument _that has default value_ .



= *book/basics/scripting/tips.md*

=  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

==  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries *the order may
matter* , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

==  Check key is in dictionary

Use the keyword ` in  ` , like in ` Python  ` :

    
    
    #let dict = (a: 1, b: 2)
    
    #("a" in dict)
    // gives the same as
    #(dict.keys().contains("a"))

![Rendered image](typst-
img/c4ae77418e54911af371f203d2bd3d5badb7269496bb8f07a2e3010e15f18922-1.svg)

Note it works for lists too:

    
    
    #("a" in ("b", "c", "a"))
    #(("b", "c", "a").contains("a"))

![Rendered image](typst-
img/0fc3ff7d44bbb5bcacd38e921f199699d2ea43ce0a142e79f67314d4f24386a7-1.svg)



= *book/basics/scripting/conditions.md*

=  Conditions & loops

==  Conditions

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#conditionals) .

In Typst, you can use ` if-else  ` statements. This is especially useful
inside function bodies to vary behavior depending on arguments types or many
other things.

    
    
    #if 1 < 2 [
      This is shown
    ] else [
      This is not.
    ]

![Rendered image](typst-
img/2e914defa3353d6fd42ed58c37a97aedcc2237cfe20228f0cc0d223dfff4619a-1.svg)

Of course, ` else  ` is unnecessary:

    
    
    #let a = 3
    
    #if a < 4 {
      a = 5
    }
    
    #a

![Rendered image](typst-
img/a7264774be154606a44d829d31edae18bf686262ccea66de9ed97fa20c720bd8-1.svg)

You can also use ` else if  ` statement (known as ` elif  ` in Python):

    
    
    #let a = 5
    
    #if a < 4 {
      a = 5
    } else if a < 6 {
      a = -3
    }
    
    #a

![Rendered image](typst-
img/9f65678fc26af2d197d979e1b0a5295ed64037ee00c30fa28c9c417a2c7dc308-1.svg)

===  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

==  Loops

> See [ official documentation
> ](https://typst.app/docs/reference/scripting/#loops) .

There are two kinds of loops: ` while  ` and ` for  ` . While repeats body
while the condition is met:

    
    
    #let a = 3
    
    #while a < 100 {
        a *= 2
        str(a)
        " "
    }

![Rendered image](typst-
img/ece06c012663616cac05b0f365bd02ea5607dcddfaa0249963088ceff797c100-1.svg)

` for  ` iterates over all elements of sequence. The sequence may be an `
array  ` , ` string  ` or ` dictionary  ` ( ` for  ` iterates over its _key-
value pairs_ ).

    
    
    #for c in "ABC" [
      #c is a letter.
    ]

![Rendered image](typst-
img/9e70091e4c1f276d548f8200329298bf6b98946c331ca4630fec8313d5a91eff-1.svg)

To iterate to all numbers from ` a  ` to ` b  ` , use ` range(a, b+1)  ` :

    
    
    #let s = 0
    
    #for i in range(3, 6) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/1e3d95ee79d7bc6989e40ff1e27c0ef6e3b152a1e5f8a0df5b2819621e0e299f-1.svg)

Because range is end-exclusive this is equal to

    
    
    #let s = 0
    
    #for i in (3, 4, 5) {
        s += i
        [Number #i is added to sum. Now sum is #s.]
    }

![Rendered image](typst-
img/6158d29261339f8f285d592deff8992ca129ce32264abcdcf6734ac44cf558a4-1.svg)

    
    
    #let people = (Alice: 3, Bob: 5)
    
    #for (name, value) in people [
        #name has #value apples.
    ]

![Rendered image](typst-
img/50ff0963afe8c9ec5a0562d518431b63d5dd3810525f55f084f812452b11eb21-1.svg)

===  Break and continue

Inside loops can be used ` break  ` and ` continue  ` commands. ` break  `
breaks loop, jumping outside. ` continue  ` jumps to next loop iteration.

See the difference on these examples:

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // stop when there is space
        break
      }
    
      letter
    }

![Rendered image](typst-
img/a744551cab635d3ab70d9bf4258bb5fc26fe384f8e9f487ad0b8eee986ffe581-1.svg)

    
    
    #for letter in "abc nope" {
      if letter == " " {
        // skip the space
        continue
      }
    
      letter
    }

![Rendered image](typst-
img/bbb719820f986e52fbf64306536766ecbfd7264d29429a5c62d1bd648a4754c5-1.svg)



= *book/basics/scripting/types_2.md*

=  Types, part II

In Typst, most of things are *immutable* . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

==  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

===  Working with indices

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // take value at index 0
    #values.at(0) \
    // set value at 0 to 3
    #(values.at(0) = 3)
    // negative index => start from the back
    #values.at(-1) \
    // add index of something that is even
    #values.find(calc.even)

![Rendered image](typst-
img/0374c20b28fbf2b2d15bc32e5428f7f5121ea9d673d96de3274a0c6d988d5fb5-1.svg)

===  Iterating methods

    
    
    #let values = (1, 7, 4, -3, 2)
    
    // leave only what is odd
    #values.filter(calc.odd) \
    // create new list of absolute values of list values
    #values.map(calc.abs) \
    // reverse
    #values.rev() \
    // convert array of arrays to flat array
    #(1, (2, 3)).flatten() \
    // join array of string to string
    #(("A", "B", "C")
     .join(", ", last: " and "))

![Rendered image](typst-
img/684400186916f8f16a2d7edb151b7f5023c7e4c010b23a2c6566f0bd7a224061-1.svg)

===  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

===  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

==  Dictionaries ( ` dict  ` )

> [ Link to Reference
> ](https://typst.app/docs/reference/foundations/dictionary/) .

Dictionaries are objects that store a string "key" and a value, associated
with that key.

    
    
    #let dict = (
      name: "Typst",
      born: 2019,
    )
    
    #dict.name \
    #(dict.launch = 20)
    #dict.len() \
    #dict.keys() \
    #dict.values() \
    #dict.at("born") \
    #dict.insert("city", "Berlin ")
    #("name" in dict)

![Rendered image](typst-
img/638ada64eb36af0b1891def1b2c0a2cc97a14d87987df8c16f5f3872244553d6-1.svg)

===  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)



= *book/basics/scripting/index.md*

=  Scripting

*Typst* has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way



= *book/basics/scripting/types.md*

=  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

==  Content ( ` content  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/content/)
> .

We have already seen it. A type that represents what is displayed in document.

    
    
    #let c = [It is _content_!]
    
    // Check type of c
    #(type(c) == content)
    
    #c
    
    // repr gives an "inner representation" of value
    #repr(c)

![Rendered image](typst-
img/21fd80460de8e8a377a9ef2046a27232ad88924070509ccf8647c9135c9c2fe3-1.svg)

*Important:* It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

==  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

==  String ( ` str  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/str/) .

String contains only plain text and no formatting. Just some chars. That
allows us to work with chars:

    
    
    #let s = "Some large string. There could be escape sentences: \n,
     line breaks, and even unicode codes: \u{1251}"
    #s \
    #type(s) \
    `repr`: #repr(s)
    
    #let s = "another small string"
    #s.replace("a", sym.alpha) \
    #s.split(" ") // split by space

![Rendered image](typst-
img/b797f9c4a540fcf1429bec801d0b334e7d88dc9ccd10e3b7b859f451e269f30f-1.svg)

You can convert other types to their string representation using this type's
constructor (e.g. convert number to string):

    
    
    #str(5) // string, can be worked with as string

![Rendered image](typst-
img/ab4d4a5d93533525f7f9b2cc8378b79f1561904f3c5d5f6d2ec4bdc448669cb5-1.svg)

==  Boolean ( ` bool  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/bool/) .

true/false. Used in ` if  ` and many others

    
    
    #let b = false
    #b \
    #repr(b) \
    #(true and not true or true) = #((true and (not true)) or true) \
    #if (4 > 3) {
      "4 is more than 3"
    }

![Rendered image](typst-
img/e848d78e220ca8cf3b6c323a99d5d963e529aad36857f0e6753c56c02984a616-1.svg)

==  Integer ( ` int  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/int/) .

A whole number.

The number can also be specified as hexadecimal, octal, or binary by starting
it with a zero followed by either x, o, or b.

    
    
    #let n = 5
    #n \
    #(n += 1) \
    #n \
    #calc.pow(2, n) \
    #type(n) \
    #repr(n)

![Rendered image](typst-
img/6f1c9e02393e14aa23add33d0e6dc2b596ee97a0d425cd3edb3e2b912c6ef6b0-1.svg)

    
    
    #(1 + 2) \
    #(2 - 5) \
    #(3 + 4 < 8)

![Rendered image](typst-
img/e610f15659cb6b64c3516be48740b54e6caf3d933919004157ba64b757389ba5-1.svg)

    
    
    #0xff \
    #0o10 \
    #0b1001

![Rendered image](typst-
img/1446dba05ee6f8006884c280ff32e31ede8425d4847445e97cae5dfcde1efe7f-1.svg)

You can convert a value to an integer with this type's constructor (e.g.
convert string to int).

    
    
    #int(false) \
    #int(true) \
    #int(2.7) \
    #(int("27") + int("4"))

![Rendered image](typst-
img/b44779a87fd984d317ec4d1aed732c0ebdc6220fd4764e407f77fedd139c0d8c-1.svg)

==  Float ( ` float  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/float/) .

Works the same way as integer, but can store floating point numbers. However,
precision may be lost.

    
    
    #let n = 5.0
    
    // You can mix floats and integers, 
    // they will be implicitly converted
    #(n += 1) \
    #calc.pow(2, n) \
    #(0.2 + 0.1) \
    #type(n) 

![Rendered image](typst-
img/21cafe751ec803dd9598c871b283a29bc3c6b2e302f0f9bd78edc17330b45616-1.svg)

    
    
    #3.14 \
    #1e4 \
    #(10 / 4)

![Rendered image](typst-
img/05bd400096c1df5a954fda0897f3c1756c9f99f73503d32d992b3222667a45cd-1.svg)

You can convert a value to a float with this type's constructor (e.g. convert
string to float).

    
    
    #float(40%) \
    #float("2.7") \
    #float("1e5")

![Rendered image](typst-
img/f50a22cbea42fded97ab8340f0939e786e5c1cdb5ea531cd4b35b1f732947b7f-1.svg)



= *book/basics/scripting/arguments.md*

=  Advanced arguments

==  Spreading arguments from list

Spreading operator allows you to "unpack" the list of values into arguments of
function:

    
    
    #let func(a, b, c, d, e) = [#a #b #c #d #e]
    #func(..(([hi],) * 5))

![Rendered image](typst-
img/0586f1f7eb73effd507824b57f7282f12fe2612119d64413f72e6518aba01513-1.svg)

This may be super useful in tables:

    
    
    #let a = ("hi", "b", "c")
    
    #table(columns: 3,
      [test], [x], [hello],
      ..a
    )

![Rendered image](typst-
img/eb669f70df63815adcbe764fdb8635eecab33651c7eef55ea4de6cd63c96d9de-1.svg)

==  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

=  Managing arbitrary arguments

Typst allows taking as many arbitrary positional and key arguments as you
want.

In that case function is given special ` arguments  ` object that stores in it
positional and named arguments.

> Link to [ reference
> ](https://typst.app/docs/reference/foundations/arguments/)
    
    
    #let f(..args) = [
      #args.pos()\
      #args.named()
    ]
    
    #f(1, "a", width: 50%, block: false)

![Rendered image](typst-
img/2fc64c8521734ea689368ec83fe54025eb94b016a8ed1f6d6a9880ac6c94edf5-1.svg)

You can combine them with other arguments. Spreading operator will "eat" all
remaining arguments:

    
    
    #let format(title, ..authors) = {
      let by = authors
        .pos()
        .join(", ", last: " and ")
    
      [*#title* \ _Written by #by;_]
    }
    
    #format("ArtosFlow", "Jane", "Joe")

![Rendered image](typst-
img/4ba76c5176e0b93c6c2b03c38d55f88702546a5183717ed8c3567865c0d1bf5d-1.svg)

==  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO



= *book/basics/math/symbols.md*

=  Symbols

Multiletter words in math refer either to local variables, functions, text
operators, spacing or _special symbols_ . The latter are very important for
advanced math.

    
    
    $
    forall v, w in V, alpha in KK: alpha dot (v + w) = alpha v + alpha w
    $

![Rendered image](typst-
img/60a6e3e08582c87ec082b6714a45a90a914dd1299f788e2bb21b0cc5adc80e6a-1.svg)

You can write the same with unicode:

    
    
    $
    ∀ v, w ∈ V, α ∈ 𝕂: α ⋅ (v + w) = α v + α w
    $

![Rendered image](typst-
img/d37776c21d5c4d692e4ebbe7e5ce7e7cdf5e2c0777a88a47abe0c0c5992cf41a-1.svg)

==  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

===  General idea

Typst wants to define some "basic" symbols with small easy-to-remember words,
and build complex ones using combinations. For example,

    
    
    $
    // cont — contour
    integral, integral.cont, integral.double, integral.square, sum.integral\
    
    // lt — less than, gt — greater than
    lt, lt.circle, lt.eq, lt.not, lt.eq.not, lt.tri, lt.tri.eq, lt.tri.eq.not, gt, lt.gt.eq, lt.gt.not
    $

![Rendered image](typst-
img/a0ee196d2bf305ca6c2d812008f9955e5ae526de0b0ac0b83ca016a66bdc00f1-1.svg)

I highly recommend using WebApp/Typst LSP when writing math with lots of
complex symbols. That helps you to quickly choose the right symbol within all
combinations.

Sometimes the names are not obvious, for example, sometimes it is used prefix
` n-  ` instead of ` not  ` :

    
    
    $
    gt.nequiv, gt.napprox, gt.ntilde, gt.tilde.not
    $

![Rendered image](typst-
img/e4d0ef024efaf9f4334ebf04a2ac4e015fc5ec76617be8b6d7aad2f4429e3317-1.svg)

===  Common modifiers

  - ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)



= *book/basics/math/classes.md*

=  Classes

> See [ official documentation ](https://typst.app/docs/reference/math/class/)

Each math symbol has its own "class", the way it behaves. That's one of the
main reasons why they are layouted differently.

==  Classes

    
    
    $
    a b c\
    a class("normal", b) c\
    a class("punctuation", b) c\
    a class("opening", b) c\
    a lr(b c]) c\
    a lr(class("opening", b) c ]) c // notice it is moved vertically \
    a class("closing", b) c\
    a class("fence", b) c\
    a class("large", b) c\
    a class("relation", b) c\
    a class("unary", b) c\
    a class("binary", b) c\
    a class("vary", b) c\
    $

![Rendered image](typst-
img/5d4604274229b2f53ee04b88ff0e73d9aa8365643c5e60052fcca1298d4f5a23-1.svg)

==  Setting class for symbol

    
    
    Default:
    
    $square circle square$
    
    With `#h(0)`:
    
    $square #h(0pt) circle #h(0pt) square$
    
    With `math.class`:
    
    #show math.circle: math.class.with("normal")
    $square circle square$

![Rendered image](typst-
img/86a709c6189649b79005752253a842631eed4722b350e4197116e0be19094035-1.svg)



= *book/basics/math/operators.md*

=  Operators

> See [ reference ](https://typst.app/docs/reference/math/op/) .

There are lots of built-in "text operators" in Typst math. This is a symbol
that behaves very close to plain text. Nevertheless, it is different:

    
    
    $
    lim x_n, "lim" x_n, "lim"x_n
    $

![Rendered image](typst-
img/b195783135218e8117ac954790e7a108297d7a3e532136d851e2c397358509f0-1.svg)

==  Predefined operators

Here are all text operators Typst has built-in:

    
    
    $
    arccos, arcsin, arctan, arg, cos, cosh, cot, coth, csc,\
    csch, ctg, deg, det, dim, exp, gcd, hom, id, im, inf, ker,\
    lg, lim, liminf, limsup, ln, log, max, min, mod, Pr, sec,\
    sech, sin, sinc, sinh, sup, tan, tanh, tg "and" tr
    $

![Rendered image](typst-
img/8a14bfdd8bd657d613ccbcd3f77d68f31e6d73e509ba85dd8e6f5207d5c8c7e4-1.svg)

==  Creating custom operator

Of course, there always will be some text operators you will need that are not
in the list.

But don't worry, it is very easy to add your own:

    
    
    #let arcsinh = math.op("arcsinh")
    
    $
    arcsinh x
    $

![Rendered image](typst-
img/e4f5a9aa5dfd03914d26ad85ed73eff426d21badca21ea5a6e8de5032b2f29bb-1.svg)

===  Limits for operators

When creating operators (upright text with proper spacing), you can set limits
for _display mode_ at the same time:

    
    
    $
    op("liminf")_a, op("liminf", limits: #true)_a
    $

![Rendered image](typst-
img/9c3593b91bf3810a593b622e4972c5a87d637696f35850422f9232c74802a394-1.svg)

This is roughly equivalent to

    
    
    $
    limits(op("liminf"))_a
    $

![Rendered image](typst-
img/7aaabb25d8e73d54504aa3e99b9c8b341759f165923439447f4990871ec3943f-1.svg)

Everything can be combined to create new operators:

    
    
    #let liminf = math.op(math.underline(math.lim), limits: true)
    #let limsup = math.op(math.overline(math.lim), limits: true)
    #let integrate = math.op($integral dif x$)
    
    $
    liminf_(x->oo)\
    limsup_(x->oo)\
    integrate x^2
    $

![Rendered image](typst-
img/adf6ee9659a71ecefb64d09f5f27f01acdd193bc79c792abf95fc56821bca4cb-1.svg)



= *book/basics/math/alignment.md*

=  Alignment

==  General alignment

By default display math is center-aligned, but that can be set up with ` show
` rule:

    
    
    #show math.equation: set align(right)
    
    $
    (a + b)/2
    $

![Rendered image](typst-
img/bcd19808066d4eee09c984bf17077653b1c1bf25115c10a155611056a30e2cb6-1.svg)

Or using ` align  ` element:

    
    
    #align(left, block($ x = 5 $))

![Rendered image](typst-
img/4545bd54c4090d4c9599e639aa441b68eb214011861d9949652df140843af042-1.svg)

==  Alignment points

When equations include multiple alignment points (&), this creates blocks of
alternatingly _right-_ and _left-_ aligned columns.

In the example below, the expression ` (3x + y) / 7  ` is _right-aligned_ and
` =  9  ` is _left-aligned_ .

    
    
    $ (3x + y) / 7 &= 9 && "given" \
      3x + y &= 63 & "multiply by 7" \
      3x &= 63 - y && "subtract y" \
      x &= 21 - y/3 & "divide by 3" $

![Rendered image](typst-
img/bfb7a5df8873923079f45d12fa92204afeddecb15ec31d6b8624ac4610d29677-1.svg)

The word "given" is also left-aligned because ` && ` creates two alignment
points in a row, _alternating the alignment twice_ .

` & & ` and ` && ` behave exactly the same way. Meanwhile, "multiply by 7" is
left-aligned because just one ` & ` precedes it.

*Each alignment point simply alternates between right-aligned/left-aligned.*



= *book/basics/math/limits.md*

=  Setting limits

Sometimes we want to change how the default attaching should work.

==  Limits

For example, in many countries it is common to write definite integrals with
limits below and above. To set this, use ` limits  ` function:

    
    
    $
    integral_a^b\
    limits(integral)_a^b
    $

![Rendered image](typst-
img/ade8f85a6178d42d58769da477afa5349a3db9df3075a3d5f8e4a6b546c3d43e-1.svg)

You can set this by default using ` show  ` rule:

    
    
    #show math.integral: math.limits
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$

![Rendered image](typst-
img/e0011edccf76468c3d77a7502ce1dc001c82bfd9d590b258d8c8453d056bc966-1.svg)

==  Only display mode

Notice that this will also affect inline equations. To enable limits for
display math only, use ` limits(inline: false)  ` :

    
    
    #show math.integral: math.limits.with(inline: false)
    
    $
    integral_a^b
    $
    
    This is inline equation: $integral_a^b$.

![Rendered image](typst-
img/d37f1132cdf338670e131079a57ae724a7dfcb102f3125dad712173fbf115bcd-1.svg)

Of course, it is possible to move them back as bottom attachments:

    
    
    $
    sum_a^b, scripts(sum)_a^b
    $

![Rendered image](typst-
img/7134a72120f7217b1f11438e166fa7e53f3a9287fa4c9079019181a6e16affb8-1.svg)

==  Operations

The same scheme works for operations. By default, they are attached to the
bottom and top:

    
    
    $a =_"By lemme 1" b, a scripts(=)_+ b$

![Rendered image](typst-
img/98d790005c43aa666b392f8a35f1e9564ff315aaf9881ceb309e53bd5db542b1-1.svg)



= *book/basics/math/index.md*

=  Math

Math is a special environment that has special features related to... math.

==  Syntax

To start math environment, ` $  ` . The spacing around ` $  ` will make it
either _inline_ math (smaller, used in text) or _display_ math (used on math
equations on their own).

    
    
    // This is inline math
    Let $a$, $b$, and $c$ be the side
    lengths of right-angled triangle.
    Then, we know that:
    
    // This is display math
    $ a^2 + b^2 = c^2 $
    
    Prove by induction:
    
    // You can use new lines as spacing too!
    $
    sum_(k=1)^n k = (n(n+1)) / 2
    $

![Rendered image](typst-
img/068db3a521a38c3acede771ebb6342807cca4fd98baf5b2b508184a6854ea8ff-1.svg)

==  Math.equation

The element that math is displayed in is called ` math.equation  ` . You can
use it for set/show rules:

    
    
    #show math.equation: set text(red)
    
    $
    integral_0^oo (f(t) + g(t))/2
    $

![Rendered image](typst-
img/94e0532dd7224d08e966cb82834283efd8889d7f117b04116e721a788bfcc16c-1.svg)

Any symbol/command that is available in math, _is also available_ in code mode
using ` math.command  ` :

    
    
    #math.integral, #math.underbrace([a + b], [c])

![Rendered image](typst-
img/b4ca12d7f34ed342f3cb3fba2ee1f5b58faa8fceecb74671baacd9166fcbb5aa-1.svg)

==  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  - All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  - All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they *may be user-defined variables/functions* . If the command *isn't defined* , there will be *compilation error* . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  - To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  - You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

==  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

==  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

==  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)



= *book/basics/math/vec.md*

=  Vectors, matrices, semicolumn syntax

==  Vectors

> By vector we mean a column there.  
>  To write arrow notations for letters, use ` $  arrow  (  v  )  $  `  
>  I recommend to create shortcut for this, like ` #let  arr  =  math.arrow  `

To write columns, use ` vec  ` command:

    
    
    $
    vec(a, b, c) + vec(1, 2, 3) = vec(a + 1, b + 2, c + 3)
    $

![Rendered image](typst-
img/92aa72b3d4f797123f550cc8630b34e09176956c4b116cc0a4fe48d457e1ee0a-1.svg)

===  Delimiter

You can change parentheses around the column or even remove them:

    
    
    $
    vec(1, 2, 3, delim: "{") \
    vec(1, 2, 3, delim: bar.double) \
    vec(1, 2, 3, delim: #none)
    $

![Rendered image](typst-
img/efd7cc6c6abb317c316b746f7a286ab2f8b2a023fe19bf77c15638db9c6bed8f-1.svg)

===  Gap

You can change the size of gap between rows:

    
    
    $
    vec(a, b, c)
    vec(a, b, c, gap:#0em)
    vec(a, b, c, gap:#1em)
    $

![Rendered image](typst-
img/8977ff36f1f7a4b78c2fdbaef8764fec4b2cb42092f63b07176cca13707c0407-1.svg)

===  Making gap even

You can easily note that the gap isn't necessarily even or the same in
different vectors:

    
    
    $
    vec(a/b, a/b, a/b) = vec(1, 1, 1)
    $

![Rendered image](typst-
img/c3141fb95a4280df589e5e9fc0d605d59b16a8da6b4a01be532fab0bf04f6a00-1.svg)

That happens because ` gap  ` refers to _spacing between_ elements, not the
distance between their centers.

To fix this, you can use [ this snippet ](../../snippets/math/vecs.html) .

==  Matrix

> See [ official reference ](https://typst.app/docs/reference/math/mat/)

Matrix is very similar to ` vec  ` , but accepts rows, separated by ` ;  ` :

    
    
    $
    mat(
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10; // `;` in the end is optional
    )
    $

![Rendered image](typst-
img/ca1e7bdfe61f2ae541843aeff854d40882487bed8fd5b1e094852cf662a759f8-1.svg)

===  Delimiters and gaps

You can specify them the same way as for vectors.

Specify the arguments either before the content, or *after the semicolon* .
The code will panic if there is no semicolon!

    
    
    $
    mat(
        delim: "|",
        1, 2, ..., 10;
        2, 2, ..., 10;
        dots.v, dots.v, dots.down, dots.v;
        10, 10, ..., 10;
        gap: #0.3em
    )
    $

![Rendered image](typst-
img/8fd5effce0cef589ea8f7e7388cf221f1c8d7f0ac6c76d8d7d2fb14c4840bef7-1.svg)

==  Semicolon syntax

When you use semicolons, the arguments _between the semicolons_ are merged
into arrays. See yourself:

    
    
    #let fun(..args) = {
        args.pos()
    }
    
    $
    fun(1, 2;3, 4; 6, ; 8)
    $

![Rendered image](typst-
img/a589a9f51ffa925d9dce1da521c4d15373e236fd19db49317091d681c2fface0-1.svg)

If you miss some of elements, they will be replaced by ` none  ` -s.

You can mix semicolon syntax and named arguments, but be careful!

    
    
    #let fun(..args) = {
        repr(args.pos())
        repr(args.named())
    }
    
    $
    fun(1, 2; gap: #3em, 4)
    $

![Rendered image](typst-
img/7a3c90212650f7f7df0cb42177753236eddae675ac3220fbabd0f40e4af8b842-1.svg)

For example, this will not work:

    
    
    $
    //         ↓ there is no `;`, so it tries to add (gap:) to array
    mat(1, 2; 4, gap: #3em)
    $



= *book/basics/math/sizes.md*

=  Location and sizes

We talked already about display and inline math. They differ not only by
aligning and spacing, but also by size and style:

    
    
    Inline: $a/(b + 1/c), sum_(n=0)^3 x_n$
    
    $
    a/(b + 1/c), sum_(n=0)^3 x_n
    $

![Rendered image](typst-
img/7de20fcaee4fb6ea523b34bfe9b2be6b91cc6e6a5b46fab0eebe7f0155689f8e-1.svg)

The size and style of current environment is described by Math Size, see [
reference ](https://typst.app/docs/reference/math/sizes) .

There are for sizes:

  - Display math size ( ` display  ` ) 
  - Inline math size ( ` inline  ` ) 
  - Script math size ( ` script  ` ) 
  - Sub/super script math size ( ` sscript  ` ) 

Each time thing is used in fraction, script or exponent, it is moved several
"levels lowers", becoming smaller and more "crapping". ` sscript  ` isn't
reduced father:

    
    
    $
    "display:" 1/("inline:" a + 1/("script:" b + 1/("sscript:" c + 1/("sscript:" d + 1/("sscript:" e + 1/f)))))
    $

![Rendered image](typst-
img/9c8cbc46da7dc8eb9436c561107cbb97a836aaa7b120a9bc3f044dd648d702e1-1.svg)

==  Setting sizes manually

Just use the corresponding command:

    
    
    Inine: $sum_0^oo e^x^a$\
    Inline with limits: $limits(sum)_0^oo e^x^a$\
    Inline, but like true display: $display(sum_0^oo e^x^a)$

![Rendered image](typst-
img/0d16a9d157c9689f4b3cce434ebf89d9a18d67b4916ac0ebfbce3daccb94e709-1.svg)



= *book/basics/math/grouping.md*

=  Grouping

Every grouping can be (currently) done by parenthesis. So the parenthesis may
be both "real" parenthesis and grouping ones.

For example, these parentheses specify nominator of the fraction:

    
    
    $ (a^2 + b^2)/2 $

![Rendered image](typst-
img/6f4767b2aee69b5c3a22df5f394105df9f19c9762678d02b297c4d4f8d1cf6ad-1.svg)

==  Left-right

> See [ official documentation ](https://typst.app/docs/reference/math/lr) .

If there are two matching braces of any kind, they will be wrapped as ` lr  `
(left-right) group.

    
    
    $
    {[((a + b)/2) + 1]_0}
    $

![Rendered image](typst-
img/a4137ff5d1f577cc816776cb4279cce4cd964601c20eb244d12e170deecd5d6a-1.svg)

You can disable it by escaping.

You can also match braces of any kind by using ` lr  ` directly:

    
    
    $
    lr([a/2, b)) \
    lr([a/2, b), size: #150%)
    $

![Rendered image](typst-
img/fb81420a901d8b570ef03d1f50c83f7b8c483c9366222156ea193ac2976b63ed-1.svg)

==  Fences

Fences _are not matched automatically_ because of large amount of false-
positives.

You can use ` abs  ` or ` norm  ` to match them:

    
    
    $
    abs(a + b), norm(a + b), floor(a + b), ceil(a + b), round(a + b)
    $

![Rendered image](typst-
img/fd8454b2a97d649525827367f459f3163d830b5db9181178304d5fd2b44fcca1-1.svg)



= *book/basics/states/states.md*

=  States

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Before we start something practical, it is important to understand states in
general.

Here is a good explanation of why do we _need_ them: [ Official Reference
about states ](https://typst.app/docs/reference/meta/state/) . It is highly
recommended to read it first.

So instead of

    
    
    #let x = 0
    #let compute(expr) = {
      // eval evaluates string as Typst code
      // to calculate new x value
      x = eval(
        expr.replace("x", str(x))
      )
      [New value is #x.]
    }
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")

*THIS DOES NOT COMPILE:* Variables from outside the function are read-only
and cannot be modified

Instead, you should write

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      // updates x current state with this function
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      // and displays it
      New value is #context s.get().
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #compute("x * 2") \
    #compute("x - 5")
    
    The computations will be made _in order_ they are _located_ in the document. So if you create computations first, but put them in the document later... See yourself:
    
    #let more = [
      #compute("x * 2") \
      #compute("x - 5")
    ]
    
    #compute("10") \
    #compute("x + 3") \
    #more

![Rendered image](typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

==  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

==  Operations with states

===  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

===  Update

Updating is _a content_ that is an instruction. That instruction tells
compiler that in this place of document the state _should be updated_ .

    
    
    #let x = state("x", 0)
    #context x.get() \
    #let _ = x.update(3)
    // nothing happens, we don't put `update` into the document flow
    #context x.get()
    
    #repr(x.update(3)) // this is how that content looks \
    
    #context x.update(3)
    #context x.get() // Finally!

![Rendered image](typst-
img/3732a9c7bca8c4faedf9b024e09e647a65222c8244e9f3235a6057dfebc0a511-1.svg)

Here we can see one of _important` context  ` traits _ : it "sees" states from
outside, but can't see how they change inside it:

    
    
    #let x = state("x", 0)
    
    #context {
      x.update(3)
      str(x.get())
    }

![Rendered image](typst-
img/78e500b80cb85e086a81302e2ce3dad88cb4304d4685b88e3f59111bc71f6748-1.svg)

===  ID collision

_TLDR;*Never allow colliding states.* _

States are described by their id-s, if they are the same, the code will break.

So, if you write functions or loops that are used several times, _be careful_
!

    
    
    #let f(x) = {
      // return new state…
      // …but their id-s are the same!
      // so it will always be the same state!
      let y = state("x", 0)
      y.update(y => y + x)
      context y.get()
    }
    
    #let a = f(2)
    #let b = f(3)
    
    #a, #b \
    #raw(repr(a) + "\n" + repr(b))

![Rendered image](typst-
img/31a3e88747ed09ae6078bd3caf986f0e6ba744e055d0889d92bfa23941e7e451-1.svg)

However, this _may seem_ okay:

    
    
    // locations in code are different!
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y

![Rendered image](typst-
img/1901e1449942d821c66f53bd6bc5fda10d63591aa45346fdf88bcbc3f2ab3425-1.svg)

But in fact, it _isn't_ :

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #context [#x.get(); #y.get()]
    
    #x.update(3)
    
    #context [#x.get(); #y.get()]

![Rendered image](typst-
img/9185a298f9bcf8c519fa85481b9272e6ef3a00c117a0904d0509920a6abef8b2-1.svg)



= *book/basics/states/metadata.md*

=  Metadata

Metadata is invisible content that can be extracted using query or other
content. This may be very useful with ` typst query  ` to pass values to
external tools.

    
    
    // Put metadata somewhere.
    #metadata("This is a note") <note>
    
    // And find it from anywhere else.
    #context {
      query(<note>).first().value
    }

![Rendered image](typst-
img/ef1c7d9faf74901f6c5266d48ae006167003a22754408a70ae9f9d1088b5fe24-1.svg)



= *book/basics/states/query.md*

=  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

==  Time travel

    
    
    #let s = state("x", 0)
    #let compute(expr) = [
      #s.update(x =>
        eval(expr.replace("x", str(x)))
      )
      New value is #s.display().
    ]
    
    Value at `<here>` is
    #context s.at(
      query(<here>)
        .first()
        .location()
    )
    
    #compute("10") \
    #compute("x + 3") \
    _Here._ <here> \
    #compute("x * 2") \
    #compute("x - 5")

![Rendered image](typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

==  Getting nearest chapter

    
    
    #set page(header: context {
      let elems = query(
        selector(heading).before(here()),
        here(),
      )
      let academy = smallcaps[
        Typst Academy
      ]
      if elems == () {
        align(right, academy)
      } else {
        let body = elems.last().body
        academy + h(1fr) + emph(body)
      }
    })
    
    = Introduction
    #lorem(23)
    
    = Background
    #lorem(30)
    
    = Analysis
    #lorem(15)

![Rendered image](typst-
img/b4d0562911dd308b0d9cbc36ad20ba6ed91fc3c3da5b6259eb6721f3a53a18e3-1.svg)



= *book/basics/states/index.md*

=  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!



= *book/basics/states/counters.md*

=  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

==  States methods

Counters are states, so they can do all things states can do.

    
    
    #set heading(numbering: "1.")
    
    = Background
    #counter(heading).update(3)
    #counter(heading).update(n => n * 2)
    
    == Analysis
    Current heading number: #counter(heading).display().

![Rendered image](typst-
img/c57c9907a5f238f0b5eee74f8c23c57a5e2d5b0c9cbf7ebd1befdfcbd33289df-1.svg)

    
    
    #let mine = counter("mycounter")
    #mine.display()
    
    #mine.step()
    #mine.display()
    
    #mine.update(c => c * 3)
    #mine.display()

![Rendered image](typst-
img/876103777c9564f0bb524f83a988a6d444c4e889baed31ee960548d90f3233e2-1.svg)

==  Displaying counters

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    = Background
    The current value is:
    #counter(heading).display()
    
    Or in roman numerals:
    #counter(heading).display("I")

![Rendered image](typst-
img/1ac65f4be42131b3cca1d7c56c6c60c3932a703e5e499c1c5cb874458028abea-1.svg)

Counters also support displaying _both current and final values_ out-of-box:

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    Some text here.
    
    #counter(heading).display(both: true) \
    #counter(heading).display("1 of 1", both: true) \
    #counter(heading).display(
      (num, max) => [#num of #max],
       both: true
    )
    
    = Background
    The current value is: #counter(heading).display()

![Rendered image](typst-
img/af9d0da905bbb2215461b07b39653ef3890ff11a364afe018dae4ce4216f4961-1.svg)

==  Step

That's quite easy, for counters you can increment value using ` step  ` . It
works the same way as ` update  ` .

    
    
    #set heading(numbering: "1.")
    
    = Introduction
    #counter(heading).step()
    
    = Analysis
    Let's skip 3.1.
    #counter(heading).step(level: 2)
    
    == Analysis
    At #counter(heading).display().

![Rendered image](typst-
img/12446a2258e9862d8df8b6b250ff14efbb9c35da165a2a04e8c4aa12c9b68cdf-1.svg)

==  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      _Theorem #c.display():_
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)



= *book/basics/must_know/tables.md*

=  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

==  Basic snippets

===  Spreading

Spreading operators (see [ there ](../scripting/arguments.html) ) may be
especially useful for the tables:

    
    
    #set text(size: 9pt)
    
    #let yield_cells(n) = {
      for i in range(0, n + 1) {
        for j in range(0, n + 1) {
          let product = if i * j != 0 {
            // math is used for the better look 
            if j <= i { $#{ j * i }$ } 
            else {
              // upper part of the table
              text(gray.darken(50%), str(i * j))
            }
          } else {
            if i == j {
              // the top right corner 
              $times$
            } else {
              // on of them is zero, we are at top/left
              $#{i + j}$
            }
          }
          // this is an array, for loops merge them together
          // into one large array of cells
          (
            table.cell(
              fill: if i == j and j == 0 { orange } // top right corner
              else if i == j { yellow } // the diagonal
              else if i * j == 0 { blue.lighten(50%) }, // multipliers
              product,),
          )
        }
      }
    }
    
    #let n = 10
    #table(
      columns: (0.6cm,) * (n + 1), rows: (0.6cm,) * (n + 1), align: center + horizon, inset: 3pt, ..yield_cells(n),
    )

![Rendered image](typst-
img/0640c1d0e5f79bdcb5e60f7675ff1b1eb18810078f5bbbdfaf1c5648b987706e-1.svg)

===  Highlighting table row

    
    
    #table(
      columns: 2,
      fill: (x, y) => if y == 2 { highlight.fill },
      [A], [B],
      [C], [D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/4ff8cbb75f85dbab08a336be31115bcb4cb8ca505799641534d937d444e88082-1.svg)

For individual cells, use

    
    
    #table(
      columns: 2,
      [A], [B],
      table.cell(fill: yellow)[C], table.cell(fill: yellow)[D],
      [E], [F],
      [G], [H],
    )

![Rendered image](typst-
img/07676a86d4643ff83988c0907aa17995b3d1f8fa7b5be4f11959551afd674bc9-1.svg)

===  Splitting tables

Tables are split between pages automatically.

    
    
    #set page(height: 8em)
    #(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-1.svg)

![Rendered image](typst-
img/34794c27fefc5c307a1dfdc9ad7958c1dcca0ff8fb64962047051c6a216e0ff7-2.svg)

However, if you want to make it breakable inside other element, you'll have to
make that element breakable too:

    
    
    #set page(height: 8em)
    // Without this, the table fails to split upon several pages
    #show figure: set block(breakable: true)
    #figure(
    table(
      columns: 5,
      [Aligner], [publication], [Indexing], [Pairwise alignment], [Max. read length  (bp)],
      [BWA], [2009], [BWT-FM], [Semi-Global], [125],
      [Bowtie], [2009], [BWT-FM], [HD], [76],
      [CloudBurst], [2009], [Hashing], [Landau-Vishkin], [36],
      [GNUMAP], [2009], [Hashing], [NW], [36]
      )
    )

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-1.svg)

![Rendered image](typst-
img/5be04bf8770a33256599791fb50751bcb24fa5108c13d0e5e2807b675fed00fb-2.svg)



= *book/basics/must_know/project_struct.md*

=  Project structure

==  Large document

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

===  Template

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

===  Main

*This file should be compiled* to get the whole compiled document.

    
    
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

===  Chapter

    
    
    // chapter_1.typ
    
    #import "../template.typ": *
    
    That's just content with _styling_ and blocks:
    
    #infoblock[Some information].
    
    // just any content you want to include in the document

==  Notes

Note that modules in Typst can see only what they created themselves or
imported. Anything else is invisible for them. That's why you need `
template.typ  ` file to define all functions within.

That means chapters _don't see each other either_ , only what is in the
template.

==  Cyclic imports

*Important:* Typst _forbids_ cyclic imports. That means you can't import `
chapter_1  ` from ` chapter_2  ` and ` chapter_2  ` from ` chapter_1  ` at the
same time!

But the good news is that you can always create some other file to import
variable from.



= *book/basics/must_know/box_block.md*

=  Boxing & Blocking

    
    
    You can use boxes to wrap anything
    into text: #box(image("../tiger.jpg", height: 2em)).
    
    Blocks will always be "separate paragraphs".
    They will not fit into a text: #block(image("../tiger.jpg", height: 2em))

![Rendered image](typst-
img/8e3bd89485b00259666bd636cf28586f92db9c3c3922f0adcdad765ee66a06b1-1.svg)

Both have similar useful properties:

    
    
    #box(stroke: red, inset: 1em)[Box text]
    #block(stroke: red, inset: 1em)[Block text]

![Rendered image](typst-
img/9e3562619cb8a31b3d2311f53c3815a214f081e033a564e63dc003dfbc50d68d-1.svg)

==  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

==  Figures

For the purposes of adding a _figure_ to your document, use ` figure  `
function. Don't try to use boxes or blocks there.

Figures are that things like centered images (probably with captions), tables,
even code.

    
    
    @tiger shows a tiger. Tigers
    are animals.
    
    #figure(
      image("../tiger.jpg", width: 80%),
      caption: [A tiger.],
    ) <tiger>

![Rendered image](typst-
img/09a8b5b3c3bfffd81be7f34c31cc93ca5f8341b2594d022b2b92ac285aeb959d-1.svg)

In fact, you can put there anything you want:

    
    
    They told me to write a letter to you. Here it is:
    
    #figure(
      text(size: 5em)[I],
      caption: [I'm cool, right?],
    ) 

![Rendered image](typst-
img/e009534c4572064346490dfac659ff94a5a11d7f46af7a2b46c2136d206088c6-1.svg)



= *book/basics/must_know/index.md*

=  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.



= *book/basics/must_know/place.md*

=  Placing, Moving, Scale & Hide

This is *a very important section* if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

=  Place

_Ignore layout_ , just put some object somehow relative to parent and current
position. The placed object _will not_ affect layouting

> Link to [ reference ](https://typst.app/docs/reference/layout/place/)
    
    
    #set page(height: 60pt)
    Hello, world!
    
    #place(
      top + right, // place at the page right and top
      square(
        width: 20pt,
        stroke: 2pt + blue
      ),
    )

![Rendered image](typst-
img/e0d4c250d0f288e1a110ebddcb06149e0acd11b626a0ccb0ca9feb1c1d7be359-1.svg)

===  Basic floating with place

    
    
    #set page(height: 150pt)
    #let note(where, body) = place(
      center + where,
      float: true,
      clearance: 6pt,
      rect(body),
    )
    
    #lorem(10)
    #note(bottom)[Bottom 1]
    #note(bottom)[Bottom 2]
    #lorem(40)
    #note(top)[Top]
    #lorem(10)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-1.svg)

![Rendered image](typst-
img/b770cfef024690b5fc7ab82458797d6cfab0c5cc8f52078ecf2d61be17c13acc-2.svg)

===  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

=  Move

> Link to [ reference ](https://typst.app/docs/reference/layout/move/)
    
    
    #rect(inset: 0pt, move(
      dx: 6pt, dy: 6pt,
      rect(
        inset: 8pt,
        fill: white,
        stroke: black,
        [Abra cadabra]
      )
    ))

![Rendered image](typst-
img/3292aebf7b633a2d9574027f50867d723d80850e046a101b9df5ab5143eb8a8d-1.svg)

=  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

=  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)



= *book/basics/must_know/spacing.md*

=  Using spacing

Most time you will pass spacing into functions. There are special function
fields that take only _size_ . They are usually called like ` width, length,
in(out)set, spacing  ` and so on.

Like in CSS, one of the ways to set up spacing in Typst is setting margins and
padding of elements. However, you can also insert spacing directly using
functions ` h  ` (horizontal spacing) and ` v  ` (vertical spacing).

> Links to reference: [ h ](https://typst.app/docs/reference/layout/h/) , [ v
> ](https://typst.app/docs/reference/layout/v/) .
    
    
    Horizontal #h(1cm) spacing.
    #v(1cm)
    And some vertical too!

![Rendered image](typst-
img/47b3ea7d16575780e489790177df9a624ad3c6c669594baa4127c1db516ebc94-1.svg)

=  Absolute length units

> Link to [ reference ](https://typst.app/docs/reference/layout/length/)

Absolute length (aka just "length") units are not affected by outer content
and size of parent.

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Points], rect(width: 72pt),
      [Millimeters], rect(width: 25.4mm),
      [Centimeters], rect(width: 2.54cm),
      [Inches], rect(width: 1in),
    )

![Rendered image](typst-
img/073ad26fe313743ab62dca82f30208dbf2d57ff354d5c37f0b6d4c063dc37d76-1.svg)

==  Relative to current font size

` 1em = 1 current font size  ` :

    
    
    #set rect(height: 1em)
    #table(
      columns: 2,
      [Centimeters], rect(width: 2.54cm),
      [Relative to font size], rect(width: 6.5em)
    )
    
    Double font size: #box(stroke: red, baseline: 40%, height: 2em, width: 2em)

![Rendered image](typst-
img/7d62c9e2540f8bce40d8a3fc65a2779b161eb6b5b5682cf87247fee7f14145c2-1.svg)

It is a very convenient unit, so it is used a lot in Typst.

==  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

=  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

=  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

=  Fractional length

> Link to [ reference ](https://typst.app/docs/reference/layout/fraction/)

Single fraction length just takes _maximum size possible_ to fill the parent:

    
    
    Left #h(1fr) Right
    
    #rect(height: 1em)[
      #h(1fr)
    ]

![Rendered image](typst-
img/b9c91f53b684699fff70c6889c8a47fccc57c5c540d7629b93c51a797eb2ef3c-1.svg)

There are not many places you can use fractions, mainly those are ` h  ` and `
v  ` .

==  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

==  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

