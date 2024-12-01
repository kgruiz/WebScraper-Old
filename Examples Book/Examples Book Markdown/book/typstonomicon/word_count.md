#  Word count

This chapter is deprecated now. It will be removed soon.

##  Recommended solution

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

##  Just count _all_ words in document

    
    
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

##  Count only some elements, ignore others

    
    
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

