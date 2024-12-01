#  Typst Examples Book

This book provides an extended _tutorial_ and lots of [ Typst
](https://github.com/typst/typst) snippets that can help you to write better
Typst code.

This is an unofficial book. Some snippets & suggestions here may be outdated
or useless (please let me know if you find some).

However, _all of them should compile on last version of Typst 1  _ .

**CAUTION:** the book is (probably forever) a **WIP** , so don't rely on it.

If you like it, consider [ giving a star on GitHub
](https://github.com/sitandr/typst-examples-book) !

This will help me to stay motivated and continue working on this book.

##  Navigation

The book consists of several chapters, each with its own goal:

  1. [ Typst Basics ](./basics/index.html)
  2. [ Typst Snippets ](./snippets/index.html)
  3. [ Typst Packages ](./packages/index.html)
  4. [ Typstonomicon ](./typstonomicon/index.html)

##  Contributions

Any contributions are very welcome! If you have a good code snippet that you
want to share, feel free to submit an issue with snippet or make a PR in the [
repository ](https://github.com/sitandr/typst-examples-book) .

I will especially appreciate submissions of active community members and
compiler contributors!

However, I will also really appreciate feedback from beginners to make the
book as comprehensible as possible!

##  Acknowledgements

Thanks to everyone in the community who published their code snippets!

If someone doesn't like their code and/or name being published, please contact
me.

1

When a new version launches, it may take some time to update the book, feel
free to tag me to speed up the process.

#  Typst Basics

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

#  Tutorial by Examples

The first section of Typst Basics is very similar to [ Official Tutorial
](https://typst.app/docs/tutorial/) , with more specialized examples and less
words. It is _highly recommended to read the official tutorial anyway_ .

#  Markup language

##  Starting

    
    
    Starting typing in Typst is easy.
    You don't need packages or other weird things for most of things.
    
    Blank line will move text to a new paragraph.
    
    Btw, you can use any language and unicode symbols
    without any problems as long as the font supports it: ßçœ̃ɛ̃ø∀αβёыა😆…

![Rendered image](basics/tutorial/typst-
img/ee9f64251c99c7aeaaf6fa1d5bc7e907c2d51a34aa38126544d515ca197ca2a8-1.svg)

##  Markup

    
    
    = Markup
    
    This was a heading. Number of `=` in front of name corresponds to heading level.
    
    == Second-level heading
    
    Okay, let's move to _emphasis_ and *bold* text.
    
    Markup syntax is generally similar to
    `AsciiDoc` (this was `raw` for monospace text!)

![Rendered image](basics/tutorial/typst-
img/fa8b95f9b15083387a29c11d17efca9873b8e778643b1b5079aa137891d01c8d-1.svg)

##  New lines & Escaping

    
    
    You can break \
    line anywhere you \
    want using "\\" symbol.
    
    Also you can use that symbol to
    escape \_all the symbols you want\_,
    if you don't want it to be interpreted as markup
    or other special symbols.

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
img/a481d12b3ed0bbe2d9db6cc4b4a1237cba9936de83333254dfce8702832db125-1.svg)

##  Smart quotes

    
    
    == What else?
    
    There are not much things in basic "markup" syntax,
    but we will see much more interesting things very soon!
    I hope you noticed auto-matched "smart quotes" there.

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
img/ad4e424e067a4362e9f145c0c4ba4b7c1b65e17e7d0e7631b6836841607ef85e-1.svg)

**Notice:**

    
    
    Typst numbered lists differ from markdown-like syntax for lists. If you write them by hand, numbering is preserved:
    
    1. Apple
    1. Orange
    1. Peach

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
img/12cc318c8438cd8e91706013bbd53fee5ee004620a63348cfe2d7dcc3b8a19d4-1.svg)

#  Functions

##  Functions

    
    
    Okay, let's now move to more complex things.
    
    First of all, there are *lots of magic* in Typst.
    And it major part of it is called "scripting".
    
    To go to scripting mode, type `#` and *some function name*
    after that. We will start with _something dull_:
    
    #lorem(50)
    
    _That *function* just generated 50 "Lorem Ipsum" words!_

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
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

![Rendered image](basics/tutorial/typst-
img/4686939b6d0932f1ebebac4111d8f02919dbc16446def7855c521d8dbf293689-1.svg)

#  Basic styling

##  ` Set  ` rule

    
    
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

##  A bit about length units

    
    
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

##  Setting something else

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

##  Opinionated defaults

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

##  Numbering

    
    
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

#  Advanced styling

##  The ` show  ` rule

    
    
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

##  Now a bit more serious

    
    
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

##  About syntax

    
    
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

##  Blocks

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

##  Selector

    
    
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

##  Custom formatting

    
    
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

##  Setting spacing

TODO: explain block spacing for common elements

##  Formatting to get an "article look"

    
    
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

#  Templates

##  Templates

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

###  Passing arguments

    
    
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

#  Must-know

This section contains things, that are not general enough to be part of
"tutorial", but still are very important to know for proper typesetting.

Feel free to skip through things you are sure you will not use.

#  Boxing & Blocking

    
    
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

##  ` rect  `

There is also ` rect  ` that works like ` block  ` , but has useful default
inset and stroke:

    
    
    #rect[Block text]

![Rendered image](basics/must_know/typst-
img/c778d1e94a3663a4f258985368c02e294a1333554c550b6cfe0465275a2eef0f-1.svg)

##  Figures

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

#  Using spacing

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

#  Absolute length units

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

##  Relative to current font size

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

##  Combined

    
    
    Combined: #box(rect(height: 5pt + 1em))
    
    #(5pt + 1em).abs
    #(5pt + 1em).em

![Rendered image](basics/must_know/typst-
img/c8a0cae6047f35c85c41ac44ff2a6b0d28a28d0e097ca61b367202f9a361136e-1.svg)

#  Ratio length

> Link to [ reference ](https://typst.app/docs/reference/layout/ratio/)

` 1% = 1% from parent size in that dimension  `

    
    
    This line width is 50% of available page size (without margins):
    
    #line(length: 50%)
    
    This line width is 50% of the box width: #box(stroke: red, width: 4em, inset: (y: 0.5em), line(length: 50%))

![Rendered image](basics/must_know/typst-
img/d478cb8be0a049380479b634cae709dc1e1ed406d323ecb1edbca1e582d7eafe-1.svg)

#  Relative length

> Link to [ reference ](https://typst.app/docs/reference/layout/relative/)

You can _combine_ absolute and ratio lengths into _relative length_ :

    
    
    #rect(width: 100% - 50pt)
    
    #(100% - 50pt).length \
    #(100% - 50pt).ratio

![Rendered image](basics/must_know/typst-
img/6b72620a1972e758e55ef1ecf49d3e843095037399ed4dd2dfcd262ebbbe803f-1.svg)

#  Fractional length

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

##  Several fractions

If you use several fractions inside one parent, they will take all remaining
space _proportional to their number_ :

    
    
    Left #h(1fr) Left-ish #h(2fr) Right

![Rendered image](basics/must_know/typst-
img/45182cbcecf395256d133af78fccacd9d48e29073672317744cb17340d0bafd8-1.svg)

##  Nested layout

Remember that fractions work in parent only, don't _rely on them in nested
layout_ :

    
    
    Word: #h(1fr) #box(height: 1em, stroke: red)[
      #h(2fr)
    ]

![Rendered image](basics/must_know/typst-
img/0c7ed8b25ea7e39a0907b1105b82027a0fb8b921b28978f30692f6c693bea5f7-1.svg)

#  Placing, Moving, Scale & Hide

This is **a very important section** if you want to do arbitrary things with
layout, create custom elements and hacking a way around current Typst
limitations.

TODO: WIP, add text and better examples

#  Place

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

###  Basic floating with place

    
    
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

###  dx, dy

Manually change position by ` (dx, dy)  ` relative to intended.

    
    
    #set page(height: 100pt)
    #for i in range(16) {
      let amount = i * 4pt
      place(center, dx: amount - 32pt, dy: amount)[A]
    }

![Rendered image](basics/must_know/typst-
img/12464f1a2cfe81fb04623033345f3f88ff598af5dc77de378b9d7cf88fc1d5b3-1.svg)

#  Move

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

#  Scale

Scale content _without affecting the layout_ .

> Link to [ reference ](https://typst.app/docs/reference/layout/scale/)
    
    
    #scale(x: -100%)[This is mirrored.]

![Rendered image](basics/must_know/typst-
img/401c8cd6f306771a3b12432c3c51e097a3ec1d12656c131c0043a12c4c1c3a0e-1.svg)

    
    
    A#box(scale(75%)[A])A \
    B#box(scale(75%, origin: bottom + left)[B])B

![Rendered image](basics/must_know/typst-
img/204b55690645eb6cc623c8d2d74b5521d72e4ba38d58ea40ea5e2d4354a01836-1.svg)

#  Hide

Don't show content, but leave empty space there.

> Link to [ reference ](https://typst.app/docs/reference/layout/hide/)
    
    
    Hello Jane \
    #hide[Hello] Joe

![Rendered image](basics/must_know/typst-
img/610672d5e43baa3ce94fe61f8d6dd0307e405c785639359c6a9e84bdd66884ad-1.svg)

#  Tables and grids

While tables are not that necessary to know if you don't plan to use them in
your documents, grids may be very useful for _document layout_ . We will use
both of them them in the book later.

Let's not bother with copying examples from official documentation. Just make
sure to skim through it, okay?

##  Basic snippets

###  Spreading

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

###  Highlighting table row

    
    
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

###  Splitting tables

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

![Rendered image](basics/must_know/typst-
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

#  Scripting

**Typst** has a complete interpreted language inside. One of key aspects of
working with your document in a nicer way

#  Basics

##  Variables I

Let's start with _variables_ .

The concept is very simple, just some value you can reuse:

    
    
    #let author = "John Doe"
    
    This is a book by #author. #author is a great guy.
    
    #quote(block: true, attribution: author)[
      \<Some quote\>
    ]

![Rendered image](basics/scripting/typst-
img/c311c1612cafa802f16f0d4ca2d6f1ecca59f545ed1f6ee99d3c4ae06ee2bff4-1.svg)

##  Variables II

You can store _any_ Typst value in variable:

    
    
    #let block_text = block(stroke: red, inset: 1em)[Text]
    
    #block_text
    
    #figure(caption: "The block", block_text)

![Rendered image](basics/scripting/typst-
img/c6290389652d1771d5149c9393af8eb32bd37e4b2bfb2c11764f9f22c294f84b-1.svg)

##  Functions

We have already seen some "custom" functions in [ Advanced Styling
](basics/scripting/../tutorial/advanced_styling.html) chapter.

Functions are values that take some values and output some values:

    
    
    // This is a syntax that we have seen earlier
    #let f = (name) => "Hello, " + name
    
    #f("world!")

![Rendered image](basics/scripting/typst-
img/23fba8e9081a8b32b16d7deb54018bb73a8ac910adbfb1a0ca577eb3520a73b4-1.svg)

###  Alternative syntax

You can write the same shorter:

    
    
    // The following syntaxes are equivalent
    #let f = (name) => "Hello, " + name
    #let f(name) = "Hello, " + name
    
    #f("world!")

![Rendered image](basics/scripting/typst-
img/e6e4bd179a38f1b3af96f3e7c6308be6f9494f41f43daa26ebabf7a77fc54780-1.svg)

#  Braces, brackets and default

##  Square brackets

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

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! Sp be careful when passing and storing
content in variables.

##  Braces

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

##  Scopes

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

![Rendered image](basics/scripting/typst-
img/c25d356831eeea19bb243b87c0f32d062c7086a55b4ee432e41b388d626f875b-1.svg)

##  Return

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

##  Default values

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

#  Types, part I

Each value in Typst has a type. You don't have to specify it, but it is
important.

##  Content ( ` content  ` )

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

**Important:** It is very hard to convert _content_ to _plain text_ , as
_content_ may contain _anything_ ! So be careful when passing and storing
content in variables.

##  None ( ` none  ` )

Nothing. Also known as ` null  ` in other languages. It isn't displayed,
converts to empty content.

    
    
    #none
    #repr(none)

![Rendered image](basics/scripting/typst-
img/c4100c1d1df8fc0a51bd99945d9bac3c5aa67de19b8f872fd33fd9068bb2507b-1.svg)

##  String ( ` str  ` )

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

##  Boolean ( ` bool  ` )

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

##  Integer ( ` int  ` )

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

##  Float ( ` float  ` )

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

#  Types, part II

In Typst, most of things are **immutable** . You can't change content, you can
just create new using this one (for example, using addition).

Immutability is very important for Typst since it tries to be _as pure
language as possible_ . Functions do nothing outside of returning some value.

However, purity is partly "broken" by these types. They are _super-useful_ and
not adding them would make Typst much pain.

However, using them adds complexity.

##  Arrays ( ` array  ` )

> [ Link to Reference ](https://typst.app/docs/reference/foundations/array/) .

Mutable object that stores data with their indices.

###  Working with indices

    
    
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

###  Iterating methods

    
    
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

###  List operations

    
    
    // sum of lists:
    #((1, 2, 3) + (4, 5, 6))
    
    // list product:
    #((1, 2, 3) * 4)

![Rendered image](basics/scripting/typst-
img/abe2d311638b351e0938be0e432f10265ca81a69a9ed7d2e6f88f656c60dfc65-1.svg)

###  Empty list

    
    
    #() \ // this is an empty list
    #(1,) \  // this is a list with one element
    BAD: #(1) // this is just an element, not a list!

![Rendered image](basics/scripting/typst-
img/da4f77f8784462ca5c4f73862e58420695916064d56921e4adef7a7e37d5a532-1.svg)

##  Dictionaries ( ` dict  ` )

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

###  Empty dictionary

    
    
    This is an empty list: #() \
    This is an empty dict: #(:)

![Rendered image](basics/scripting/typst-
img/6ef41801d46f0b7256bb6913482fde054c811a1850ecae3a446660eb6d1c8850-1.svg)

#  Conditions & loops

##  Conditions

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

###  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section
](basics/scripting/./types.html#boolean-bool) :

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](basics/scripting/typst-
img/21d3a48404d4e0c59bc0fccb114fdeac7384189db0020247796f44b0e9a7c362-1.svg)

##  Loops

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

###  Break and continue

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

#  Advanced arguments

##  Spreading arguments from list

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

##  Key arguments

The same idea works with key arguments:

    
    
    #let text-params = (fill: blue, size: 0.8em)
    
    Some #text(..text-params)[text].

![Rendered image](basics/scripting/typst-
img/e56483e8f4285f8fed8cd6867e720b9a1c9f62ef0bffea28d124159f8a61648d-1.svg)

#  Managing arbitrary arguments

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

##  Optional argument

_Currently the only way in Typst to create optional positional arguments is
using` arguments  ` object: _

TODO

#  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

##  Equality

Equality doesn't mean objects are really the same, like in many other objects:

    
    
    #let a = 7
    #let b = 7.0
    #(a == b)
    #(type(a) == type(b))

![Rendered image](basics/scripting/typst-
img/3632e0202f7aae6ed6e2958b7bc6360a6cba31aa3d1aaf169a133ef987c839de-1.svg)

That may be less obvious for dictionaries. In dictionaries **the order may
matter** , so equality doesn't mean they behave exactly the same way:

    
    
    #let a = (x: 1, y: 2)
    #let b = (y: 2, x: 1)
    #(a == b)
    #(a.pairs() == b.pairs())

![Rendered image](basics/scripting/typst-
img/f7277d7cc170d7cc2ae1de5436b534fb113cda82d8e7829a0fc92e950b78238f-1.svg)

##  Check key is in dictionary

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

#  States & Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Typst tries to be a _pure language_ as much as possible.

That means, a function can't change anything outside of it. That also means,
if you call function, the result should be always the same.

Unfortunately, our world (and therefore our documents) isn't pure. If you
create a heading №2, you want the next number to be three.

That section will guide you to using impure Typst. Don't overuse it, as this
knowledge comes close to the Dark Arts of Typst!

#  States

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

![Rendered image](basics/states/typst-
img/9a88397d1a9b5a44b1a3a218894595121bd4c5ec875df2b960638f2925060334-1.svg)

##  Context magic

So what does this magic ` context s.get()  ` mean?

> [ Context in Reference ](https://typst.app/docs/reference/context/)

In short, it specifies what part of your code (or markup) can _depend on
states outside_ . This context-expression is packed then as one object, and it
is evaluated on layout stage.

That means it is impossible to look from "normal" code at whatever is inside
the ` context  ` . This is a black box that would be known _only after putting
it into the document_ .

We will discuss ` context  ` features later.

##  Operations with states

###  Creating new state

    
    
    #let x = state("state-id")
    #let y = state("state-id", 2)
    
    #x, #y
    
    State is #context x.get() \ // the same as
    #context [State is #y.get()] \ // the same as
    #context {"State is" + str(y.get())}

![Rendered image](basics/states/typst-
img/4a52375bdeea2b7ca31dc51740563d01b3678f817dd6bc8c349d0714c2ac503f-1.svg)

###  Update

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

###  ID collision

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

#  Counters

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

Counters are special states that _count_ elements of some type. As with
states, you can create your own with identifier strings.

_Important:_ to initiate counters of elements, you need to _set numbering for
them_ .

##  States methods

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

##  Displaying counters

    
    
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

##  Step

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

##  You can use counters in your functions:

    
    
    #let c = counter("theorem")
    #let theorem(it) = block[
      #c.step()
      *Theorem #c.display():*
      #it
    ]
    
    #theorem[$1 = 1$]
    #theorem[$2 < 3$]

![Rendered image](basics/states/typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)

#  Measure, Layout

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

##  Style & Measure

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

#  Layout

Layout is similar to ` measure  ` , but it returns current scope **parent
size** .

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

![Rendered image](basics/typst-
img/93167dc0b22b02fe27aa92c6b03c2281665b4352624364a19c63f61a488aa75a-1.svg)

#  Query

This section is outdated. It may be still useful, but it is strongly
recommended to study new context system (using the reference).

> Link [ there ](https://typst.app/docs/reference/meta/query/)

Query is a thing that allows you getting location by _selector_ (this is the
same thing we used in show rules).

That enables "time travel", getting information about document from its parts
and so on. _That is a way to violate Typst's purity._

It is currently one of the _the darkest magics currently existing in Typst_ .
It gives you great powers, but with great power comes great responsibility.

##  Time travel

    
    
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

![Rendered image](basics/states/typst-
img/130940aa5ae2ceb3364ef655c84cf8e7d2178210851b8fb20e6c0c3345c3ace7-1.svg)

##  Getting nearest chapter

    
    
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

#  Metadata

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

#  Math

Math is a special environment that has special features related to... math.

##  Syntax

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

##  Math.equation

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

##  Letters and commands

Typst aims to have as simple and effective syntax for math as possible. That
means no special symbols, just using commands.

To make it short, Typst uses several simple rules:

  * All single-letter words _turn into variables_ . That includes any _unicode symbols_ too! 

  * All multi-letter words _turn into commands_ . They may be built-in commands (available with math.something outside of math environment). Or they **may be user-defined variables/functions** . If the command **isn't defined** , there will be **compilation error** . 

If you use kebab-case or snake_case for variables you want to use in math, you
will have to refer to them as #snake-case-variable.

  * To write simple text, use quotes: 
    
        $a "equals to" 2$

![Rendered image](basics/math/typst-
img/811f30ede68d08bec254f184c1be319958c3e11f9f9d58c40b2f460bba037e3d-1.svg)

Spacing matters there!

    
        $a "is" 2$, $a"is"2$

![Rendered image](basics/math/typst-
img/9cc2d263c76646c623e1e6b73756e1fe1e2c56d7fe0324ee945652107e6456ba-1.svg)

  * You can turn it into multi-letter variables using ` italic  ` : 
    
        $(italic("mass") v^2)/2$

![Rendered image](basics/math/typst-
img/141d8a3b9beb3559387411170f7378078c80cb2ff80d8d5f5345c3231f55df9c-1.svg)

Commands see [ there ](https://typst.app/docs/reference/math/#definitions) (go
to the links to see the commands).

All symbols see [ there ](https://typst.app/docs/reference/symbols/sym/) .

##  Multiline equations

To create multiline _display equation_ , use the same symbol as in markup
mode: ` \  ` :

    
    
    $
    a = b\
    a = c
    $

![Rendered image](basics/math/typst-
img/2f16d9e64e38ff22ca27a09b0d8eaef1b020e4eccd7d2ce1380e10a0efcea163-1.svg)

##  Escaping

Any symbol that is used may be escaped with ` \  ` , like in markup mode. For
example, you can disable fraction:

    
    
    $
    a  / b \
    a \/ b
    $

![Rendered image](basics/math/typst-
img/e7931e55a2772ee992446af8506d8d25b96167e3bb71d5c63ed8ca156530f2d9-1.svg)

The same way it works with any other syntax.

##  Wrapping inline math

Sometimes, when you write large math, it may be too close to text (especially
for some long letter tails).

    
    
    #lorem(17) $display(1)/display(1+x^n)$ #lorem(20)

![Rendered image](basics/math/typst-
img/a9cce2b851a01939a0abfc02e8cd994d20c465d2800cf64c5c6051ead5bc4e9a-1.svg)

You may easily increase the distance it by wrapping into box:

    
    
    #lorem(17) #box($display(1)/display(1+x^n)$, inset: 0.2em) #lorem(20)

![Rendered image](basics/math/typst-
img/ee9fc5a3ec529a9f3e811a70724c1585c294d82454c22ee9343235556f572792-1.svg)

#  Symbols

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

##  Symbols naming

> See all available symbols list [ there
> ](https://typst.app/docs/reference/symbols/sym/) .

###  General idea

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

###  Common modifiers

  * ` .b, .t, .l, .r  ` : bottom, top, left, right. Change direction of symbol. 
    
        $arrow.b, triangle.r, angle.l$

![Rendered image](basics/math/typst-
img/8ab0fa590b7a39023b1467e7a376a4810f997f720dd5d221ad83d7e741943b55-1.svg)

