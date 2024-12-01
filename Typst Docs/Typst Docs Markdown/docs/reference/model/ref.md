  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Model ](/docs/reference/model/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/model/ref/)

#  ` ref ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A reference to a label or bibliography.

Produces a textual reference to a label. For example, a reference to a heading
will yield an appropriate string such as "Section 1" for a reference to the
first heading. The references are also links to the respective element.
Reference syntax can also be used to [ cite ](/docs/reference/model/cite/
"cite") from a bibliography.

Referenceable elements include [ headings ](/docs/reference/model/heading/) ,
[ figures ](/docs/reference/model/figure/) , [ equations
](/docs/reference/math/equation/) , and [ footnotes
](/docs/reference/model/footnote/) . To create a custom referenceable element
like a theorem, you can create a figure of a custom [ ` kind `
](/docs/reference/model/figure/#parameters-kind) and write a show rule for it.
In the future, there might be a more direct way to define a custom
referenceable element.

If you just want to link to a labelled element and not get an automatic
textual reference, consider using the [ ` link ` ](/docs/reference/model/link/
"`link`") function instead.

##  Example

    
    
    #set heading(numbering: "1.")
    #set math.equation(numbering: "(1)")
    
    = Introduction <intro>
    Recent developments in
    typesetting software have
    rekindled hope in previously
    frustrated researchers. @distress
    As shown in @results, we ...
    
    = Results <results>
    We discuss our approach in
    comparison with others.
    
    == Performance <perf>
    @slow demonstrates what slow
    software looks like.
    $ T(n) = O(2^n) $ <slow>
    
    #bibliography("works.bib")
    

![Preview](/assets/docs/bzf3klNJ674BqVarCEGU8wAAAAAAAAAA.png)

##  Syntax

This function also has dedicated syntax: A reference to a label can be created
by typing an ` @ ` followed by the name of the label (e.g. ` = Introduction
<intro> ` can be referenced by typing ` @intro  ` ).

To customize the supplement, add content in square brackets after the
reference: ` @intro  [  Chapter  ]  ` .

##  Customization

If you write a show rule for references, you can access the referenced element
through the ` element ` field of the reference. The ` element ` may be ` none
` even if it exists if Typst hasn't discovered it yet, so you always need to
handle that case in your code.

    
    
    #set heading(numbering: "1.")
    #set math.equation(numbering: "(1)")
    
    #show ref: it => {
      let eq = math.equation
      let el = it.element
      if el != none and el.func() == eq {
        // Override equation references.
        link(el.location(),numbering(
          el.numbering,
          ..counter(eq).at(el.location())
        ))
      } else {
        // Other references as usual.
        it
      }
    }
    
    = Beginnings <beginning>
    In @beginning we prove @pythagoras.
    $ a^2 + b^2 = c^2 $ <pythagoras>
    

![Preview](/assets/docs/_2kRnAjhpZZ-kvJsytflygAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

ref  (

[ label ](/docs/reference/foundations/label/) ,  supplement  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ content
](/docs/reference/foundations/content/) [ function
](/docs/reference/foundations/function/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` target `

[ label ](/docs/reference/foundations/label/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The target label that should be referenced.

Can be a label that is defined in the document or an entry from the [ `
bibliography ` ](/docs/reference/model/bibliography/ "`bibliography`") .

###  ` supplement `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ content
](/docs/reference/foundations/content/) or  [ function
](/docs/reference/foundations/function/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

A supplement for the reference.

For references to headings or figures, this is added before the referenced
number. For citations, this can be used to add a page number.

If a function is specified, it is passed the referenced element and should
return content.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set heading(numbering: "1.")
    #set ref(supplement: it => {
      if it.func() == heading {
        "Chapter"
      } else {
        "Thing"
      }
    })
    
    = Introduction <intro>
    In @intro, we see how to turn
    Sections into Chapters. And
    in @intro[Part], it is done
    manually.
    

![Preview](/assets/docs/fh477CUxS1KmPvq1dqsQ5QAAAAAAAAAA.png)

[ ![â](/assets/icons/16-arrow-right.svg) Quote  Previous page
](/docs/reference/model/quote/) [ ![â](/assets/icons/16-arrow-right.svg)
Strong Emphasis  Next page  ](/docs/reference/model/strong/)

