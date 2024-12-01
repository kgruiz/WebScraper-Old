#  lovelace

0.3.0

Algorithms in pseudocode, unopinionated and flexible

Featured  Package

This is a package for writing pseudocode in [ Typst ](https://typst.app/) . It
is named after the computer science pioneer [ Ada Lovelace
](https://en.wikipedia.org/wiki/Ada_Lovelace) and inspired by the [ pseudo
package ](https://ctan.org/pkg/pseudo) for LaTeX.

![GitHub
license](https://img.shields.io/github/license/andreasKroepelin/lovelace)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/lovelace)
![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/lovelace)

Pseudocode is not a programming language, it doesnât have strict syntax, so
you should be able to write it however you need to in your specific situation.
Lovelace lets you do exactly that.

Main features include:

  * arbitrary keywords and syntax structures 
  * optional line numbering 
  * line labels 
  * lots of customisation with sensible defaults 

##  Usage

  * [ Getting started ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#getting-started)
  * [ Lower level interface ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#lower-level-interface)
  * [ Line numbers ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#line-numbers)
  * [ Referencing lines ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#referencing-lines)
  * [ Indentation guides ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#indentation-guides)
  * [ Spacing ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#spacing)
  * [ Decorations ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#decorations)
  * [ Algorithm as figure ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#algorithm-as-figure)
  * [ Customisation overview ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#customisation-overview)
  * [ Exported functions ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#exported-functions)

###  Getting started

Import the package using

    
    
    #import "@preview/lovelace:0.3.0": *
    

The simplest usage is via ` pseudocode-list ` which transforms a nested list
into pseudocode:

    
    
    #pseudocode-list[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

resulting in:

![simple](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/simple.svg)

As you can see, every list item becomes one line of code and nested lists
become indented blocks. There are no special commands for common keywords and
control structures, you just use whatever you like.

Maybe in your domain very uncommon structures make more sense? No problem!

    
    
    #pseudocode-list[
      + *in parallel for each* $i = 1, ..., n$ *do*
        + fetch chunk of data $i$
        + *with probability* $exp(-epsilon_i slash k T)$ *do*
          + perform update
        + *end*
      + *end*
    ]
    

![custom](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/custom.svg)

###  Lower level interface

If you feel uncomfortable with abusing Typstâs lists like we do here, you
can also use the ` pseudocode ` function directly:

    
    
    #pseudocode(
      [do something],
      [do something else],
      [*while* still something to do],
      indent(
        [do even more],
        [*if* not done yet *then*],
        indent(
          [wait a bit],
          [resume working],
        ),
        [*else*],
        indent(
          [go home],
        ),
        [*end*],
      ),
      [*end*],
    )
    

This is equivalent to the first example. Note that each line is given as one
content argument and you indent a block by using the ` indent ` function.

This approach has the advantage that you do not rely on significant whitespace
and code formatters can automatically correctly indent your Typst code.

###  Line numbers

Lovelace puts a number in front of each line by default. If you want no
numbers at all, you can set the ` line-numbering ` option to ` none ` . The
initial example then looks like this:

    
    
    #pseudocode-list(line-numbering: none)[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![no-
number](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/simple-
no-numbers.svg)

(You can also pass this keyword argument to ` pseudocode ` .)

If you do want line numbers in general but need to turn them off for specific
lines, you can use ` - ` items instead of ` + ` items in ` pseudocode-list ` :

    
    
    #pseudocode-list[
      + normal line with a number
      - this line has no number
      + this one has a number again
    ]
    

![number-no-
number](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/number-
no-number.svg)

Itâs easy to remember: ` - ` items usually produce unnumbered lists and ` +
` items produce numbered lists!

When using the ` pseudocode ` function, you can achieve the same using ` no-
number ` :

    
    
    #pseudocode(
      [normal line with a number],
      no-number[this line has no number],
      [this one has a number again],
    )
    

####  More line number customisation

Other than ` none ` , you can assign anything listed [ here
](https://typst.app/docs/reference/model/numbering/#parameters-numbering) to `
line-numbering ` .

So maybe you happen to think about the Roman Empire a lot and want to reflect
that in your pseudocode?

    
    
    #set text(font: "Cinzel")
    
    #pseudocode-list(line-numbering: "I:")[
      + explore European tribes
      + *while* not all tribes conquered
        + *for each* tribe *in* unconquered tribes
          + try to conquer tribe
        + *end*
      + *end*
    ]
    

![roman](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/roman.svg)

###  Referencing lines

You can reference an inividual line of a pseudocode by giving it a label.
Inside ` pseudocode-list ` , you can use ` line-label ` :

    
    
    #pseudocode-list[
      + #line-label(<start>) do something
      + #line-label(<important>) do something important
      + go back to @start
    ]
    
    The relevance of the step in @important cannot be overstated.
    

![label](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/label.svg)

When using ` pseudocode ` , you can use ` with-line-label ` :

    
    
    #pseudocode(
      with-line-label(<start>)[do something],
      with-line-label(<important>)[do something important],
      [go back to @start],
    )
    
    The relevance of the step in @important cannot be overstated.
    

This has the same effect as the previous example.

The number shown in the reference uses the numbering scheme defined in the `
line-numbering ` option (see previous section).

By default, ` "Line" ` is used as the supplement for referencing lines. You
can change that using the ` line-number-supplement ` option to ` pseudocode `
or ` pseudocode-list ` .

###  Indentation guides

By default, Lovelace puts a thin gray ( ` gray + 1pt ` ) line to the left of
each indented block, which guides the reader in understanding the
indentations, just like a code editor would. You can customise this using the
` stroke ` option which takes any value that is a valid [ Typst stroke
](https://typst.app/docs/reference/visualize/stroke/) . You can especially set
it to ` none ` to have no indentation guides.

The example from the beginning becomes:

    
    
    #pseudocode-list(stroke: none)[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![no-
stroke](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/simple-
no-stroke.svg)

####  End blocks with hooks

Some people prefer using the indentation guide to signal the end of a block
instead of writing something like â **end** â by having a small âhookâ
at the end. To achieve that in Lovelace, you can make use of the ` hook `
option and specify how far a line should extend to the right from the
indentation guide:

    
    
    #pseudocode-list(hooks: .5em)[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
    ]
    

![hooks](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/hooks.svg)

###  Spacing

You can control how far indented lines are shifted right by the ` indentation
` option. To change the space between lines, use the ` line-gap ` option.

    
    
    #pseudocode-list(indentation: 3em, line-gap: 1.5em)[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![spacing](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/spacing.svg)

###  Decorations

You can also add a title and/or a frame around your algorithm if you like:

####  Title

Using the ` title ` option, you can give your pseudocode a title (surprise!).
For example, to achieve [ CLRS style
](https://en.wikipedia.org/wiki/Introduction_to_Algorithms) , you can do
something like

    
    
    #pseudocode-list(stroke: none, title: smallcaps[Fancy-Algorithm])[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![title](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/title.svg)

####  Booktabs

If you like wrapping your algorithm in elegant horizontal lines, you can do so
by setting the ` booktabs ` option to ` true ` .

    
    
    #pseudocode-list(booktabs: true)[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![booktabs](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/booktabs.svg)

Together with the ` title ` option, you can produce

    
    
    #pseudocode-list(booktabs: true, title: [My cool title])[
      + do something
      + do something else
      + *while* still something to do
        + do even more
        + *if* not done yet *then*
          + wait a bit
          + resume working
        + *else*
          + go home
        + *end*
      + *end*
    ]
    

![booktabs-
title](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/booktabs-
title.svg)

By default, the outer booktab strokes are ` black + 2pt ` . You can change
that with the option ` booktabs-stroke ` to any valid [ Typst stroke
](https://typst.app/docs/reference/visualize/stroke/) . The inner line will
always have the same stroke as the outer ones, just with half the thickness.

###  Algorithm as figure

To make algorithms referencable and being able to float in the document, you
can use Typstâs ` figure ` function with a custom ` kind ` .

    
    
    #figure(
      kind: "algorithm",
      supplement: [Algorithm],
      caption: [My cool algorithm],
    
      pseudocode-list[
        + do something
        + do something else
        + *while* still something to do
          + do even more
          + *if* not done yet *then*
            + wait a bit
            + resume working
          + *else*
            + go home
          + *end*
        + *end*
      ]
    )
    

![figure](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/figure.svg)

If you want to have the algorithm counter inside the title instead (see
previous section), there is the option ` numbered-title ` :

    
    
    #figure(
      kind: "algorithm",
      supplement: [Algorithm],
    
      pseudocode-list(booktabs: true, numbered-title: [My cool algorithm])[
        + do something
        + do something else
        + *while* still something to do
          + do even more
          + *if* not done yet *then*
            + wait a bit
            + resume working
          + *else*
            + go home
          + *end*
        + *end*
      ]
    ) <cool>
    
    See @cool for details on how to do something cool.
    

![figure-
title](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/examples/figure-
title.svg)

Note that the ` numbered-title ` option only makes sense when nesting your
pseudocode inside a figure with ` kind: "algorithm" ` , otherwise it produces
undefined results.

###  Customisation overview

Both ` pseudocode ` and ` pseudocode-list ` accept the following configuration
arguments:

**option** |  **type** |  **default**  
---|---|---  
[ ` line-numbering ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#line-numbers) |  ` none ` or a [ numbering ](https://typst.app/docs/reference/model/numbering/#parameters-numbering) |  ` "1" `  
[ ` line-number-supplement ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#more-line-number-customisation) |  content  |  ` "Line" `  
[ ` stroke ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#indentation-guides) |  stroke  |  ` 1pt + gray `  
[ ` hooks ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#end-blocks-with-hooks) |  length  |  ` 0pt `  
[ ` indentation ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#spacing) |  length  |  ` 1em `  
[ ` line-gap ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#spacing) |  length  |  ` .8em `  
[ ` booktabs ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#booktabs) |  bool  |  ` false `  
[ ` booktabs-stroke ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#booktabs) |  stroke  |  ` 2pt + black `  
[ ` title ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#title) |  content or ` none ` |  ` none `  
[ ` numbered-title ` ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#algorithm-as-figure) |  content or ` none ` |  ` none `  
  
Until Typst supports user defined types, we can use the following trick when
wanting to set own default values for these options. Say, you always want your
algorithms to have colons after the line numbers, no indentation guides and,
if present, blue booktabs. In this case, you would put the following at the
top of your document:

    
    
    #let my-lovelace-defaults = (
      line-numbering: "1:",
      stroke: none,
      booktabs-stroke: 2pt + blue,
    )
    
    #let pseudocode = pseudocode.with(..my-lovelace-defaults)
    #let pseudocode-list = pseudocode-list.with(..my-lovelace-defaults)
    

###  Exported functions

Lovelace exports the following functions:

  * ` pseudocode ` : Typeset pseudocode with each line as an individual content argument, see [ here ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#lower-level-interface) for details. Has [ these ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#customisation-overview) optional arguments. 
  * ` pseudocode-list ` : Takes a standard Typst list and transforms it into a pseudocode. Has [ these ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#customisation-overview) optional arguments. 
  * ` indent ` : Inside the argument list of ` pseudocode ` , use ` indent ` to specify an indented block, see [ here ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#lower-level-interface) for details. 
  * ` no-number ` : Wrap an argument to ` pseudocode ` in this function to have the corresponding line be unnumbered, see [ here ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#line-numbers) for details. 
  * ` with-line-label ` : Use this function in the ` pseudocode ` arguments to add a label to a specific line, see [ here ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#referencing-lines) for details. 
  * ` line-label ` : When using ` pseudocode-list ` , you do _not_ use ` with-line-label ` but insert a call to ` line-label ` somewhere in a line to add a label, see [ here ](https://github.com/typst/packages/raw/main/packages/preview/lovelace/0.3.0/#referencing-lines) for details. 

###  How to add

Copy this into your project and use the import as  ` lovelace `

    
    
    #import "@preview/lovelace:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     Andreas KrÃ¶pelin  & Lovelace contributors 
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     July 1, 2024 
First released:

     September 6, 2023 
Archive size:

     3.44 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/lovelace-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/andreasKroepelin/lovelace)

###  Where to report issues?

This  package  is a project of  Andreas KrÃ¶pelin and Lovelace contributors  .
Report issues on  [ their repository
](https://github.com/andreasKroepelin/lovelace) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  July 1, 2024   
[ 0.2.0 ](https://typst.app/universe/package/lovelace/0.2.0/) |  January 9, 2024   
[ 0.1.0 ](https://typst.app/universe/package/lovelace/0.1.0/) |  September 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

