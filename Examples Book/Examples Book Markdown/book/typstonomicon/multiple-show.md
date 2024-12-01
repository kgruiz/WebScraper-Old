##  Multiple show rules

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

