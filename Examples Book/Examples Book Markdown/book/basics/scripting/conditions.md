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

###  Booleans

` if, else if, else  ` accept _only boolean_ values as a switch. You can
combine booleans as described in [ types section ](./types.html#boolean-bool)
:

    
    
    #let a = 5
    
    #if (a > 1 and a <= 4) or a == 5 [
        `a` matches the condition
    ]

![Rendered image](typst-
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

