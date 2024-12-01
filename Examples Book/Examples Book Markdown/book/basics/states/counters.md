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

##  Displaying counters

    
    
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

![Rendered image](typst-
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

![Rendered image](typst-
img/0f178f614e49a7400d646926705364a92ca3d4d888423b2693f071f83ce09e7d-1.svg)

