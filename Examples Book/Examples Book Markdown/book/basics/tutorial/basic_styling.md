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

![Rendered image](typst-
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

![Rendered image](typst-
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

![Rendered image](typst-
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

![Rendered image](typst-
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

![Rendered image](typst-
img/39fb958032888b1e41da849152fed716b6f590eed3ea975b051ab786fac4ce5c-1.svg)

Of course, there are lots of other cool properties that can be _set_ , so feel
free to dive into [ Official Reference ](https://typst.app/docs/reference/)
and explore them!

And now we are moving into something much more interesting…

