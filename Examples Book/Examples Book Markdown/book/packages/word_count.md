#  Counting words

##  Wordometr

    
    
    #import "@preview/wordometer:0.1.0": word-count, total-words
    
    #show: word-count
    
    In this document, there are #total-words words all up.
    
    #word-count(total => [
      The number of words in this block is #total.words
      and there are #total.characters letters.
    ])

![Rendered image](typst-
img/a36d12209002f93aeaf23d4b21fcd4dcb1f9326f6ad358ad01558f09dede39c2-1.svg)

###  Excluding elements

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

