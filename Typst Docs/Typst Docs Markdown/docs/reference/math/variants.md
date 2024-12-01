  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Math ](/docs/reference/math/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Variants ](/docs/reference/math/variants)

#  Variants

Alternate typefaces within formulas.

These functions are distinct from the [ ` text ` ](/docs/reference/text/text/
"`text`") function because math fonts contain multiple variants of each
letter.

##  Functions

###  ` serif `

Serif (roman) font style in math.

This is already the default.

math  .  serif  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

###  ` sans `

Sans-serif font style in math.

math  .  sans  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ sans(A B C) $
    

![Preview](/assets/docs/QH7JeXflCs-wCjP8nkBWrQAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

###  ` frak `

Fraktur font style in math.

math  .  frak  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ frak(P) $
    

![Preview](/assets/docs/e8XkJAdgWXZDqbWs94GeeQAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

###  ` mono `

Monospace font style in math.

math  .  mono  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ mono(x + y = z) $
    

![Preview](/assets/docs/VdkE7dQPvzJTe7BxDZHcnwAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

###  ` bb `

Blackboard bold (double-struck) font style in math.

For uppercase latin letters, blackboard bold is additionally available through
[ symbols ](/docs/reference/symbols/sym/) of the form ` NN ` and ` RR ` .

math  .  bb  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    $ bb(b) $
    $ bb(N) = NN $
    $ f: NN -> RR $
    

![Preview](/assets/docs/7qs4sC1Ha0vO_Ei_dnjHuQAAAAAAAAAA.png)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

###  ` cal `

Calligraphic font style in math.

math  .  cal  (

[ content ](/docs/reference/foundations/content/)

)  -> [ content ](/docs/reference/foundations/content/)

    
    
    Let $cal(P)$ be the set of ...
    

![Preview](/assets/docs/kqxr3_NhGcBq3QZhkIfIjwAAAAAAAAAA.png)

This corresponds both to LaTeX's ` \mathcal ` and ` \mathscr ` as both of
these styles share the same Unicode codepoints. Switching between the styles
is thus only possible if supported by the font via [ font features
](/docs/reference/text/text/#parameters-features) .

For the default math font, the roundhand style is available through the ` ss01
` feature. Therefore, you could define your own version of ` \mathscr ` like
this:

    
    
    #let scr(it) = text(
      features: ("ss01",),
      box($cal(it)$),
    )
    
    We establish $cal(P) != scr(P)$.
    

![Preview](/assets/docs/PLEOQqYY9qiWLwCVv8j_HAAAAAAAAAAA.png)

(The box is not conceptually necessary, but unfortunately currently needed due
to limitations in Typst's text style handling in math.)

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The content to style.

[ ![â](/assets/icons/16-arrow-right.svg) Under/Over  Previous page
](/docs/reference/math/underover/) [ ![â](/assets/icons/16-arrow-right.svg)
Vector  Next page  ](/docs/reference/math/vec/)

