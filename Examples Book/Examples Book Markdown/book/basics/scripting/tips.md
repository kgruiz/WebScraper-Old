#  Tips

There are lots of elements in Typst scripting that are not obvious, but
important. All the book is designated to show them, but some of them

##  Equality

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

##  Check key is in dictionary

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

