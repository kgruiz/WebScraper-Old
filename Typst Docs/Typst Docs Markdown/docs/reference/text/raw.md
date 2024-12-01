  * [ ![Docs](/assets/icons/16-docs-dark.svg) ](/docs)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Reference ](/docs/reference/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Text ](/docs/reference/text/)
  * ![](/assets/icons/16-arrow-right.svg)
  * [ Raw Text / Code ](/docs/reference/text/raw/)

#  ` raw ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

Raw text with optional syntax highlighting.

Displays the text verbatim and in a monospace font. This is typically used to
embed computer code into your document.

##  Example

    
    
    Adding `rbx` to `rcx` gives
    the desired result.
    
    What is ```rust fn main()``` in Rust
    would be ```c int main()``` in C.
    
    ```rust
    fn main() {
        println!("Hello World!");
    }
    ```
    
    This has ``` `backticks` ``` in it
    (but the spaces are trimmed). And
    ``` here``` the leading space is
    also trimmed.
    

![Preview](/assets/docs/HG5qpETGRO7ndBI1Qrek9gAAAAAAAAAA.png)

You can also construct a [ ` raw ` ](/docs/reference/text/raw/ "`raw`")
element programmatically from a string (and provide the language tag via the
optional [ ` lang ` ](/docs/reference/text/raw/#parameters-lang) argument).

    
    
    #raw("fn " + "main() {}", lang: "rust")
    

![Preview](/assets/docs/MNABiMKxTxPPaXzIwfuPPQAAAAAAAAAA.png)

##  Syntax

This function also has dedicated syntax. You can enclose text in 1 or 3+
backticks ( ` ` ` ) to make it raw. Two backticks produce empty raw text. This
works both in markup and code.

When you use three or more backticks, you can additionally specify a language
tag for syntax highlighting directly after the opening backticks. Within raw
blocks, everything (except for the language tag, if applicable) is rendered as
is, in particular, there are no escape sequences.

The language tag is an identifier that directly follows the opening backticks
only if there are three or more backticks. If your text starts with something
that looks like an identifier, but no syntax highlighting is needed, start the
text with a single space (which will be trimmed) or use the single backtick
syntax. If your text should start or end with a backtick, put a space before
or after it (it will be trimmed).

##  Parameters

Question mark

Parameters are the inputs to a function. They are specified in parentheses
after the function name.

raw  (

[ str ](/docs/reference/foundations/str/) ,  block  :  [ bool
](/docs/reference/foundations/bool/) ,  lang  :  [ none
](/docs/reference/foundations/none/) [ str ](/docs/reference/foundations/str/)
,  align  :  [ alignment ](/docs/reference/layout/alignment/) ,  syntaxes  :
[ str ](/docs/reference/foundations/str/) [ array
](/docs/reference/foundations/array/) ,  theme  :  [ none
](/docs/reference/foundations/none/) [ auto
](/docs/reference/foundations/auto/) [ str ](/docs/reference/foundations/str/)
,  tab-size  :  [ int ](/docs/reference/foundations/int/) ,

)  -> [ content ](/docs/reference/foundations/content/)

###  ` text `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The raw text.

You can also use raw blocks creatively to create custom syntaxes for your
automations.

![](/assets/icons/16-arrow-right.svg) View example

    
    
    // Parse numbers in raw blocks with the
    // `mydsl` tag and sum them up.
    #show raw.where(lang: "mydsl"): it => {
      let sum = 0
      for part in it.text.split("+") {
        sum += int(part.trim())
      }
      sum
    }
    
    ```mydsl
    1 + 2 + 3 + 4 + 5
    ```
    

![Preview](/assets/docs/6VperjQoP8Ey0LiUk5m0HQAAAAAAAAAA.png)

###  ` block `

[ bool ](/docs/reference/foundations/bool/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

Whether the raw text is displayed as a separate block.

In markup mode, using one-backtick notation makes this ` false  ` . Using
three-backtick notation makes it ` true  ` if the enclosed content contains at
least one line break.

Default: ` false  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    // Display inline code in a small box
    // that retains the correct baseline.
    #show raw.where(block: false): box.with(
      fill: luma(240),
      inset: (x: 3pt, y: 0pt),
      outset: (y: 3pt),
      radius: 2pt,
    )
    
    // Display block code in a larger block
    // with more padding.
    #show raw.where(block: true): block.with(
      fill: luma(240),
      inset: 10pt,
      radius: 4pt,
    )
    
    With `rg`, you can search through your files quickly.
    This example searches the current directory recursively
    for the text `Hello World`:
    
    ```bash
    rg "Hello World"
    ```
    

![Preview](/assets/docs/PgXCmmr2Cn53ZnpWQOnMwwAAAAAAAAAA.png)

###  ` lang `

[ none ](/docs/reference/foundations/none/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The language to syntax-highlight in.

Apart from typical language tags known from Markdown, this supports the `
"typ"  ` , ` "typc"  ` , and ` "typm"  ` tags for [ Typst markup
](/docs/reference/syntax/#markup) , [ Typst code
](/docs/reference/syntax/#code) , and [ Typst math
](/docs/reference/syntax/#math) , respectively.

Default: ` none  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    ```typ
    This is *Typst!*
    ```
    
    This is ```typ also *Typst*```, but inline!
    

![Preview](/assets/docs/bjU3PMlFs9msUi72QThHnAAAAAAAAAAA.png)

###  ` align `

[ alignment ](/docs/reference/layout/alignment/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The horizontal alignment that each line in a raw block should have. This
option is ignored if this is not a raw block (if specified ` block: false ` or
single backticks were used in markup mode).

By default, this is set to ` start ` , meaning that raw text is aligned
towards the start of the text direction inside the block by default,
regardless of the current context's alignment (allowing you to center the raw
block itself without centering the text inside it, for example).

Default: ` start `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set raw(align: center)
    
    ```typc
    let f(x) = x
    code = "centered"
    ```
    

![Preview](/assets/docs/QoY61HWjc7MIUABTr8mvwwAAAAAAAAAA.png)

###  ` syntaxes `

[ str ](/docs/reference/foundations/str/) or  [ array
](/docs/reference/foundations/array/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

One or multiple additional syntax definitions to load. The syntax definitions
should be in the [ ` sublime-syntax ` file format
](https://www.sublimetext.com/docs/syntax.html) .

Default: ` (  )  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set raw(syntaxes: "SExpressions.sublime-syntax")
    
    ```sexp
    (defun factorial (x)
      (if (zerop x)
        ; with a comment
        1
        (* x (factorial (- x 1)))))
    ```
    

![Preview](/assets/docs/f1wEtKdjbuwy-LVNGIZ_igAAAAAAAAAA.png)

###  ` theme `

[ none ](/docs/reference/foundations/none/) or  [ auto
](/docs/reference/foundations/auto/) or  [ str
](/docs/reference/foundations/str/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The theme to use for syntax highlighting. Theme files should be in the [ `
tmTheme ` file format
](https://www.sublimetext.com/docs/color_schemes_tmtheme.html) .

Applying a theme only affects the color of specifically highlighted text. It
does not consider the theme's foreground and background properties, so that
you retain control over the color of raw text. You can apply the foreground
color yourself with the [ ` text ` ](/docs/reference/text/text/ "`text`")
function and the background with a [ filled block
](/docs/reference/layout/block/#parameters-fill) . You could also use the [ `
xml ` ](/docs/reference/data-loading/xml/ "`xml`") function to extract these
properties from the theme.

Additionally, you can set the theme to ` none  ` to disable highlighting.

Default: ` auto  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set raw(theme: "halcyon.tmTheme")
    #show raw: it => block(
      fill: rgb("#1d2433"),
      inset: 8pt,
      radius: 5pt,
      text(fill: rgb("#a2aabc"), it)
    )
    
    ```typ
    = Chapter 1
    #let hi = "Hello World"
    ```
    

![Preview](/assets/docs/_3ndU0y1KsOpDAMv999GwwAAAAAAAAAA.png)

###  ` tab-size `

[ int ](/docs/reference/foundations/int/)

Settable

Question mark

Settable parameters can be customized for all following uses of the function
with a ` set ` rule.

The size for a tab stop in spaces. A tab is replaced with enough spaces to
align with the next multiple of the size.

Default: ` 2  `

![](/assets/icons/16-arrow-right.svg) View example

    
    
    #set raw(tab-size: 8)
    ```tsv
    Year	Month	Day
    2000	2	3
    2001	2	1
    2002	3	10
    ```
    

![Preview](/assets/docs/OAN98lLQ4wUhrTrjbVCTywAAAAAAAAAA.png)

##  Definitions

Question mark

Functions and types and can have associated definitions. These are accessed by
specifying the function or type, followed by a period, and then the
definition's name.

###  ` line ` Element

Question mark

Element functions can be customized with ` set ` and  ` show ` rules.

A highlighted line of raw text.

This is a helper element that is synthesized by [ ` raw `
](/docs/reference/text/raw/ "`raw`") elements.

It allows you to access various properties of the line, such as the line
number, the raw non-highlighted text, the highlighted text, and whether it is
the first or last line of the raw block.

raw  .  line  (

[ int ](/docs/reference/foundations/int/) ,  [ int
](/docs/reference/foundations/int/) ,  [ str
](/docs/reference/foundations/str/) ,  [ content
](/docs/reference/foundations/content/) ,

)  -> [ content ](/docs/reference/foundations/content/)

####  ` number `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The line number of the raw line inside of the raw block, starts at 1.

####  ` count `

[ int ](/docs/reference/foundations/int/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The total number of lines in the raw block.

####  ` text `

[ str ](/docs/reference/foundations/str/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The line of raw text.

####  ` body `

[ content ](/docs/reference/foundations/content/)

Required  Positional

Question mark

Positional parameters are specified in order, without names.

The highlighted raw text.

[ ![â](/assets/icons/16-arrow-right.svg) Overline  Previous page
](/docs/reference/text/overline/) [ ![â](/assets/icons/16-arrow-right.svg)
Small Capitals  Next page  ](/docs/reference/text/smallcaps/)

