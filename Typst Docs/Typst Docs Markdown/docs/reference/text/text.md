  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/text/)

#  ` text ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Customizes the look and layout of text in a variety of ways.

This function is used frequently, both with set rules and directly. While the
set rule is often the simpler choice, calling the ` text ` function directly
can be useful when passing text as an argument to another function.

##  Example

    
    
    #set text(18pt)
    With a set rule.
    
    #emph(text(blue)[
      With a function call.
    ])
    

![Preview](/assets/docs/TE1TKvqGw3ajR6jn3phXugAAAAAAAAAA.png)

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

text  (

font  :  [ str ](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) ,  fallback  :  [ bool
](/docs/reference/foundations/bool/) ,  style  :  [ str
](/docs/reference/foundations/str/) ,  weight  :  [ int
](/docs/reference/foundations/int/) [ str ](/docs/reference/foundations/str/)
,  stretch  :  [ ratio ](/docs/reference/layout/ratio/) ,  size  :  [ length
](/docs/reference/layout/length/) ,  fill  :  [ color
](/docs/reference/visualize/color/) [ gradient
](/docs/reference/visualize/gradient/) [ pattern
](/docs/reference/visualize/pattern/) ,  stroke  :  [ none
](/docs/reference/foundations/none/) [ length
](/docs/reference/layout/length/) [ color ](/docs/reference/visualize/color/)
[ gradient ](/docs/reference/visualize/gradient/) [ stroke
](/docs/reference/visualize/stroke/) [ pattern
](/docs/reference/visualize/pattern/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  tracking  :  [ length
](/docs/reference/layout/length/) ,  spacing  :  [ relative
](/docs/reference/layout/relative/) ,  cjk-latin-spacing  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) ,  baseline  :  [ length
](/docs/reference/layout/length/) ,  overhang  :  [ bool
](/docs/reference/foundations/bool/) ,  top-edge  :  [ length
](/docs/reference/layout/length/) [ str ](/docs/reference/foundations/str/) ,
bottom-edge  :  [ length ](/docs/reference/layout/length/) [ str
](/docs/reference/foundations/str/) ,  lang  :  [ str
](/docs/reference/foundations/str/) ,  region  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
,  script  :  [ auto ](/docs/reference/foundations/auto/) [ str
](/docs/reference/foundations/str/) ,  dir  :  [ auto
](/docs/reference/foundations/auto/) [ direction
](/docs/reference/layout/direction/) ,  hyphenate  :  [ auto
](/docs/reference/foundations/auto/) [ bool
](/docs/reference/foundations/bool/) ,  costs  :  [ dictionary
](/docs/reference/foundations/dictionary/) ,  kerning  :  [ bool
](/docs/reference/foundations/bool/) ,  alternates  :  [ bool
](/docs/reference/foundations/bool/) ,  stylistic-set  :  [ none
](/docs/reference/foundations/none/) [ int ](/docs/reference/foundations/int/)
[ array ](/docs/reference/foundations/array/) ,  ligatures  :  [ bool
](/docs/reference/foundations/bool/) ,  discretionary-ligatures  :  [ bool
](/docs/reference/foundations/bool/) ,  historical-ligatures  :  [ bool
](/docs/reference/foundations/bool/) ,  number-type  :  [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
,  number-width  :  [ auto ](/docs/reference/foundations/auto/) [ str
](/docs/reference/foundations/str/) ,  slashed-zero  :  [ bool
](/docs/reference/foundations/bool/) ,  fractions  :  [ bool
](/docs/reference/foundations/bool/) ,  features  :  [ array
](/docs/reference/foundations/array/) [ dictionary
](/docs/reference/foundations/dictionary/) ,  [ content
](/docs/reference/foundations/content/) ,  [ str
](/docs/reference/foundations/str/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` font `

[ str ](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

A font family name or priority list of font family names.

When processing text, Typst tries all specified font families in order until
it finds a font that has the necessary glyphs. In the example below, the font
` Inria Serif ` is preferred, but since it does not contain Arabic glyphs, the
arabic text uses ` Noto Sans Arabic ` instead.

The collection of available fonts differs by platform:

  * In the web app, you can see the list of available fonts by clicking on the "Ag" button. You can provide additional fonts by uploading ` .ttf ` or ` .otf ` files into your project. They will be discovered automatically. The priority is: project fonts > server fonts. 

  * Locally, Typst uses your installed system fonts or embedded fonts in the CLI, which are ` Libertinus Serif ` , ` New Computer Modern ` , ` New Computer Modern Math ` , and ` DejaVu Sans Mono ` . In addition, you can use the ` --font-path ` argument or ` TYPST_FONT_PATHS ` environment variable to add directories that should be scanned for fonts. The priority is: ` --font-paths ` > system fonts > embedded fonts. Run ` typst fonts ` to see the fonts that Typst has discovered on your system. Note that you can pass the ` --ignore-system-fonts ` parameter to the CLI to ensure Typst won't search for system fonts. 

Default: ` "libertinus serif"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "PT Sans")
    This is sans-serif.
    
    #set text(font: (
      "Inria Serif",
      "Noto Sans Arabic",
    ))
    
    This is Latin. \
    ÙØ°Ø§ Ø¹Ø±Ø¨Ù.
    

![Preview](/assets/docs/yZSlTN4UXKYq5EjwCcVgvwAAAAAAAAAA.png)

###  ` fallback `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to allow last resort font fallback when the primary font list contains
no match. This lets Typst search through all available fonts for the most
similar one that has the necessary glyphs.

_Note:_ Currently, there are no warnings when fallback is disabled and no
glyphs are found. Instead, your text shows up in the form of "tofus": Small
boxes that indicate the lack of an appropriate glyph. In the future, you will
be able to instruct Typst to issue warnings so you know something is up.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "Inria Serif")
    ÙØ°Ø§ Ø¹Ø±Ø¨Ù
    
    #set text(fallback: false)
    ÙØ°Ø§ Ø¹Ø±Ø¨Ù
    

![Preview](/assets/docs/sa8VqsYbdClSlqi08qJyhAAAAAAAAAAA.png)

###  ` style `

[ str ](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The desired font style.

When an italic style is requested and only an oblique one is available, it is
used. Similarly, the other way around, an italic style can stand in for an
oblique one. When neither an italic nor an oblique style is available, Typst
selects the normal style. Since most fonts are only available either in an
italic or oblique style, the difference between italic and oblique style is
rarely observable.

If you want to emphasize your text, you should do so using the [ emph
](/docs/reference/model/emph/ "emph") function instead. This makes it easy to
adapt the style later if you change your mind about how to signify the
emphasis.

Variant  |  Details   
---|---  
` "  normal  " ` |  The default, typically upright style.   
` "  italic  " ` |  A cursive style with custom letterform.   
` "  oblique  " ` |  Just a slanted version of the normal style.   
  
Default: ` "normal"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #text(font: "Libertinus Serif", style: "italic")[Italic]
    #text(font: "DejaVu Sans", style: "oblique")[Oblique]
    

![Preview](/assets/docs/S5xaZcVoGLtnT_0XwbPSUQAAAAAAAAAA.png)

###  ` weight `

[ int ](/docs/reference/foundations/int/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The desired thickness of the font's glyphs. Accepts an integer between ` 100
` and ` 900  ` or one of the predefined weight names. When the desired weight
is not available, Typst selects the font from the family that is closest in
weight.

If you want to strongly emphasize your text, you should do so using the [
strong ](/docs/reference/model/strong/ "strong") function instead. This makes
it easy to adapt the style later if you change your mind about how to signify
the strong emphasis.

Variant  |  Details   
---|---  
` "  thin  " ` |  Thin weight (100).   
` "  extralight  " ` |  Extra light weight (200).   
` "  light  " ` |  Light weight (300).   
` "  regular  " ` |  Regular weight (400).   
` "  medium  " ` |  Medium weight (500).   
` "  semibold  " ` |  Semibold weight (600).   
` "  bold  " ` |  Bold weight (700).   
` "  extrabold  " ` |  Extrabold weight (800).   
` "  black  " ` |  Black weight (900).   
  
Default: ` "regular"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "IBM Plex Sans")
    
    #text(weight: "light")[Light] \
    #text(weight: "regular")[Regular] \
    #text(weight: "medium")[Medium] \
    #text(weight: 500)[Medium] \
    #text(weight: "bold")[Bold]
    

![Preview](/assets/docs/HLYJEJyYVhBAwk1NcGJZjQAAAAAAAAAA.png)

###  ` stretch `

[ ratio ](/docs/reference/layout/ratio/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The desired width of the glyphs. Accepts a ratio between ` 50%  ` and ` 200%
` . When the desired width is not available, Typst selects the font from the
family that is closest in stretch. This will only stretch the text if a
condensed or expanded version of the font is available.

If you want to adjust the amount of space between characters instead of
stretching the glyphs itself, use the [ ` tracking `
](/docs/reference/text/text/#parameters-tracking) property instead.

Default: ` 100%  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #text(stretch: 75%)[Condensed] \
    #text(stretch: 100%)[Normal]
    

![Preview](/assets/docs/QhcCPECtjtdl-HaT2kdIoQAAAAAAAAAA.png)

###  ` size `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The size of the glyphs. This value forms the basis of the ` em ` unit: ` 1em
` is equivalent to the font size.

You can also give the font size itself in ` em ` units. Then, it is relative
to the previous font size.

Default: ` 11pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(size: 20pt)
    very #text(1.5em)[big] text
    

![Preview](/assets/docs/blheA65DgOU1lkslOoHidgAAAAAAAAAA.png)

###  ` fill `

[ color ](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ pattern
](/docs/reference/visualize/pattern/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The glyph fill paint.

Default: ` luma  (  0%  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(fill: red)
    This text is red.
    

![Preview](/assets/docs/hjdTrz3B1HnAtRXCRTTtGAAAAAAAAAAA.png)

###  ` stroke `

[ none ](/docs/reference/foundations/none/) or  [ length
](/docs/reference/layout/length/) or  [ color
](/docs/reference/visualize/color/) or  [ gradient
](/docs/reference/visualize/gradient/) or  [ stroke
](/docs/reference/visualize/stroke/) or  [ pattern
](/docs/reference/visualize/pattern/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

How to stroke the text.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #text(stroke: 0.5pt + red)[Stroked]
    

![Preview](/assets/docs/9XI8EQ1M6rOusSDRRIbaPQAAAAAAAAAA.png)

###  ` tracking `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The amount of space that should be added between characters.

Default: ` 0pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(tracking: 1.5pt)
    Distant text.
    

![Preview](/assets/docs/_W5ZMMvgiXlv5B8vI6sbcQAAAAAAAAAA.png)

###  ` spacing `

[ relative ](/docs/reference/layout/relative/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The amount of space between words.

Can be given as an absolute length, but also relative to the width of the
space character in the font.

If you want to adjust the amount of space between characters rather than
words, use the [ ` tracking ` ](/docs/reference/text/text/#parameters-
tracking) property instead.

Default: ` 100%  +  0pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(spacing: 200%)
    Text with distant words.
    

![Preview](/assets/docs/NLatl7xe_PftXpK8eI1WSgAAAAAAAAAA.png)

###  ` cjk-latin-spacing `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to automatically insert spacing between CJK and Latin characters.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(cjk-latin-spacing: auto)
    ç¬¬4ç« ä»ç»äºåºæ¬çAPIã
    
    #set text(cjk-latin-spacing: none)
    ç¬¬4ç« ä»ç»äºåºæ¬çAPIã
    

![Preview](/assets/docs/VxUeM1bvsLzygleocZmQUAAAAAAAAAAA.png)

###  ` baseline `

[ length ](/docs/reference/layout/length/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

An amount to shift the text baseline by.

Default: ` 0pt  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    A #text(baseline: 3pt)[lowered]
    word.
    

![Preview](/assets/docs/Kc1E9Ts9m1i30dvtf5ymQgAAAAAAAAAA.png)

###  ` overhang `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether certain glyphs can hang over into the margin in justified text. This
can make justification visually more pleasing.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set par(justify: true)
    This justified text has a hyphen in
    the paragraph's first line. Hanging
    the hyphen slightly into the margin
    results in a clearer paragraph edge.
    
    #set text(overhang: false)
    This justified text has a hyphen in
    the paragraph's first line. Hanging
    the hyphen slightly into the margin
    results in a clearer paragraph edge.
    

![Preview](/assets/docs/MnBRs6VvAtjUYVDK-btjfgAAAAAAAAAA.png)

###  ` top-edge `

[ length ](/docs/reference/layout/length/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The top end of the conceptual frame around the text used for layout and
positioning. This affects the size of containers that hold text.

Variant  |  Details   
---|---  
` "  ascender  " ` |  The font's ascender, which typically exceeds the height of all glyphs.   
` "  cap-height  " ` |  The approximate height of uppercase letters.   
` "  x-height  " ` |  The approximate height of non-ascending lowercase letters.   
` "  baseline  " ` |  The baseline on which the letters rest.   
` "  bounds  " ` |  The top edge of the glyph's bounding box.   
  
Default: ` "cap-height"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set rect(inset: 0pt)
    #set text(size: 20pt)
    
    #set text(top-edge: "ascender")
    #rect(fill: aqua)[Typst]
    
    #set text(top-edge: "cap-height")
    #rect(fill: aqua)[Typst]
    

![Preview](/assets/docs/LDeMc2Iiqb_9L3aj1lNrpgAAAAAAAAAA.png)

###  ` bottom-edge `

[ length ](/docs/reference/layout/length/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The bottom end of the conceptual frame around the text used for layout and
positioning. This affects the size of containers that hold text.

Variant  |  Details   
---|---  
` "  baseline  " ` |  The baseline on which the letters rest.   
` "  descender  " ` |  The font's descender, which typically exceeds the depth of all glyphs.   
` "  bounds  " ` |  The bottom edge of the glyph's bounding box.   
  
Default: ` "baseline"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set rect(inset: 0pt)
    #set text(size: 20pt)
    
    #set text(bottom-edge: "baseline")
    #rect(fill: aqua)[Typst]
    
    #set text(bottom-edge: "descender")
    #rect(fill: aqua)[Typst]
    

![Preview](/assets/docs/l4WLB64gFfplM-bDPX7pEQAAAAAAAAAA.png)

###  ` lang `

[ str ](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

An [ ISO 639-1/2/3 language code. ](https://en.wikipedia.org/wiki/ISO_639)

Setting the correct language affects various parts of Typst:

  * The text processing pipeline can make more informed choices. 
  * Hyphenation will use the correct patterns for the language. 
  * [ Smart quotes ](/docs/reference/text/smartquote/) turns into the correct quotes for the language. 
  * And all other things which are language-aware. 

Default: ` "en"  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(lang: "de")
    #outline()
    
    = Einleitung
    In diesem Dokument, ...
    

![Preview](/assets/docs/pV_uneCLTlX_ftfk4ZJI1QAAAAAAAAAA.png)

###  ` region `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

An [ ISO 3166-1 alpha-2 region code.
](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)

This lets the text processing pipeline make more informed choices.

Default: ` none  `

###  ` script `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The OpenType writing script.

The combination of ` lang ` and ` script ` determine how font features, such
as glyph substitution, are implemented. Frequently the value is a modified
(all-lowercase) ISO 15924 script identifier, and the ` math ` writing script
is used for features appropriate for mathematical symbols.

When set to ` auto  ` , the default and recommended setting, an appropriate
script is chosen for each block of characters sharing a common Unicode script
property.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(
      font: "Libertinus Serif",
      size: 20pt,
    )
    
    #let scedilla = [Å]
    #scedilla // S with a cedilla
    
    #set text(lang: "ro", script: "latn")
    #scedilla // S with a subscript comma
    
    #set text(lang: "ro", script: "grek")
    #scedilla // S with a cedilla
    

![Preview](/assets/docs/IJovpbe1c5rRr9DM_KRhvgAAAAAAAAAA.png)

###  ` dir `

[ auto ](/docs/reference/foundations/auto/) or  [ direction
](/docs/reference/layout/direction/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The dominant direction for text and inline objects. Possible values are:

  * ` auto  ` : Automatically infer the direction from the ` lang ` property. 
  * ` ltr ` : Layout text from left to right. 
  * ` rtl ` : Layout text from right to left. 

When writing in right-to-left scripts like Arabic or Hebrew, you should set
the [ text language ](/docs/reference/text/text/#parameters-lang) or
direction. While individual runs of text are automatically layouted in the
correct direction, setting the dominant direction gives the bidirectional
reordering algorithm the necessary information to correctly place punctuation
and inline objects. Furthermore, setting the direction affects the alignment
values ` start ` and ` end ` , which are equivalent to ` left ` and ` right `
in ` ltr ` text and the other way around in ` rtl ` text.

If you set this to ` rtl ` and experience bugs or in some way bad looking
output, please get in touch with us through the [ Forum
](https://forum.typst.app/) , [ Discord server
](https://discord.gg/2uDybryKPe) , or our [ contact form
](https://typst.app/contact) .

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(dir: rtl)
    ÙØ°Ø§ Ø¹Ø±Ø¨Ù.
    

![Preview](/assets/docs/KrWAMeKAPNsts-l34CremAAAAAAAAAAA.png)

###  ` hyphenate `

[ auto ](/docs/reference/foundations/auto/) or  [ bool
](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to hyphenate text to improve line breaking. When ` auto  ` , text will
be hyphenated if and only if justification is enabled.

Setting the [ text language ](/docs/reference/text/text/#parameters-lang)
ensures that the correct hyphenation patterns are used.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set page(width: 200pt)
    
    #set par(justify: true)
    This text illustrates how
    enabling hyphenation can
    improve justification.
    
    #set text(hyphenate: false)
    This text illustrates how
    enabling hyphenation can
    improve justification.
    

![Preview](/assets/docs/4Pafis8Dv1GSWE8dIkAx2wAAAAAAAAAA.png)

###  ` costs `

[ dictionary ](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The "cost" of various choices when laying out text. A higher cost means the
layout engine will make the choice less often. Costs are specified as a ratio
of the default cost, so ` 50%  ` will make text layout twice as eager to make
a given choice, while ` 200%  ` will make it half as eager.

Currently, the following costs can be customized:

  * ` hyphenation ` : splitting a word across multiple lines 
  * ` runt ` : ending a paragraph with a line with a single word 
  * ` widow ` : leaving a single line of paragraph on the next page 
  * ` orphan ` : leaving single line of paragraph on the previous page 

Hyphenation is generally avoided by placing the whole word on the next line,
so a higher hyphenation cost can result in awkward justification spacing.

Runts are avoided by placing more or fewer words on previous lines, so a
higher runt cost can result in more awkward in justification spacing.

Text layout prevents widows and orphans by default because they are generally
discouraged by style guides. However, in some contexts they are allowed
because the prevention method, which moves a line to the next page, can result
in an uneven number of lines between pages. The ` widow ` and ` orphan ` costs
allow disabling these modifications. (Currently, ` 0%  ` allows
widows/orphans; anything else, including the default of ` 100%  ` , prevents
them. More nuanced cost specification for these modifications is planned for
the future.)

Default: ` (  hyphenation  :  100%  ,  runt  :  100%  ,  widow  :  100%  ,
orphan  :  100%  ,  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(hyphenate: true, size: 11.4pt)
    #set par(justify: true)
    
    #lorem(10)
    
    // Set hyphenation to ten times the normal cost.
    #set text(costs: (hyphenation: 1000%))
    
    #lorem(10)
    

![Preview](/assets/docs/k9JLw8qIVUINakYrnv50nAAAAAAAAAAA.png)

###  ` kerning `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to apply kerning.

When enabled, specific letter pairings move closer together or further apart
for a more visually pleasing result. The example below demonstrates how
decreasing the gap between the "T" and "o" results in a more natural look.
Setting this to ` false  ` disables kerning by turning off the OpenType ` kern
` font feature.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(size: 25pt)
    Totally
    
    #set text(kerning: false)
    Totally
    

![Preview](/assets/docs/7Gj4TjnwP0QfSOeJi7dKdAAAAAAAAAAA.png)

###  ` alternates `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to apply stylistic alternates.

Sometimes fonts contain alternative glyphs for the same codepoint. Setting
this to ` true  ` switches to these by enabling the OpenType ` salt ` font
feature.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(
      font: "IBM Plex Sans",
      size: 20pt,
    )
    
    0, a, g, Ã
    
    #set text(alternates: true)
    0, a, g, Ã
    

![Preview](/assets/docs/I0B88ggX_x3jq5W1mvWVIgAAAAAAAAAA.png)

###  ` stylistic-set `

[ none ](/docs/reference/foundations/none/) or  [ int
](/docs/reference/foundations/int/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Which stylistic sets to apply. Font designers can categorize alternative
glyphs forms into stylistic sets. As this value is highly font-specific, you
need to consult your font to know which sets are available.

This can be set to an integer or an array of integers, all of which must be
between ` 1  ` and ` 20  ` , enabling the corresponding OpenType feature(s)
from ` ss01 ` to ` ss20 ` . Setting this to ` none  ` will disable all
stylistic sets.

Default: ` (  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "IBM Plex Serif")
    Ã vs #text(stylistic-set: 5)[Ã] \
    10 years ago vs #text(stylistic-set: (1, 2, 3))[10 years ago]
    

![Preview](/assets/docs/W4bB6oEym3iwH_NdeQRsEAAAAAAAAAAA.png)

###  ` ligatures `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether standard ligatures are active.

Certain letter combinations like "fi" are often displayed as a single merged
glyph called a _ligature._ Setting this to ` false  ` disables these ligatures
by turning off the OpenType ` liga ` and ` clig ` font features.

Default: ` true  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(size: 20pt)
    A fine ligature.
    
    #set text(ligatures: false)
    A fine ligature.
    

![Preview](/assets/docs/IQnLFKoKsoxRyhR3pSbfiwAAAAAAAAAA.png)

###  ` discretionary-ligatures `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether ligatures that should be used sparingly are active. Setting this to `
true  ` enables the OpenType ` dlig ` font feature.

Default: ` false  `

###  ` historical-ligatures `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether historical ligatures are active. Setting this to ` true  ` enables the
OpenType ` hlig ` font feature.

Default: ` false  `

###  ` number-type `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Which kind of numbers / figures to select. When set to ` auto  ` , the default
numbers for the font are used.

Variant  |  Details   
---|---  
` "  lining  " ` |  Numbers that fit well with capital text (the OpenType ` lnum ` font feature).   
` "  old-style  " ` |  Numbers that fit well into a flow of upper- and lowercase text (the OpenType ` onum ` font feature).   
  
Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "Noto Sans", 20pt)
    #set text(number-type: "lining")
    Number 9.
    
    #set text(number-type: "old-style")
    Number 9.
    

![Preview](/assets/docs/Jl5yPI_4pX3UbcVjqxI5_QAAAAAAAAAA.png)

###  ` number-width `

[ auto ](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The width of numbers / figures. When set to ` auto  ` , the default numbers
for the font are used.

Variant  |  Details   
---|---  
` "  proportional  " ` |  Numbers with glyph-specific widths (the OpenType ` pnum ` font feature).   
` "  tabular  " ` |  Numbers of equal width (the OpenType ` tnum ` font feature).   
  
Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set text(font: "Noto Sans", 20pt)
    #set text(number-width: "proportional")
    A 12 B 34. \
    A 56 B 78.
    
    #set text(number-width: "tabular")
    A 12 B 34. \
    A 56 B 78.
    

![Preview](/assets/docs/6iCMWj0AW9bSFKBJ48tdiwAAAAAAAAAA.png)

###  ` slashed-zero `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to have a slash through the zero glyph. Setting this to ` true  `
enables the OpenType ` zero ` font feature.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    0, #text(slashed-zero: true)[0]
    

![Preview](/assets/docs/NqkvE1KDtvrmSgKJnmfRWwAAAAAAAAAA.png)

###  ` fractions `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether to turn numbers into fractions. Setting this to ` true  ` enables the
OpenType ` frac ` font feature.

It is not advisable to enable this property globally as it will mess with all
appearances of numbers after a slash (e.g., in URLs). Instead, enable it
locally when you want a fraction.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    1/2 \
    #text(fractions: true)[1/2]
    

![Preview](/assets/docs/ReL3WGljBzDnfTHeymCXGQAAAAAAAAAA.png)

###  ` features `

[ array ](/docs/reference/foundations/array/) or  [ dictionary
](/docs/reference/foundations/dictionary/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Raw OpenType features to apply.

  * If given an array of strings, sets the features identified by the strings to ` 1  ` . 
  * If given a dictionary mapping to numbers, sets the features identified by the keys to the values. 

Default: ` (  :  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    // Enable the `frac` feature manually.
    #set text(features: ("frac",))
    1/2
    

![Preview](/assets/docs/YY_AfHqvOwZWtTBzfgDvMwAAAAAAAAAA.png)

###  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

Content in which all text is styled according to the other arguments.

###  ` text `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The text.

[ ![â](/assets/icons/16-arrow-right.svg) Superscript  Previous page
](/docs/reference/text/super/) [ ![â](/assets/icons/16-arrow-right.svg)
Underline  Next page  ](/docs/reference/text/underline/)

