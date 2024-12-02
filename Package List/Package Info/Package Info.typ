List of Packages, Latest Version, and Basic Description

= *gloss-awe*

=  gloss-awe

*Latest Version:* 0.0.5

Awesome Glossary for Typst.

Automatically create a glossary in [ typst ](https://typst.app/) .

This typst component creates a glossary page from a given pool of potential
glossary entries using only those entries, that are marked with the ` gls ` or
` gls-add ` functions in the document.

â ï¸ Typst is in beta and evolving, and this package evolves with it. As a
result, no backward compatibility is guaranteed yet. Also, the package itself
is under development and fine-tuning.


= *ibanator*

=  ibanator

*Latest Version:* 0.1.0

A package for validating and formatting International Bank Account Numbers
(IBANs) according to ISO 13616-1.

> Validate and format IBAN numbers according to ISO 13616-1.


= *cades*

=  cades

*Latest Version:* 0.3.0

Generate QR codes in typst.

Draw QR codes in typst.


= *easy-pinyin*

=  easy-pinyin

*Latest Version:* 0.1.0

Write Chinese pinyin easily.

Write Chinese pinyin easily.


= *a2c-nums*

=  a2c-nums

*Latest Version:* 0.0.1

Convert a number to Chinese

Convert Arabic numbers to Chinese characters.


= *lovelace*

=  lovelace

*Latest Version:* 0.3.0

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

  - arbitrary keywords and syntax structures
  - optional line numbering
  - line labels
  - lots of customisation with sensible defaults


= *backtrack*

=  backtrack

*Latest Version:* 1.0.0

A version-agnostic library for checking the compiler version.

Backtrack is a simple and performant Typst library that determines the current
compiler version and provides an API for comparing, displaying, and observing
versions.

Unlike the built-in [ version API ](https://github.com/typst/typst/pull/2016)
which is only available on Typst 0.9.0+, Backtrack works on any [ *
](https://github.com/typst/packages/raw/main/packages/preview/backtrack/1.0.0/#version-
support) Typst version. It uses the built-in API when available so that
itâll continue to work on all future Typst versions without modification.

Additionally, it:

  - doesnât noticeably impact compilation time. All version checks are extremely simple, and newer versions are checked first to avoid overhead from supporting old versions.
  - is automatically tested on _every_ supported Typst version to ensure reliability.
  - can be downloaded and installed manually in addition to being available as a package.


= *iridis*

=  iridis

*Latest Version:* 0.1.0

A package to colors matching parenthesis

Iridis is a package to colorize parenthesis in your typst document. Iridis is
a latin word that means ârainbowâ. This package is inspired by the many
rainbow parenthesis plugins available for code editors.


= *board-n-pieces*

=  board-n-pieces

*Latest Version:* 0.5.0

Display chessboards.

Display chessboards in Typst.


= *bob-draw*

=  bob-draw

*Latest Version:* 0.1.0

svgbob for typst, powered by wasm

svgbob for typst, powered by wasm

This package provides a typst plugin for rendering [ svgbob
](https://github.com/ivanceras/svgbob) diagrams.


= *neoplot*

=  neoplot

*Latest Version:* 0.0.2

Gnuplot in Typst

A Typst package to use [ gnuplot ](http://www.gnuplot.info/) in Typst.


= *cmarker*

=  cmarker

*Latest Version:* 0.1.1

Transpile CommonMark Markdown to Typst, from within Typst!

#set document(title: "cmarker.typ"); #set page(numbering: "1", number-align:
center); #set text(lang: "en"); #align(center, text(weight: 700,
1.75em)[cmarker.typ]); #set heading(numbering: "1."); #show link: c =>
text(underline(c), fill: blue); #set image(height: 2em); #show par: set
block(above: 1.2em, below: 1.2em)
#align(center)[https://github.com/SabrinaJewson/cmarker.typ]; #"

This package enables you to write CommonMark Markdown, and import it directly
into Typst.

` simple.typ ` |  ` simple.md `
---|---


    #import "@preview/cmarker:0.1.1"

    #cmarker.render(read("simple.md"))


|


= *equate*

=  equate

*Latest Version:* 0.2.1

Breakable equations with improved numbering.

Featured  Package

A package for improved layout of equations and mathematical expressions.

When applied, this package will split up multi-line block equations into
multiple elements, so that each line can be assigned a separate number. By
default, the equation counter is incremented for each line, but this behavior
can be changed by setting the ` sub-numbering ` argument to ` true ` . In this
case, the equation counter will only be incremented once for the entire block,
and each line will be assigned a sub-number like ` 1a ` , ` 2.1 ` , or
similar, depending on the set equation numbering. You can also set the `
number-mode ` argument to ` "label" ` to only number labelled lines. If a
label is only applied to the full equation, all lines will be numbered.

This splitting also makes it possible to spread equations over page boundaries
while keeping alignment in place, which can be useful for long derivations or
proofs. This can be configured by the ` breakable ` parameter of the ` equate
` function, or by setting the ` breakable ` parameter of ` block ` for
equations via a show-set rule. Additionally, the alignment of the equation
number is improved, so that it always matches the baseline of the equation.

If you want to create a âstandardâ equation with a single equation number
centered across all lines, you can attach the ` <equate:revoke> ` label to the
equation. This will disable the effect of this package for the current
equation. This label can also be used in single lines of an equation to
disable numbering for that line only.


= *titleize*

=  titleize

*Latest Version:* 0.1.1

Turn strings into title case

Small wrapper around the [ titlecase ](https://crates.io/crates/titlecase)
library to convert text to title case. It follows the [ rules defined by John
Gruber ](https://daringfireball.net/2008/05/title_case) . For more details,
refer to the library.

` titlecase ` applies a show rule, that by default transforms every string of
at least four characters. This limit can be changed with the ` limit `
parameter. Especially with equations, the results can be a bit unpredictable,
so proceed with care.


= *jogs*

=  jogs

*Latest Version:* 0.2.3

QuickJS JavaScript runtime for Typst

Quickjs javascript runtime for typst. This package provides a typst plugin for
evaluating javascript code.


= *funarray*

=  funarray

*Latest Version:* 0.4.0

Package providing convenient functional functions to use on arrays.

This package provides some convinient functional functions for [ typst
](https://typst.app/) to use on arrays.


= *riesketcher*

=  riesketcher

*Latest Version:* 0.2.1

A package to draw Riemann sums (and their plots) of a function with CeTZ.

A package to draw Riemann sums (and their plots) of a function with CeTZ.

Usage example and docs: [ manual.pdf
](https://github.com/ThatOneCalculator/riesketcher/blob/main/manual.pdf)


= *timeliney*

=  timeliney

*Latest Version:* 0.1.0

Create Gantt charts in Typst.

Featured  Package

Create Gantt charts automatically with Typst!

Hereâs a fully-featured example:


= *bookletic*

=  bookletic

*Latest Version:* 0.3.0

Create beautiful booklets with ease.

Create beautiful booklets with ease.

The current version of this library (0.3.0) contains a single function to take
in an array of content blocks and order them into a ready to print booklet,
bulletin, etc. No need to fight with printer settings or document converters.


= *shiroa*

=  shiroa

*Latest Version:* 0.1.2

A simple tool for creating modern online books in pure typst.

[ _shiroa_ ](https://github.com/Myriad-Dreamin/shiroa) ( _Shiro A_ , or _The
White_ , or _äºç¬º_ ) is a simple tool for creating modern online (cloud)
books in pure typst.


= *pintorita*

=  pintorita

*Latest Version:* 0.1.2

Package to draw Sequence Diagrams, Entity Relationship Diagrams, Component
Diagrams, Activity Diagrams, Mind Maps, Gantt Diagrams, and DOT Diagrams based
on Pintora which is heavily influenced by mermaid.js and plantuml.

[ Pintora ](https://pintorajs.vercel.app/)

Typst package for drawing the following from markup:

  - Sequence Diagram
  - Entity Relationship Diagram
  - Component Diagram
  - Activity Diagram
  - Mind Map Experiment
  - Gantt Diagram Experiment
  - DOT Diagram Experiment

![](https://github.com/typst/packages/raw/main/packages/preview/pintorita/0.1.2/pintorita.svg)


= *iconic-salmon-fa*

=  iconic-salmon-fa

*Latest Version:* 1.0.0

A Typst library for Social Media references with icons based on Font Awesome.

The ` iconic-salmon-fa ` package is designed to help you create your
curriculum vitae (CV). It allows you to easily reference your social media
profiles with the typical icon of the service plus a link to your profile.
The package name is a combination of the acronym _SociAL Media icONs_ and the
word _iconic_ because all these icons have an iconic design (and iconic also
contains the word _icon_ ).


= *leipzig-glossing*

=  leipzig-glossing

*Latest Version:* 0.4.0

Linguistic interlinear glosses according to the Leipzig Glossing rules

` leipzig-glossing ` is a [ Typst ](https://github.com/typst/typst) library
for creating interlinear morpheme-by-morpheme glosses according to the [
Leipzig glossing rules ](https://www.eva.mpg.de/lingua/pdf/Glossing-Rules.pdf)
.

Run ` typst compile documentation.typ ` in the root of the repository to
generate a pdf file with examples and documentation. This command is also
codified in the accompanying [ justfile ](https://github.com/casey/just) as `
just build-doc ` .

The definitions intended for use by end users are the ` gloss ` and `
numbered-gloss ` functions, and the ` abbreviations ` submodule.


= *numblex*

=  numblex

*Latest Version:* 0.2.0

Numbering helper.

How to number the heading like this?

  - Appendix A. XXXX
    - A.1. YYY
    - A.2. ZZZ

Or this?

  - ä¸ãè¯é¢
    - 1\. è®ºç¹
      - (1) è¯æ®

You might use a function:


= *syntree*

=  syntree

*Latest Version:* 0.2.0

Linguistics syntax/parse tree rendering

*syntree* is a typst package for rendering syntax trees / parse trees (the
kind linguists use).

The name and syntax are inspired by Miles Shangâs [ syntree
](https://github.com/mshang/syntree) . Hereâs an example to get started:


= *chordx*

=  chordx

*Latest Version:* 0.5.0

A package to write song lyrics with chord diagrams in Typst.

A package to write song lyrics with chord diagrams in Typst.

*Table of Contents*

  - [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#introduction)
  - [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#usage)
    - [ Typst Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#typst-packages)
    - [ Local Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#local-packages)
  - [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#documentation)
  - [ Examples ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#examples)
    - [ Chart Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#chart-chords)
    - [ Piano Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#piano-chords)
    - [ Single Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#single-chords)
  - [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#changelog)
  - [ License ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#license)


= *hidden-bib*

=  hidden-bib

*Latest Version:* 0.1.1

Create hidden bibliographies or bibliographies with unmentioned (hidden)
citations.

[ GitHub Repository including Examples ](https://github.com/pklaschka/typst-
hidden-bib)

A Typst package to create hidden bibliographies or bibliographies with
unmentioned (hidden) citations.


= *jlyfish*

=  jlyfish

*Latest Version:* 0.1.0

Julia code evaluation inside your Typst document

![logo](https://github.com/typst/packages/raw/main/packages/preview/jlyfish/0.1.0/assets/logo.svg)

Jlyfish is a package for Julia and Typst that allows you to integrate Julia
computations in your Typst document.

[ ![Static Badge](https://img.shields.io/badge/docs-wiki-blue)
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) ![GitHub
License](https://img.shields.io/github/license/andreasKroepelin/TypstJlyfish.jl)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/TypstJlyfish.jl)
[ ![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/TypstJlyfish.jl)
](https://github.com/andreasKroepelin/TypstJlyfish.jl)

You should use Jlyfish if you want to write a Typst document and have some of
the content automatically produced by Julia code but want the source code for
that within your document source. It fills a similar role as [ PythonTeX
](https://github.com/gpoore/pythontex) does for Python and LaTeX. Note that
this is different from tools like [ Quarto ](https://quarto.org/) where you
write documents in Markdown, also integrate some Julia code, but then might
use Typst only as a backend to produce the final document.

See below for a quick introduction or read the [ wiki
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) for an in depth
explanation.

Since Jlyfish builds a bridge between Julia and Typst, we also have to get two
things running. First, install the Julia package ` TypstJlyfish ` from the
general registry by executing


= *edgeframe*

=  edgeframe

*Latest Version:* 0.1.0

For quick paper setups.

Custom margins and other components for page setup or layout.


= *acrostiche*

=  acrostiche

*Latest Version:* 0.4.1

Manage acronyms and their definitions in Typst.

Manages acronyms so you donât have to.


= *babble-bubbles*

=  babble-bubbles

*Latest Version:* 0.1.0

A package to create callouts.

A package to create callouts in typst, inspired by the [ Obsidan
](https://obsidian.md/) callouts.

Use preset callouts, or create your own!

![callouts_example](https://github.com/typst/packages/raw/main/packages/preview/babble-
bubbles/0.1.0/examples/callouts.png)


= *prequery*

=  prequery

*Latest Version:* 0.1.0

library for extracting metadata for preprocessing from a typst document

This package helps extracting metadata for preprocessing from a typst
document, for example image URLs for download from the web. Typst compilations
are sandboxed: it is not possible for Typst packages, or even just a Typst
document itself, to access the âouside worldâ. This sandboxing of Typst
has good reasons. Yet, it is often convenient to trade a bit of security for
convenience by weakening it. Prequery helps with that by providing some simple
scaffolding for supporting preprocessing of documents.

Hereâs an example for referencing images from the internet:


= *solving-physics*

=  solving-physics

*Latest Version:* 0.1.0

A package to formulate the solution to a physical problem

The easiest method is to import ` solving-physics: task ` from the ` @preview
` package:


= *cheq*

=  cheq

*Latest Version:* 0.2.2

Write markdown-like checklist easily.

Write markdown-like checklist easily.


= *kouhu*

=  kouhu

*Latest Version:* 0.1.1

Chinese lipsum text generator; ä¸­æä¹±æ°åæï¼Lorem Ipsumï¼çæå¨

` kouhu ` is a Chinese lipsum text generator for [ Typst ](https://typst.app/)
. It provides a set of built-in text samples containing both Simplified and
Traditional Chinese characters. You can choose from generated fake text,
classic or modern Chinese literature, or specify your own text.

` kouhu ` is inspired by [ zhlipsum ](https://ctan.org/pkg/zhlipsum) LaTeX
package and [ roremu ](https://typst.app/universe/package/roremu) Typst
package.

All [ sample text
](https://github.com/typst/packages/raw/main/packages/preview/kouhu/0.1.1/data/zhlipsum.json)
is excerpted from ` zhlipsum ` LaTeX package (see Appendix for details).


= *tabut*

=  tabut

*Latest Version:* 1.0.2

Display data as tables.

_Powerful, Simple, Concise_

A Typst plugin for turning data into tables.


= *typslides*

=  typslides

*Latest Version:* 1.2.1

Minimalistic Typst slides

![logo](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/logo.png)

![License](https://img.shields.io/badge/license-GPLv3-blue) [
![Contributors](https://badgen.net/github/contributors/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
[ ![Release](https://badgen.net/github/release/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
![GitHub Repo stars](https://img.shields.io/github/stars/manjavacas/typslides)

_Minimalistic[ typst ](https://typst.app/) slides! _

This is a simple usage example:


= *modpattern*

=  modpattern

*Latest Version:* 0.1.0

Easily create patterns in typst.

This package provides exactly one function: ` modpattern `

Itâs primary goal is to create make this: ![comparison
table](https://github.com/typst/packages/raw/main/packages/preview/modpattern/0.1.0/examples/comparison.png)


= *statastic*

=  statastic

*Latest Version:* 1.0.0

A library to calculate statistics for numerical data

A library to calculate statistics for numerical data in typst.


= *mitex*

=  mitex

*Latest Version:* 0.2.4

LaTeX support for Typst, powered by Rust and WASM.

*[ LaTeX ](https://www.latex-project.org/) support for [ Typst
](https://typst.app/) , powered by [ Rust ](https://www.rust-lang.org/) and [
WASM ](https://webassembly.org/) . *

[ MiTeX ](https://github.com/mitex-rs/mitex) processes LaTeX code into an
abstract syntax tree (AST). Then it transforms the AST into Typst code and
evaluates code into Typst content by ` eval ` function.

MiTeX has been proved to be practical on a large project. It has already
correctly converted 32.5k equations from [ OI Wiki ](https://github.com/OI-
wiki/OI-wiki) . Compared to [ texmath ](https://github.com/jgm/texmath) ,
MiTeX has a better display effect and performance in that wiki project. It is
also more easy to use, since importing MiTeX to Typst is just one line of
code, while texmath is an external program.

In addition, MiTeX is not only *SMALL* but also *FAST* ! MiTeX has a size
of just about 185 KB, comparing that texmath has a size of 17 MB. A not strict
but intuitive comparison is shown below. To convert 32.5k equations from OI
Wiki, texmath takes about 109s, while MiTeX WASM takes only 2.28s and MiTeX
x86 takes merely 0.085s.

Thanks to [ @Myriad-Dreamin ](https://github.com/Myriad-Dreamin) , he
completed the most complex development work: developing the parser for
generating AST.


= *diagraph*

=  diagraph

*Latest Version:* 0.3.0

Draw graphs with Graphviz. Use mathematical formulas as labels.

A simple Graphviz binding for Typst using the WebAssembly plugin system.


= *crossregex*

=  crossregex

*Latest Version:* 0.2.0

A crossword-like regex game written in Typst.

A crossword-like game written in Typst. You should fill in letters to satisfy
regular expression constraints. Currently, _squares_ and _regular hexagons_
are supported.

> [!note] This is not a puzzle solver, but a puzzle layout builder.

It takes inspiration from a web image, which derives our standard example.

![standard](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/standard.svg)

![sudoku](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/sudoku-
main.svg)

More examples and source code: [ https://github.com/QuadnucYard/crossregex-typ
](https://github.com/QuadnucYard/crossregex-typ)


= *lineal*

=  lineal

*Latest Version:* 0.1.0

Build elegent slide decks with Typst

IPA: /ËlÉªniÉl/

Made up of, or having the characteristic of, lines.

Lineal is a Typst template for generating beautifully clean and configurably
awesome slides.

![Demo slide
deck](https://github.com/typst/packages/raw/main/packages/preview/lineal/0.1.0/assets/img/demo.gif)


= *polylux*

=  polylux

*Latest Version:* 0.3.1

Presentation slides creation with Typst

Featured  Package

This is a package for creating presentation slides in [ Typst
](https://typst.app/) . Read the [ book
](https://andreaskroepelin.github.io/polylux/book) to learn all about it and
click [ here ](https://andreaskroepelin.github.io/polylux/book/changelog.html)
to see whatâs new!

If you like it, consider [ giving a star on GitHub
](https://github.com/andreasKroepelin/polylux) !

[ ![Book badge](https://img.shields.io/badge/docs-book-green)
](https://andreaskroepelin.github.io/polylux/book)
![GitHub](https://img.shields.io/github/license/andreasKroepelin/polylux)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/polylux)
![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/polylux) [ ![Demo
badge](https://img.shields.io/badge/demo-pdf-blue)
](https://github.com/andreasKroepelin/polylux/releases/latest/download/demo.pdf)
![Themes badge](https://img.shields.io/badge/themes-5-aqua)


= *boxr*

=  boxr

*Latest Version:* 0.1.0

A modular, and easy to use, package for creating cardboard cutouts in Typst.

Boxr is a modular, and easy to use, package for creating cardboard cutouts in
Typst.


= *chromo*

=  chromo

*Latest Version:* 0.1.0

Generate printer tests (likely CMYK) in typst.

Generate printer tests directly in Typst. For now, only generates with CMYK
colors (as it is by far the most used).

I personally place one of these test on all my exam papers to ensure the
printerâs quality over time.


= *based*

=  based

*Latest Version:* 0.2.0

Encoder and decoder for base64, base32, and base16.

A package for encoding and decoding in base64, base32, and base16.


= *i-figured*

=  i-figured

*Latest Version:* 0.2.4

Configurable figure and equation numbering per section.

Configurable figure numbering per section.


= *yats*

=  yats

*Latest Version:* 0.1.0

Serialization module for Typst

serialize the Typst objects into bytes and deserialize the bytes into Typst
objects


= *zhconv*

=  zhconv

*Latest Version:* 0.3.1

Convert Chinese text between Traditional/Simplified and regional variants.
ä¸­æç®ç¹åå°åè©è½æ

zhconv-typst converts Chinese text between Traditional, Simplified and
regional variants in typst, utilizing [ zhconv-rs
](https://github.com/Gowee/zhconv-rs) .


= *in-dexter*

=  in-dexter

*Latest Version:* 0.5.3

Hand Picked Index for Typst.

Automatically create a handcrafted index in [ typst ](https://typst.app/) .
This typst component allows the automatic creation of an Index page with
entries that have been manually marked in the document by its authors. This,
in times of advanced search functionality, seems somewhat outdated, but a
handcrafted index like this allows the authors to point the reader to just the
right location in the document.

â ï¸ Typst is in beta and evolving, and this package evolves with it. As a
result, no backward compatibility is guaranteed yet. Also, the package itself
is under development and fine-tuning.


= *plotst*

=  plotst

*Latest Version:* 0.2.0

A library to draw a variety of graphs and plots to use in your papers

A Typst library for drawing graphs and plots. Made by Gewi413 and Pegacraffft


= *ttt-utils*

=  ttt-utils

*Latest Version:* 0.1.2

A collection of tools to make a teachers life easier.

` ttt-utils ` is the core package of the [ typst-teacher-tools collection
](https://github.com/jomaway/typst-teacher-templates) .


= *pyrunner*

=  pyrunner

*Latest Version:* 0.2.0

Run python code in typst.

Run python code in [ typst ](https://typst.app/) using [ RustPython
](https://github.com/RustPython/RustPython) .


= *diverential*

=  diverential

*Latest Version:* 0.2.0

Format differentials conveniently.

` diverential ` is a [ Typst ](https://github.com/typst/typst) package
simplifying the typesetting of differentials. It is the equivalent to
LaTeXâs ` diffcoeff ` , though not as mature.


= *subpar*

=  subpar

*Latest Version:* 0.2.0

Create sub figures easily.

Subpar is a [ Typst ](https://typst.app/) package for creating sub figures.


= *example*

=  example

*Latest Version:* 0.1.0

An example package.

An example package demonstrating the structure of a Typst package.

Displays the text âThis is an example!â when included and exports four
functions ` add ` , ` sub ` , ` mul ` , and ` div ` that perform the
respective mathematical operations on two operands.


= *t4t*

=  t4t

*Latest Version:* 0.3.2

A utility package for typst package authors

> A utility package for typst package authors.

*Tools for Typst* ( ` t4t ` in short) is a utility package for [ Typst
](https://github.com/typst/packages/raw/main/packages/preview/t4t/0.3.2/typst/typst)
package and template authors. It provides solutions to some recurring tasks in
package development.

The package can be imported or any useful parts of it copied into a project.
It is perfectly fine to treat ` t4t ` as a snippet collection and to pick and
choose only some useful functions. For this reason, most functions are
implemented without further dependencies.

Hopefully, this collection will grow over time with _Typst_ to provide
solutions for common problems.


= *babel*

=  babel

*Latest Version:* 0.1.1

Redact text by replacing it with random characters

[ ![Package on the Typst
Universe](https://img.shields.io/badge/Typst_Universe-fdfdfd?logo=typst)
](https://typst.app/universe/package/babel) [ ![Babelâs Git
repository](https://img.shields.io/badge/Git_repo-fdfdfd?logo=codeberg)
](https://codeberg.org/afiaith/babel) [ ![A precompiled PDF file of the
manual](https://img.shields.io/badge/%F0%9F%93%96%20manual-.pdf-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/docs/manual.pdf)
[ ![Licence: MIT-0](https://img.shields.io/badge/licence-
MIT0-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/LICENSE)
[ ![Codeberg
release](https://img.shields.io/gitea/v/release/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=239dad)
](https://codeberg.org/afiaith/babel/releases/) [ ![Codeberg
stars](https://img.shields.io/gitea/stars/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=fdfdfd&logo=codeberg)
](https://codeberg.org/afiaith/babel/stars)

This package provides functions that replace actual text with random
characters, which is useful for redacting confidential information or sharing
the design and structure of an existing document without disclosing the
content itself. A variety of ready-made sets of characters for replacement are
available (75 in total; termed _alphabets_ ), representing diverse writing
systems, codes, notations and symbols. Some of these are more conservative
(such as emulating redaction using a wide black pen) and many are more
whimsical, as demonstrated by the following example:


= *outline-summaryst*

=  outline-summaryst

*Latest Version:* 0.1.0

A basic template for including a summary for each entry in the table of
contents. Useful for writing books.


= *blinky*

=  blinky

*Latest Version:* 0.1.0

Typesets paper titles in bibliographies as hyperlinks.

This package permits the creation of Typst bibliographies in which paper
titles are typeset as hyperlinks. Hereâs an example (with links typeset in
blue):

![](https://raw.githubusercontent.com/alexanderkoller/typst-
blinky/main/examples/screenshot.png)

The bibliography is generated from a Bibtex file, and citations are done with
the usual Typst mechanisms. The hyperlinks are specified through DOI or URL
fields in the Bibtex entries; if such a field is present, the title of the
entry will be automatically typeset as a hyperlink.

See [ here ](https://github.com/alexanderkoller/typst-
blinky/tree/main/examples) for a full example.


= *iconic-salmon-svg*

=  iconic-salmon-svg

*Latest Version:* 1.1.0

A Typst library for Social Media references with scalable vector graphics
icons.

The ` iconic-salmon-svg ` package is designed to help you create your
curriculum vitae (CV). It allows you to easily reference your social media
profiles with the typical icon of the service plus a link to your profile.
The package name is a combination of the acronym _SociAL Media icONs_ and the
word _iconic_ because all these icons have an iconic design (and iconic also
contains the word _icon_ ).


= *linguify*

=  linguify

*Latest Version:* 0.4.1

Load strings for different languages easily

Load strings for different languages easily. This can be useful if you create
a package or template for multilingual usage.


= *tbl*

=  tbl

*Latest Version:* 0.0.4

Complex tables, written concisely

This is a library for [ Typst ](https://typst.app/) built upon Pg Bielâs
fabulous [ ` tablex ` ](https://github.com/PgBiel/typst-tablex) library.

It allows the creation of complex tables in Typst using a compact syntax based
on the ` tbl ` preprocessor for the traditional UNIX TROFF typesetting system.
There are also some novel features that are not currently offered by Typst
itself or ` tablex ` , namely:

  - Decimal point alignment (using the ` decimalpoint ` region option and ` N ` -classified columns)
  - Columns of equal width (using the ` e ` column modifier)
  - Columns with a guaranteed minimum width (using the ` w ` column modifier)
  - Cells that are ignored when calculating column widths (using the ` z ` column modifier)
  - Equation tables (using the ` mode: "math" ` region option)

Many other features exist to condense common configurations to a concise
syntax.

For example:


= *km*

=  km

*Latest Version:* 0.1.0

Draw simple Karnaugh maps

Draw simple Karnaugh maps. Use with:


= *alchemist*

=  alchemist

*Latest Version:* 0.1.2

A package to render skeletal formulas using cetz

Featured  Package

Alchemist is a typst package to draw skeletal formulae. It is based on the [
chemfig ](https://ctan.org/pkg/chemfig) package. The main goal of alchemist is
not to reproduce one-to-one chemfig. Instead, it aims to provide an interface
to achieve the same results in Typst.


= *showman*

=  showman

*Latest Version:* 0.1.2

Eval & show typst code outputs inline with their source

![](https://www.github.com/ntjess/showman/raw/v0.1.0/showman.jpg)

- * *

Automagic tools to smooth the package documentation & development process.

  - Package your files for local typst installation or PR submission in one command

  - Provide your readme in typst format with code block examples, and let ` showman ` do the rest! In one command, it will the readme to markdown and render code block outputs as included images.

    - Bonus points â let ` showman ` know your repository path and it will ensure images will properly appear in your readme even after your package has been distributed through typstâs registry.
  - Execute non-typst code blocks and render their outputs

*Prerequisites* : Make sure you have ` typst ` and ` pandoc ` available from
the command line. Then, in a python virtual environment, run:


= *cineca*

=  cineca

*Latest Version:* 0.4.0

A package to create calendar with events.

CINECA Is Not an Electric Calendar App, but a Typst package to create
calendars with events.


= *examit*

=  examit

*Latest Version:* 0.1.1

An exam template based on the MIT LaTeX exam.cls

A Typst exam package based on the MIT LaTeX [ exam
](https://ctan.org/pkg/exam) package


= *scrutinize*

=  scrutinize

*Latest Version:* 0.3.0

A library for building exams, tests, etc. with Typst

Scrutinize is a library for building exams, tests, etc. with Typst. It has
three general areas of focus:

  - It helps with grading information: record the points that can be reached for each question and make them available for creating grading keys.
  - It provides a selection of question writing utilities, such as multiple choice or true/false questions.
  - It supports the creation of sample solutions by allowing to switch between the normal and âpre-filledâ exam.

Right now, providing a styled template is not part of this packageâs scope.
Also, visual customization of the provided question templates is currently
nonexistent.

See the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/scrutinize/0.3.0/docs/manual.pdf)
for details.


= *latedef*

=  latedef

*Latest Version:* 0.1.0

Use now, define later

_Use now, define later!_


= *badgery*

=  badgery

*Latest Version:* 0.1.1

Adds styled badges, boxes and menu actions.

This package defines some colourful badges and boxes around text that
represent user interface actions such as a click or following a menu.

For examples have a look at the example [ main.typ
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/example/main.typ)
, [ main.pdf
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/exmaple/main.pdf)
.

![example](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/demo.png)


= *jurz*

=  jurz

*Latest Version:* 0.1.0

Randziffern in Typst

[ _Randziffern_
](https://de.wikipedia.org/w/index.php?title=Randnummer&oldid=231943223) (also
called _Randnummern_ ) are a way to reference text passages in a document,
independent of the page number or the section number. They are used in many
German legal texts, for example. This package provides a way to create
_Randziffern_ in Typst.


= *shadowed*

=  shadowed

*Latest Version:* 0.1.2

Box shadows for Typst

Box shadows for [ Typst ](https://typst.app/) .


= *chronos*

=  chronos

*Latest Version:* 0.2.0

A package to draw sequence diagrams with CeTZ

A Typst package to draw sequence diagrams with CeTZ

- * *

This package lets you render sequence diagrams directly in Typst. The
following boilerplate code creates an empty sequence diagram with two
participants:

*Typst* |  *Result*
---|---


    #import "@preview/chronos:0.2.0"
    #chronos.diagram({
      import chronos: *
      _par("Alice")
      _par("Bob")
    })


|
![](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/readme/boilerplate.png)

> _Disclaimer_
>  The package cannot parse PlantUML syntax for the moment, and thus requires
> the use of element functions, as shown in the examples. A PlantUML parser is
> in the TODO list, just not the top priority


= *crudo*

=  crudo

*Latest Version:* 0.1.1

Take slices from raw blocks

Crudo allows conveniently working with ` raw ` blocks in terms of individual
lines. It allows you to e.g.

  - filter lines by content
  - filter lines by range (slicing)
  - transform lines
  - join multiple raw blocks

While transforming the content, the original [ parameters
](https://typst.app/docs/reference/text/raw/#parameters) specified on the
given raw block will be preserved.


= *gentle-clues*

=  gentle-clues

*Latest Version:* 1.0.0

A package to simply create and add some admonitions to your documents.

Featured  Package

Simple admonitions for typst. Add predefined or define your own.

Inspired from [ mdbook-admonish ](https://tommilligan.github.io/mdbook-
admonish/) .


= *neoplot*

=  neoplot

*Latest Version:* 0.0.2

Gnuplot in Typst

A Typst package to use [ gnuplot ](http://www.gnuplot.info/) in Typst.


= *cmarker*

=  cmarker

*Latest Version:* 0.1.1

Transpile CommonMark Markdown to Typst, from within Typst!

#set document(title: "cmarker.typ"); #set page(numbering: "1", number-align:
center); #set text(lang: "en"); #align(center, text(weight: 700,
1.75em)[cmarker.typ]); #set heading(numbering: "1."); #show link: c =>
text(underline(c), fill: blue); #set image(height: 2em); #show par: set
block(above: 1.2em, below: 1.2em)
#align(center)[https://github.com/SabrinaJewson/cmarker.typ]; #"

This package enables you to write CommonMark Markdown, and import it directly
into Typst.

` simple.typ ` |  ` simple.md `
---|---


    #import "@preview/cmarker:0.1.1"

    #cmarker.render(read("simple.md"))


|


= *equate*

=  equate

*Latest Version:* 0.2.1

Breakable equations with improved numbering.

Featured  Package

A package for improved layout of equations and mathematical expressions.

When applied, this package will split up multi-line block equations into
multiple elements, so that each line can be assigned a separate number. By
default, the equation counter is incremented for each line, but this behavior
can be changed by setting the ` sub-numbering ` argument to ` true ` . In this
case, the equation counter will only be incremented once for the entire block,
and each line will be assigned a sub-number like ` 1a ` , ` 2.1 ` , or
similar, depending on the set equation numbering. You can also set the `
number-mode ` argument to ` "label" ` to only number labelled lines. If a
label is only applied to the full equation, all lines will be numbered.

This splitting also makes it possible to spread equations over page boundaries
while keeping alignment in place, which can be useful for long derivations or
proofs. This can be configured by the ` breakable ` parameter of the ` equate
` function, or by setting the ` breakable ` parameter of ` block ` for
equations via a show-set rule. Additionally, the alignment of the equation
number is improved, so that it always matches the baseline of the equation.

If you want to create a âstandardâ equation with a single equation number
centered across all lines, you can attach the ` <equate:revoke> ` label to the
equation. This will disable the effect of this package for the current
equation. This label can also be used in single lines of an equation to
disable numbering for that line only.


= *titleize*

=  titleize

*Latest Version:* 0.1.1

Turn strings into title case

Small wrapper around the [ titlecase ](https://crates.io/crates/titlecase)
library to convert text to title case. It follows the [ rules defined by John
Gruber ](https://daringfireball.net/2008/05/title_case) . For more details,
refer to the library.

` titlecase ` applies a show rule, that by default transforms every string of
at least four characters. This limit can be changed with the ` limit `
parameter. Especially with equations, the results can be a bit unpredictable,
so proceed with care.


= *jogs*

=  jogs

*Latest Version:* 0.2.3

QuickJS JavaScript runtime for Typst

Quickjs javascript runtime for typst. This package provides a typst plugin for
evaluating javascript code.


= *funarray*

=  funarray

*Latest Version:* 0.4.0

Package providing convenient functional functions to use on arrays.

This package provides some convinient functional functions for [ typst
](https://typst.app/) to use on arrays.


= *riesketcher*

=  riesketcher

*Latest Version:* 0.2.1

A package to draw Riemann sums (and their plots) of a function with CeTZ.

A package to draw Riemann sums (and their plots) of a function with CeTZ.

Usage example and docs: [ manual.pdf
](https://github.com/ThatOneCalculator/riesketcher/blob/main/manual.pdf)


= *timeliney*

=  timeliney

*Latest Version:* 0.1.0

Create Gantt charts in Typst.

Featured  Package

Create Gantt charts automatically with Typst!

Hereâs a fully-featured example:


= *bookletic*

=  bookletic

*Latest Version:* 0.3.0

Create beautiful booklets with ease.

Create beautiful booklets with ease.

The current version of this library (0.3.0) contains a single function to take
in an array of content blocks and order them into a ready to print booklet,
bulletin, etc. No need to fight with printer settings or document converters.


= *shiroa*

=  shiroa

*Latest Version:* 0.1.2

A simple tool for creating modern online books in pure typst.

[ _shiroa_ ](https://github.com/Myriad-Dreamin/shiroa) ( _Shiro A_ , or _The
White_ , or _äºç¬º_ ) is a simple tool for creating modern online (cloud)
books in pure typst.


= *pintorita*

=  pintorita

*Latest Version:* 0.1.2

Package to draw Sequence Diagrams, Entity Relationship Diagrams, Component
Diagrams, Activity Diagrams, Mind Maps, Gantt Diagrams, and DOT Diagrams based
on Pintora which is heavily influenced by mermaid.js and plantuml.

[ Pintora ](https://pintorajs.vercel.app/)

Typst package for drawing the following from markup:

  - Sequence Diagram
  - Entity Relationship Diagram
  - Component Diagram
  - Activity Diagram
  - Mind Map Experiment
  - Gantt Diagram Experiment
  - DOT Diagram Experiment

![](https://github.com/typst/packages/raw/main/packages/preview/pintorita/0.1.2/pintorita.svg)


= *iconic-salmon-fa*

=  iconic-salmon-fa

*Latest Version:* 1.0.0

A Typst library for Social Media references with icons based on Font Awesome.

The ` iconic-salmon-fa ` package is designed to help you create your
curriculum vitae (CV). It allows you to easily reference your social media
profiles with the typical icon of the service plus a link to your profile.
The package name is a combination of the acronym _SociAL Media icONs_ and the
word _iconic_ because all these icons have an iconic design (and iconic also
contains the word _icon_ ).


= *leipzig-glossing*

=  leipzig-glossing

*Latest Version:* 0.4.0

Linguistic interlinear glosses according to the Leipzig Glossing rules

` leipzig-glossing ` is a [ Typst ](https://github.com/typst/typst) library
for creating interlinear morpheme-by-morpheme glosses according to the [
Leipzig glossing rules ](https://www.eva.mpg.de/lingua/pdf/Glossing-Rules.pdf)
.

Run ` typst compile documentation.typ ` in the root of the repository to
generate a pdf file with examples and documentation. This command is also
codified in the accompanying [ justfile ](https://github.com/casey/just) as `
just build-doc ` .

The definitions intended for use by end users are the ` gloss ` and `
numbered-gloss ` functions, and the ` abbreviations ` submodule.


= *numblex*

=  numblex

*Latest Version:* 0.2.0

Numbering helper.

How to number the heading like this?

  - Appendix A. XXXX
    - A.1. YYY
    - A.2. ZZZ

Or this?

  - ä¸ãè¯é¢
    - 1\. è®ºç¹
      - (1) è¯æ®

You might use a function:


= *syntree*

=  syntree

*Latest Version:* 0.2.0

Linguistics syntax/parse tree rendering

*syntree* is a typst package for rendering syntax trees / parse trees (the
kind linguists use).

The name and syntax are inspired by Miles Shangâs [ syntree
](https://github.com/mshang/syntree) . Hereâs an example to get started:


= *chordx*

=  chordx

*Latest Version:* 0.5.0

A package to write song lyrics with chord diagrams in Typst.

A package to write song lyrics with chord diagrams in Typst.

*Table of Contents*

  - [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#introduction)
  - [ Usage ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#usage)
    - [ Typst Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#typst-packages)
    - [ Local Packages ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#local-packages)
  - [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#documentation)
  - [ Examples ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#examples)
    - [ Chart Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#chart-chords)
    - [ Piano Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#piano-chords)
    - [ Single Chords ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#single-chords)
  - [ Changelog ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#changelog)
  - [ License ](https://github.com/typst/packages/raw/main/packages/preview/chordx/0.5.0/#license)


= *hidden-bib*

=  hidden-bib

*Latest Version:* 0.1.1

Create hidden bibliographies or bibliographies with unmentioned (hidden)
citations.

[ GitHub Repository including Examples ](https://github.com/pklaschka/typst-
hidden-bib)

A Typst package to create hidden bibliographies or bibliographies with
unmentioned (hidden) citations.


= *jlyfish*

=  jlyfish

*Latest Version:* 0.1.0

Julia code evaluation inside your Typst document

![logo](https://github.com/typst/packages/raw/main/packages/preview/jlyfish/0.1.0/assets/logo.svg)

Jlyfish is a package for Julia and Typst that allows you to integrate Julia
computations in your Typst document.

[ ![Static Badge](https://img.shields.io/badge/docs-wiki-blue)
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) ![GitHub
License](https://img.shields.io/github/license/andreasKroepelin/TypstJlyfish.jl)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/TypstJlyfish.jl)
[ ![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/TypstJlyfish.jl)
](https://github.com/andreasKroepelin/TypstJlyfish.jl)

You should use Jlyfish if you want to write a Typst document and have some of
the content automatically produced by Julia code but want the source code for
that within your document source. It fills a similar role as [ PythonTeX
](https://github.com/gpoore/pythontex) does for Python and LaTeX. Note that
this is different from tools like [ Quarto ](https://quarto.org/) where you
write documents in Markdown, also integrate some Julia code, but then might
use Typst only as a backend to produce the final document.

See below for a quick introduction or read the [ wiki
](https://github.com/andreasKroepelin/TypstJlyfish.jl/wiki) for an in depth
explanation.

Since Jlyfish builds a bridge between Julia and Typst, we also have to get two
things running. First, install the Julia package ` TypstJlyfish ` from the
general registry by executing


= *edgeframe*

=  edgeframe

*Latest Version:* 0.1.0

For quick paper setups.

Custom margins and other components for page setup or layout.


= *acrostiche*

=  acrostiche

*Latest Version:* 0.4.1

Manage acronyms and their definitions in Typst.

Manages acronyms so you donât have to.


= *babble-bubbles*

=  babble-bubbles

*Latest Version:* 0.1.0

A package to create callouts.

A package to create callouts in typst, inspired by the [ Obsidan
](https://obsidian.md/) callouts.

Use preset callouts, or create your own!

![callouts_example](https://github.com/typst/packages/raw/main/packages/preview/babble-
bubbles/0.1.0/examples/callouts.png)


= *prequery*

=  prequery

*Latest Version:* 0.1.0

library for extracting metadata for preprocessing from a typst document

This package helps extracting metadata for preprocessing from a typst
document, for example image URLs for download from the web. Typst compilations
are sandboxed: it is not possible for Typst packages, or even just a Typst
document itself, to access the âouside worldâ. This sandboxing of Typst
has good reasons. Yet, it is often convenient to trade a bit of security for
convenience by weakening it. Prequery helps with that by providing some simple
scaffolding for supporting preprocessing of documents.

Hereâs an example for referencing images from the internet:


= *solving-physics*

=  solving-physics

*Latest Version:* 0.1.0

A package to formulate the solution to a physical problem

The easiest method is to import ` solving-physics: task ` from the ` @preview
` package:


= *cheq*

=  cheq

*Latest Version:* 0.2.2

Write markdown-like checklist easily.

Write markdown-like checklist easily.


= *kouhu*

=  kouhu

*Latest Version:* 0.1.1

Chinese lipsum text generator; ä¸­æä¹±æ°åæï¼Lorem Ipsumï¼çæå¨

` kouhu ` is a Chinese lipsum text generator for [ Typst ](https://typst.app/)
. It provides a set of built-in text samples containing both Simplified and
Traditional Chinese characters. You can choose from generated fake text,
classic or modern Chinese literature, or specify your own text.

` kouhu ` is inspired by [ zhlipsum ](https://ctan.org/pkg/zhlipsum) LaTeX
package and [ roremu ](https://typst.app/universe/package/roremu) Typst
package.

All [ sample text
](https://github.com/typst/packages/raw/main/packages/preview/kouhu/0.1.1/data/zhlipsum.json)
is excerpted from ` zhlipsum ` LaTeX package (see Appendix for details).


= *tabut*

=  tabut

*Latest Version:* 1.0.2

Display data as tables.

_Powerful, Simple, Concise_

A Typst plugin for turning data into tables.


= *typslides*

=  typslides

*Latest Version:* 1.2.1

Minimalistic Typst slides

![logo](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/img/logo.png)

![License](https://img.shields.io/badge/license-GPLv3-blue) [
![Contributors](https://badgen.net/github/contributors/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
[ ![Release](https://badgen.net/github/release/manjavacas/typslides)
](https://github.com/typst/packages/raw/main/packages/preview/typslides/1.2.1/)
![GitHub Repo stars](https://img.shields.io/github/stars/manjavacas/typslides)

_Minimalistic[ typst ](https://typst.app/) slides! _

This is a simple usage example:


= *modpattern*

=  modpattern

*Latest Version:* 0.1.0

Easily create patterns in typst.

This package provides exactly one function: ` modpattern `

Itâs primary goal is to create make this: ![comparison
table](https://github.com/typst/packages/raw/main/packages/preview/modpattern/0.1.0/examples/comparison.png)


= *statastic*

=  statastic

*Latest Version:* 1.0.0

A library to calculate statistics for numerical data

A library to calculate statistics for numerical data in typst.


= *mitex*

=  mitex

*Latest Version:* 0.2.4

LaTeX support for Typst, powered by Rust and WASM.

*[ LaTeX ](https://www.latex-project.org/) support for [ Typst
](https://typst.app/) , powered by [ Rust ](https://www.rust-lang.org/) and [
WASM ](https://webassembly.org/) . *

[ MiTeX ](https://github.com/mitex-rs/mitex) processes LaTeX code into an
abstract syntax tree (AST). Then it transforms the AST into Typst code and
evaluates code into Typst content by ` eval ` function.

MiTeX has been proved to be practical on a large project. It has already
correctly converted 32.5k equations from [ OI Wiki ](https://github.com/OI-
wiki/OI-wiki) . Compared to [ texmath ](https://github.com/jgm/texmath) ,
MiTeX has a better display effect and performance in that wiki project. It is
also more easy to use, since importing MiTeX to Typst is just one line of
code, while texmath is an external program.

In addition, MiTeX is not only *SMALL* but also *FAST* ! MiTeX has a size
of just about 185 KB, comparing that texmath has a size of 17 MB. A not strict
but intuitive comparison is shown below. To convert 32.5k equations from OI
Wiki, texmath takes about 109s, while MiTeX WASM takes only 2.28s and MiTeX
x86 takes merely 0.085s.

Thanks to [ @Myriad-Dreamin ](https://github.com/Myriad-Dreamin) , he
completed the most complex development work: developing the parser for
generating AST.


= *diagraph*

=  diagraph

*Latest Version:* 0.3.0

Draw graphs with Graphviz. Use mathematical formulas as labels.

A simple Graphviz binding for Typst using the WebAssembly plugin system.


= *crossregex*

=  crossregex

*Latest Version:* 0.2.0

A crossword-like regex game written in Typst.

A crossword-like game written in Typst. You should fill in letters to satisfy
regular expression constraints. Currently, _squares_ and _regular hexagons_
are supported.

> [!note] This is not a puzzle solver, but a puzzle layout builder.

It takes inspiration from a web image, which derives our standard example.

![standard](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/standard.svg)

![sudoku](https://github.com/typst/packages/raw/main/packages/preview/crossregex/0.2.0/examples/sudoku-
main.svg)

More examples and source code: [ https://github.com/QuadnucYard/crossregex-typ
](https://github.com/QuadnucYard/crossregex-typ)


= *lineal*

=  lineal

*Latest Version:* 0.1.0

Build elegent slide decks with Typst

IPA: /ËlÉªniÉl/

Made up of, or having the characteristic of, lines.

Lineal is a Typst template for generating beautifully clean and configurably
awesome slides.

![Demo slide
deck](https://github.com/typst/packages/raw/main/packages/preview/lineal/0.1.0/assets/img/demo.gif)


= *polylux*

=  polylux

*Latest Version:* 0.3.1

Presentation slides creation with Typst

Featured  Package

This is a package for creating presentation slides in [ Typst
](https://typst.app/) . Read the [ book
](https://andreaskroepelin.github.io/polylux/book) to learn all about it and
click [ here ](https://andreaskroepelin.github.io/polylux/book/changelog.html)
to see whatâs new!

If you like it, consider [ giving a star on GitHub
](https://github.com/andreasKroepelin/polylux) !

[ ![Book badge](https://img.shields.io/badge/docs-book-green)
](https://andreaskroepelin.github.io/polylux/book)
![GitHub](https://img.shields.io/github/license/andreasKroepelin/polylux)
![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/andreasKroepelin/polylux)
![GitHub Repo
stars](https://img.shields.io/github/stars/andreasKroepelin/polylux) [ ![Demo
badge](https://img.shields.io/badge/demo-pdf-blue)
](https://github.com/andreasKroepelin/polylux/releases/latest/download/demo.pdf)
![Themes badge](https://img.shields.io/badge/themes-5-aqua)


= *boxr*

=  boxr

*Latest Version:* 0.1.0

A modular, and easy to use, package for creating cardboard cutouts in Typst.

Boxr is a modular, and easy to use, package for creating cardboard cutouts in
Typst.


= *chromo*

=  chromo

*Latest Version:* 0.1.0

Generate printer tests (likely CMYK) in typst.

Generate printer tests directly in Typst. For now, only generates with CMYK
colors (as it is by far the most used).

I personally place one of these test on all my exam papers to ensure the
printerâs quality over time.


= *based*

=  based

*Latest Version:* 0.2.0

Encoder and decoder for base64, base32, and base16.

A package for encoding and decoding in base64, base32, and base16.


= *i-figured*

=  i-figured

*Latest Version:* 0.2.4

Configurable figure and equation numbering per section.

Configurable figure numbering per section.


= *yats*

=  yats

*Latest Version:* 0.1.0

Serialization module for Typst

serialize the Typst objects into bytes and deserialize the bytes into Typst
objects


= *zhconv*

=  zhconv

*Latest Version:* 0.3.1

Convert Chinese text between Traditional/Simplified and regional variants.
ä¸­æç®ç¹åå°åè©è½æ

zhconv-typst converts Chinese text between Traditional, Simplified and
regional variants in typst, utilizing [ zhconv-rs
](https://github.com/Gowee/zhconv-rs) .


= *in-dexter*

=  in-dexter

*Latest Version:* 0.5.3

Hand Picked Index for Typst.

Automatically create a handcrafted index in [ typst ](https://typst.app/) .
This typst component allows the automatic creation of an Index page with
entries that have been manually marked in the document by its authors. This,
in times of advanced search functionality, seems somewhat outdated, but a
handcrafted index like this allows the authors to point the reader to just the
right location in the document.

â ï¸ Typst is in beta and evolving, and this package evolves with it. As a
result, no backward compatibility is guaranteed yet. Also, the package itself
is under development and fine-tuning.


= *plotst*

=  plotst

*Latest Version:* 0.2.0

A library to draw a variety of graphs and plots to use in your papers

A Typst library for drawing graphs and plots. Made by Gewi413 and Pegacraffft


= *ttt-utils*

=  ttt-utils

*Latest Version:* 0.1.2

A collection of tools to make a teachers life easier.

` ttt-utils ` is the core package of the [ typst-teacher-tools collection
](https://github.com/jomaway/typst-teacher-templates) .


= *pyrunner*

=  pyrunner

*Latest Version:* 0.2.0

Run python code in typst.

Run python code in [ typst ](https://typst.app/) using [ RustPython
](https://github.com/RustPython/RustPython) .


= *diverential*

=  diverential

*Latest Version:* 0.2.0

Format differentials conveniently.

` diverential ` is a [ Typst ](https://github.com/typst/typst) package
simplifying the typesetting of differentials. It is the equivalent to
LaTeXâs ` diffcoeff ` , though not as mature.


= *subpar*

=  subpar

*Latest Version:* 0.2.0

Create sub figures easily.

Subpar is a [ Typst ](https://typst.app/) package for creating sub figures.


= *example*

=  example

*Latest Version:* 0.1.0

An example package.

An example package demonstrating the structure of a Typst package.

Displays the text âThis is an example!â when included and exports four
functions ` add ` , ` sub ` , ` mul ` , and ` div ` that perform the
respective mathematical operations on two operands.


= *t4t*

=  t4t

*Latest Version:* 0.3.2

A utility package for typst package authors

> A utility package for typst package authors.

*Tools for Typst* ( ` t4t ` in short) is a utility package for [ Typst
](https://github.com/typst/packages/raw/main/packages/preview/t4t/0.3.2/typst/typst)
package and template authors. It provides solutions to some recurring tasks in
package development.

The package can be imported or any useful parts of it copied into a project.
It is perfectly fine to treat ` t4t ` as a snippet collection and to pick and
choose only some useful functions. For this reason, most functions are
implemented without further dependencies.

Hopefully, this collection will grow over time with _Typst_ to provide
solutions for common problems.


= *babel*

=  babel

*Latest Version:* 0.1.1

Redact text by replacing it with random characters

[ ![Package on the Typst
Universe](https://img.shields.io/badge/Typst_Universe-fdfdfd?logo=typst)
](https://typst.app/universe/package/babel) [ ![Babelâs Git
repository](https://img.shields.io/badge/Git_repo-fdfdfd?logo=codeberg)
](https://codeberg.org/afiaith/babel) [ ![A precompiled PDF file of the
manual](https://img.shields.io/badge/%F0%9F%93%96%20manual-.pdf-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/docs/manual.pdf)
[ ![Licence: MIT-0](https://img.shields.io/badge/licence-
MIT0-239dad?labelColor=fdfdfd)
](https://github.com/typst/packages/raw/main/packages/preview/babel/0.1.1/LICENSE)
[ ![Codeberg
release](https://img.shields.io/gitea/v/release/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=239dad)
](https://codeberg.org/afiaith/babel/releases/) [ ![Codeberg
stars](https://img.shields.io/gitea/stars/afiaith/babel?gitea_url=https%3A%2F%2Fcodeberg.org&labelColor=fdfdfd&color=fdfdfd&logo=codeberg)
](https://codeberg.org/afiaith/babel/stars)

This package provides functions that replace actual text with random
characters, which is useful for redacting confidential information or sharing
the design and structure of an existing document without disclosing the
content itself. A variety of ready-made sets of characters for replacement are
available (75 in total; termed _alphabets_ ), representing diverse writing
systems, codes, notations and symbols. Some of these are more conservative
(such as emulating redaction using a wide black pen) and many are more
whimsical, as demonstrated by the following example:


= *outline-summaryst*

=  outline-summaryst

*Latest Version:* 0.1.0

A basic template for including a summary for each entry in the table of
contents. Useful for writing books.


= *blinky*

=  blinky

*Latest Version:* 0.1.0

Typesets paper titles in bibliographies as hyperlinks.

This package permits the creation of Typst bibliographies in which paper
titles are typeset as hyperlinks. Hereâs an example (with links typeset in
blue):

![](https://raw.githubusercontent.com/alexanderkoller/typst-
blinky/main/examples/screenshot.png)

The bibliography is generated from a Bibtex file, and citations are done with
the usual Typst mechanisms. The hyperlinks are specified through DOI or URL
fields in the Bibtex entries; if such a field is present, the title of the
entry will be automatically typeset as a hyperlink.

See [ here ](https://github.com/alexanderkoller/typst-
blinky/tree/main/examples) for a full example.


= *iconic-salmon-svg*

=  iconic-salmon-svg

*Latest Version:* 1.1.0

A Typst library for Social Media references with scalable vector graphics
icons.

The ` iconic-salmon-svg ` package is designed to help you create your
curriculum vitae (CV). It allows you to easily reference your social media
profiles with the typical icon of the service plus a link to your profile.
The package name is a combination of the acronym _SociAL Media icONs_ and the
word _iconic_ because all these icons have an iconic design (and iconic also
contains the word _icon_ ).


= *linguify*

=  linguify

*Latest Version:* 0.4.1

Load strings for different languages easily

Load strings for different languages easily. This can be useful if you create
a package or template for multilingual usage.


= *tbl*

=  tbl

*Latest Version:* 0.0.4

Complex tables, written concisely

This is a library for [ Typst ](https://typst.app/) built upon Pg Bielâs
fabulous [ ` tablex ` ](https://github.com/PgBiel/typst-tablex) library.

It allows the creation of complex tables in Typst using a compact syntax based
on the ` tbl ` preprocessor for the traditional UNIX TROFF typesetting system.
There are also some novel features that are not currently offered by Typst
itself or ` tablex ` , namely:

  - Decimal point alignment (using the ` decimalpoint ` region option and ` N ` -classified columns)
  - Columns of equal width (using the ` e ` column modifier)
  - Columns with a guaranteed minimum width (using the ` w ` column modifier)
  - Cells that are ignored when calculating column widths (using the ` z ` column modifier)
  - Equation tables (using the ` mode: "math" ` region option)

Many other features exist to condense common configurations to a concise
syntax.

For example:


= *km*

=  km

*Latest Version:* 0.1.0

Draw simple Karnaugh maps

Draw simple Karnaugh maps. Use with:


= *alchemist*

=  alchemist

*Latest Version:* 0.1.2

A package to render skeletal formulas using cetz

Featured  Package

Alchemist is a typst package to draw skeletal formulae. It is based on the [
chemfig ](https://ctan.org/pkg/chemfig) package. The main goal of alchemist is
not to reproduce one-to-one chemfig. Instead, it aims to provide an interface
to achieve the same results in Typst.


= *showman*

=  showman

*Latest Version:* 0.1.2

Eval & show typst code outputs inline with their source

![](https://www.github.com/ntjess/showman/raw/v0.1.0/showman.jpg)

- * *

Automagic tools to smooth the package documentation & development process.

  - Package your files for local typst installation or PR submission in one command

  - Provide your readme in typst format with code block examples, and let ` showman ` do the rest! In one command, it will the readme to markdown and render code block outputs as included images.

    - Bonus points â let ` showman ` know your repository path and it will ensure images will properly appear in your readme even after your package has been distributed through typstâs registry.
  - Execute non-typst code blocks and render their outputs

*Prerequisites* : Make sure you have ` typst ` and ` pandoc ` available from
the command line. Then, in a python virtual environment, run:


= *cineca*

=  cineca

*Latest Version:* 0.4.0

A package to create calendar with events.

CINECA Is Not an Electric Calendar App, but a Typst package to create
calendars with events.


= *examit*

=  examit

*Latest Version:* 0.1.1

An exam template based on the MIT LaTeX exam.cls

A Typst exam package based on the MIT LaTeX [ exam
](https://ctan.org/pkg/exam) package


= *scrutinize*

=  scrutinize

*Latest Version:* 0.3.0

A library for building exams, tests, etc. with Typst

Scrutinize is a library for building exams, tests, etc. with Typst. It has
three general areas of focus:

  - It helps with grading information: record the points that can be reached for each question and make them available for creating grading keys.
  - It provides a selection of question writing utilities, such as multiple choice or true/false questions.
  - It supports the creation of sample solutions by allowing to switch between the normal and âpre-filledâ exam.

Right now, providing a styled template is not part of this packageâs scope.
Also, visual customization of the provided question templates is currently
nonexistent.

See the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/scrutinize/0.3.0/docs/manual.pdf)
for details.


= *latedef*

=  latedef

*Latest Version:* 0.1.0

Use now, define later

_Use now, define later!_


= *badgery*

=  badgery

*Latest Version:* 0.1.1

Adds styled badges, boxes and menu actions.

This package defines some colourful badges and boxes around text that
represent user interface actions such as a click or following a menu.

For examples have a look at the example [ main.typ
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/example/main.typ)
, [ main.pdf
](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/exmaple/main.pdf)
.

![example](https://github.com/typst/packages/raw/main/packages/preview/badgery/0.1.1/demo.png)


= *jurz*

=  jurz

*Latest Version:* 0.1.0

Randziffern in Typst

[ _Randziffern_
](https://de.wikipedia.org/w/index.php?title=Randnummer&oldid=231943223) (also
called _Randnummern_ ) are a way to reference text passages in a document,
independent of the page number or the section number. They are used in many
German legal texts, for example. This package provides a way to create
_Randziffern_ in Typst.


= *shadowed*

=  shadowed

*Latest Version:* 0.1.2

Box shadows for Typst

Box shadows for [ Typst ](https://typst.app/) .


= *chronos*

=  chronos

*Latest Version:* 0.2.0

A package to draw sequence diagrams with CeTZ

A Typst package to draw sequence diagrams with CeTZ

- * *

This package lets you render sequence diagrams directly in Typst. The
following boilerplate code creates an empty sequence diagram with two
participants:

*Typst* |  *Result*
---|---


    #import "@preview/chronos:0.2.0"
    #chronos.diagram({
      import chronos: *
      _par("Alice")
      _par("Bob")
    })


|
![](https://github.com/typst/packages/raw/main/packages/preview/chronos/0.2.0/gallery/readme/boilerplate.png)

> _Disclaimer_
>  The package cannot parse PlantUML syntax for the moment, and thus requires
> the use of element functions, as shown in the examples. A PlantUML parser is
> in the TODO list, just not the top priority


= *crudo*

=  crudo

*Latest Version:* 0.1.1

Take slices from raw blocks

Crudo allows conveniently working with ` raw ` blocks in terms of individual
lines. It allows you to e.g.

  - filter lines by content
  - filter lines by range (slicing)
  - transform lines
  - join multiple raw blocks

While transforming the content, the original [ parameters
](https://typst.app/docs/reference/text/raw/#parameters) specified on the
given raw block will be preserved.


= *gentle-clues*

=  gentle-clues

*Latest Version:* 1.0.0

A package to simply create and add some admonitions to your documents.

Featured  Package

Simple admonitions for typst. Add predefined or define your own.

Inspired from [ mdbook-admonish ](https://tommilligan.github.io/mdbook-
admonish/) .


= *fervojo*

=  fervojo

*Latest Version:* 0.1.0

railroad for typst, powered by wasm

Use [ railroads ](https://github.com/lukaslueg/railroad_dsl) in your
documents.

You use the function by calling ` render(diagram-text, css) ` which renders
the diagram. There, ` diagram-text ` contains is the diagram itself and css is
the one used for the style, ` css ` is ` default-css() ` if you donât pass
it. Both fields can be strings, bytes or a raw [ raw
](https://typst.app/docs/reference/text/raw/) block.


= *tiaoma*

=  tiaoma

*Latest Version:* 0.2.1

Barcode and QRCode generator for Typst using Zint.

Featured  Package

[ tiaoma(æ¡ç ) ](https://github.com/enter-tainer/zint-wasi) is a barcode
generator for typst. It compiles [ zint ](https://github.com/zint/zint) to
wasm and use it to generate barcode. It support nearly all common barcode
types. For a complete list of supported barcode types, see [ zintâs
documentation ](https://zint.org.uk/) :

  - Australia Post
    - Standard Customer
    - Reply Paid
    - Routing
    - Redirection
  - Aztec Code
  - Aztec Runes
  - Channel Code
  - Codabar
  - Codablock F
  - Code 11
  - Code 128 with automatic subset switching
  - Code 16k
  - Code 2 of 5 variants:
    - Matrix 2 of 5
    - Industrial 2 of 5
    - IATA 2 of 5
    - Datalogic 2 of 5
    - Interleaved 2 of 5
    - ITF-14
  - Deutsche Post Leitcode
  - Deutsche Post Identcode
  - Code 32 (Italian pharmacode)
  - Code 3 of 9 (Code 39)
  - Code 3 of 9 Extended (Code 39 Extended)
  - Code 49
  - Code 93
  - Code One
  - Data Matrix ECC200
  - DotCode
  - Dutch Post KIX Code
  - EAN variants:
    - EAN-13
    - EAN-8
  - Grid Matrix
  - GS1 DataBar variants:
    - GS1 DataBar
    - GS1 DataBar Stacked
    - GS1 DataBar Stacked Omnidirectional
    - GS1 DataBar Expanded
    - GS1 DataBar Expanded Stacked
    - GS1 DataBar Limited
  - Han Xin
  - Japan Post
  - Korea Post
  - LOGMARS
  - MaxiCode
  - MSI (Modified Plessey)
  - PDF417 variants:
    - PDF417 Truncated
    - PDF417
    - Micro PDF417
  - Pharmacode
  - Pharmacode Two-Track
  - Pharmazentralnummer
  - POSTNET / PLANET
  - QR Code
  - rMQR
  - Royal Mail 4-State (RM4SCC)
  - Royal Mail 4-State Mailmark
  - Telepen
  - UPC variants:
    - UPC-A
    - UPC-E
  - UPNQR
  - USPS OneCode (Intelligent Mail)


= *pavemat*

=  pavemat

*Latest Version:* 0.1.0

Style matrices with custom paths, strokes and fills for appealing
visualizations.

Featured  Package

![pavement +
matrix](https://github.com/typst/packages/raw/main/packages/preview/pavemat/0.1.0/examples/logo.svg)

repo: [ https://github.com/QuadnucYard/pavemat
](https://github.com/QuadnucYard/pavemat)


= *fruitify*

=  fruitify

*Latest Version:* 0.1.1

Replace letters in equations with fruit emoji

Make your equations more fruity!

This package automatically replaces any single letters in equations with fruit
emoji.

Refer to [ ` example-documentation.pdf `
](https://codeberg.org/T0mstone/typst-fruitify/src/tag/0.1.1/example-
documentation.pdf) for more detail.


= *one-liner*

=  one-liner

*Latest Version:* 0.1.0

Automatically adjust the text size to make it fit on one line filling the
available space.

One-liner is a package containing a helper function to fit text to the
available width, without wrapping, by adjusting the text size based upon the
context. This is useful in templates where you donât know the length of text
that is supposed to fit in specific locations in your template.


= *numbly*

=  numbly

*Latest Version:* 0.1.0

A package that helps you to specify different numbering formats for different
levels of headings.

A package that helps you to specify different numbering formats for different
levels of headings.

Suppose you want to specify the following numbering format for your document:

  - Appendix A. Guide
    - A.1. Installation
      - Step 1. Download
      - Step 2. Install
    - A.2. Usage

You might use ` if ` to achieve this:


= *clatter*

=  clatter

*Latest Version:* 0.1.0

Just the PDF417 generator from rxing.

clatter is a simple Typst package for generating PDF417 barcodes, utilizing
the [ rxing ](https://github.com/rxing-core/rxing) library.


= *circuiteria*

=  circuiteria

*Latest Version:* 0.1.0

Drawing block circuits with Typst made easy, using CeTZ

Circuiteria is a [ Typst ](https://typst.app/) package for drawing block
circuit diagrams using the [ CeTZ ](https://typst.app/universe/package/cetz)
package.

![Perry the
platypus](https://github.com/typst/packages/raw/main/packages/preview/circuiteria/0.1.0/gallery/platypus.png)


= *keyle*

=  keyle

*Latest Version:* 0.2.0

This package provides a simple way to style keyboard shortcuts in your
documentation.

[
![Documentation](https://img.shields.io/website?down_message=offline&label=manual&up_color=007aff&up_message=online&url=https://raw.githubusercontent.com/magicwenli/keyle/main/doc/keyle.pdf)
](https://raw.githubusercontent.com/magicwenli/keyle/main/doc/keyle.pdf) [
![MIT License](https://img.shields.io/badge/license-MIT-brightgreen)
](https://github.com/magicwenli/keyle/blob/main/LICENSE)

A simple way to style keyboard shortcuts in your documentation.

This package was inspired by [ auth0/kbd ](https://auth0.github.io/kbd/) and [
dogezen/badgery ](https://github.com/dogezen/badgery) . Also thanks to [
tweh/menukeys ](https://github.com/tweh/menukeys) â A LaTeX package for menu
keys generation.

Document generating using [ jneug/typst-mantys
](https://github.com/jneug/typst-mantys) .

Send them respect and love.


= *note-me*

=  note-me

*Latest Version:* 0.3.0

Adds GitHub-style Admonitions (Alerts) to Typst.

> [!NOTE] Add GitHub style admonitions (also known as alerts) to Typst.


= *pinit*

=  pinit

*Latest Version:* 0.2.2

Relative positioning by pins, especially useful for making slides in typst.

Featured  Package

Relative positioning by pins, especially useful for making slides in typst.


= *grayness*

=  grayness

*Latest Version:* 0.2.0

Simple image editing capabilities like converting to grayscale and cropping
via a WASM plugin.

A package providing simple image editing capabilities via a WASM plugin.

Available functionality includes converting images to grayscale, cropping and
flipping the images. Furthermore, this package supports adding transparency
and bluring (very slow) as well as handling additional raster image formats.

The package name is inspired by the blurry, gray images of Nessie, the [ Loch
Ness Monster ](https://en.wikipedia.org/wiki/Loch_Ness_Monster)


= *bytefield*

=  bytefield

*Latest Version:* 0.0.6

A package to create network protocol headers, memory map, register definitions
and more.

A simple way to create network protocol headers, memory maps, register
definitions and more in typst.

â ï¸ Warning. As this package is still in an early stage, things might break
with the next version.

â¹ï¸ If you find a bug or a feature which is missing, please open an issue
and/or send an PR.


= *salsa-dip*

=  salsa-dip

*Latest Version:* 0.1.0

DIP chip labels for Typst

Salsa Dip is a library for making [ DIP
](https://en.wikipedia.org/wiki/Dual_in-line_package) chip labels in Typst.


= *marginalia*

=  marginalia

*Latest Version:* 0.1.1

Configurable margin-notes and matching wide blocks.


= *codly-languages*

=  codly-languages

*Latest Version:* 0.1.1

A set of language configurations for use with codly

Provides a set of predefined language configurations for use with the ` codly
` code listing package. For each supported language, this package defines a
name, icon, and color to use when displaying code.


= *drafting*

=  drafting

*Latest Version:* 0.2.1

Helpful functions for content positioning and margin comments/notes

Featured  Package


= *ccicons*

=  ccicons

*Latest Version:* 1.0.0

A port of the ccicon LaTeX package for Typst.

Creative Commons icons for your Typst documents

- * *

> [!NOTE] ` ccicons ` is an adaption of the [ ccicons package
> ](https://ctan.org/pkg/ccicons) for LaTeX by [ Michael Ummels
> ](https://github.com/ummels) .


= *algorithmic*

=  algorithmic

*Latest Version:* 0.1.0

Algorithm pseudocode typesetting for Typst, inspired by algorithmicx in LaTeX

This is a package inspired by the LaTeX [ ` algorithmicx `
](https://ctan.org/pkg/algorithmicx) package for Typst. Itâs useful for
writing pseudocode and typesetting it all nicely.

![screenshot of the typst-algorithmic output, showing line numbers, automatic

indentation, bolded keywords, and
such](https://github.com/typst/packages/raw/main/packages/preview/algorithmic/0.1.0/docs/assets/demo-
rendered.png)

Example:


= *tutor*

=  tutor

*Latest Version:* 0.7.0

Utilities to create exams.

Utilities to write exams and exercises with integrated solutions. Set the
variable ` #(cfg.sol = true) ` to display the solutions of a document.

Currently the following features are supported:

  - Automatic total point calculation through the ` #points() ` and `; #totalpoints() ` functions.
  - Checkboxes that are either blank or show the solution state using eg. ` #checkbox(cfg, true) ` .
  - Display blank lines allowing students to write their answer using eg. ` #lines(cfg, 3) ` .
  - A proposition for a project structure allowing self-contained exercises and a mechanism to show or hide the solutions of an exercise.


= *cetz*

=  cetz

*Latest Version:* 0.3.1

Drawing with Typst made easy, providing an API inspired by TikZ and
Processing. Includes modules for plotting, charts and tree layout.

Featured  Package

CeTZ (CeTZ, ein Typst Zeichenpaket) is a library for drawing with [ Typst
](https://typst.app/) with an API inspired by TikZ and [ Processing
](https://processing.org/) .


= *teig*

=  teig

*Latest Version:* 0.1.0

Calculate eigenvalues of matrices

This package provides an ` eigenvalue ` function that calculates the
eigenvalues of a matrix.


= *splash*

=  splash

*Latest Version:* 0.4.0

A library of color palettes for Typst.

Add a splash of color to your project with these palettes for [ Typst
](https://github.com/typst/typst) .

This library provides different color palettes with human-readable names in
Typst dictionaries. Currently there are just a few different palettes to
choose from. Any contributions or suggestions are welcome!

_Note_ : ` splash ` is in the [ Typst Package Repository
](https://github.com/typst/packages) . See how to use it in the example below.


= *stonewall*

=  stonewall

*Latest Version:* 0.1.0

Stonewall provides beautiful pride flag colours for gradients.

You can use the colour palette with _gradients_ for maximum results! For
example the code in ` example/example.typ ` which is


= *codedis*

=  codedis

*Latest Version:* 0.1.0

A simple package for displaying code.

Used to display code files in Typst. Main feature is that it displays code
blocks over multiple pages in a way that implies the code block continues onto
the next page. Also a simple and intuitive syntax for displaying code blocks.

Usage:


= *pillar*

=  pillar

*Latest Version:* 0.2.0

Faster column specifications for tables.

_Shorthand notations for table column specifications in[ Typst
](https://typst.app/) . _

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fpillar%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/pillar) [ ![Test
Status](https://github.com/Mc-
Zen/pillar/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/pillar/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/pillar/blob/main/LICENSE)

  - [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#introduction)
  - [ Column specification ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#column-specification)
  - [ Number alignment ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#number-alignment)
  - [ ` pillar.cols() ` ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#pillarcols)
  - [ ` pillar.table() ` ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#pillartable)
  - [ ` vline ` customization ](https://github.com/typst/packages/raw/main/packages/preview/pillar/0.2.0/#vline-customization)


= *frackable*

=  frackable

*Latest Version:* 0.2.0

Vulgar Fractions

Version 0.2.0

Provides a function, ` frackable(numerator, denominator, whole: none) ` , to
typeset vulgar and mixed fractions. Provides a second ` generator(...) `
function that returns another having the same signature as ` frackable ` to
typeset arbitrary vulgar and mixed fractions in fonts that do not support the
` frac ` feature.


= *dashy-todo*

=  dashy-todo

*Latest Version:* 0.0.1

A method to display TODOs at the side of the page.

Create TODO comments, which are displayed at the sides of the page.

![Screenshot](https://github.com/typst/packages/raw/main/packages/preview/dashy-
todo/0.0.1/example.svg)


= *fauxreilly*

=  fauxreilly

*Latest Version:* 0.1.0

A package for creating O'Rly- / O'Reilly-type cover pages

[ ![](https://raw.githubusercontent.com/dei-layborer/o-rly-
typst/refs/heads/main/made-
with-\(2s\)-2%2C6-diamino-n-%5B\(2s\)-1-phenylpropan-2-yl%5Dhexanamide-n-%5B\(2s\)-1-phenyl-2-propanyl%5D-l-
lysinamide.svg) ](https://forthebadge.com/)

[ ![](https://raw.githubusercontent.com/dei-layborer/o-rly-
typst/refs/heads/main/%24%24%24-gimmie.svg)
](https://deilayborer.neocities.org/funding)

A ` typst ` package for creating *OâRLY?* -style cover pages.


= *whalogen*

=  whalogen

*Latest Version:* 0.2.0

Typesetting chemical formulae, a port of mhchem

whalogen is a library for typsetting chemical formulae with Typst, inspired by
mhchem.

GitHub repository: [ https://github.com/schang412/typst-whalogen
](https://github.com/schang412/typst-whalogen)


= *tablex*

=  tablex

*Latest Version:* 0.0.9

More powerful and customizable tables in Typst.

*More powerful and customizable tables in Typst.*


= *lemmify*

=  lemmify

*Latest Version:* 0.1.6

Theorem typesetting library.

Lemmify is a library for typesetting mathematical theorems in typst. It aims
to be easy to use while trying to be as flexible and idiomatic as possible.
This means that the interface might change with updates to typst (for example
if user-defined element functions are introduced). But no functionality should
be lost.


= *codly*

=  codly

*Latest Version:* 1.0.0

Codly is a beautiful code presentation template with many features like smart
indentation, line numbering, highlighting, etc.

Featured  Package

[
![Documentation](https://img.shields.io/website?down_message=offline&label=manual&up_color=007aff&up_message=online&url=https%3A%2F%2Fgithub.com%2FDherse%2Fcodly%2Fblob%2Fmain%2Fdocs.pdf)
](https://github.com/Dherse/codly/blob/main/docs.pdf) [ ![MIT
License](https://img.shields.io/badge/license-MIT-brightgreen)
](https://github.com/Dherse/codly/blob/main/LICENSE)
![](https://github.com/Dherse/codly/actions/workflows/test.yml/badge.svg)

Codly is a package that lets you easily create *beautiful* code blocks for
your Typst documents. It uses the newly added [ ` raw.line `
](https://typst.app/docs/reference/text/raw/#definitions-line) function to
work across all languages easily. You can customize the icons, colors, and
more to suit your documentâs theme. By default it has zebra striping, line
numbers, for ease of reading.

A full set of documentation can be found [ in the repo
](https://raw.githubusercontent.com/Dherse/codly/main/docs.pdf) .

![Example](https://github.com/typst/packages/raw/main/packages/preview/codly/1.0.0/demo.png)


= *untypsignia*

=  untypsignia

*Latest Version:* 0.1.1

Unofficial typesetter's insignia emulations

The ` untypsignia ` is a 3rd-party, unofficial, unendorsed Typst package that
exposes commands for rendering, as ` content ` texts, some typesetters names
in a stylized fashion, emulating their respective _insignia_ , i.e., marks by
which they are known.


= *oasis-align*

=  oasis-align

*Latest Version:* 0.1.0

Cleanly place content side by side with equal heights using automatic content
sizing.

` oasis-align ` is a package that automatically sizes your content so that
their heights are equal, allowing you to cleanly place content side by side.

To use ` oasis-align ` in your document, start by importing the package like
this:


= *super-suboptimal*

=  super-suboptimal

*Latest Version:* 0.1.0

Unicode super- and subscripts in equations.

A Typst package enabling support for Unicode super- and subscript characters
in equations.


= *structogrammer*

=  structogrammer

*Latest Version:* 0.1.1

Draw Nassi-Shneiderman diagrams (or structograms)

Draw Nassi-Shneiderman diagrams, also called structograms, in Typst.


= *showybox*

=  showybox

*Latest Version:* 2.0.3

Colorful and customizable boxes for Typst

Featured  Package

*Showybox* is a Typst package for creating colorful and customizable boxes.


= *physica*

=  physica

*Latest Version:* 0.9.3

Math constructs for science and engineering: derivative, differential, vector
field, matrix, tensor, Dirac braket, hbar, transpose, conjugate, many
operators, and more.

Featured  Package

:green_book: The [ manual ](https://github.com/Leedehai/typst-
physics/blob/v0.9.3/physica-manual.pdf) .

![logo](https://github.com/Leedehai/typst-
physics/assets/18319900/ed86198a-8ddb-4473-aed3-8111d5ecde60)

[ ![CI](https://github.com/Leedehai/typst-
physics/actions/workflows/ci.yml/badge.svg)
](https://github.com/Leedehai/typst-physics/actions/workflows/ci.yml) [
![Latest release](https://img.shields.io/github/v/release/Leedehai/typst-
physics.svg?color=gold) ](https://github.com/Leedehai/typst-
physics/releases/latest "The latest release")

Available in the collection of [ Typst packages
](https://typst.app/docs/packages/) : ` #import "@preview/physica:0.9.3": * `

> physica _noun_ .
>
>   * Latin, study of nature
>

This [ Typst ](https://typst.app/) package provides handy typesetting
utilities for natural sciences, including:

  - Braces,
  - Vectors and vector fields,
  - Matrices, including Jacobian and Hessian,
  - Smartly render ` ..^T ` as transpose and ` ..^+ ` as dagger (conjugate transpose),
  - Dirac braket notations,
  - Common math functions,
  - Differentials and derivatives, including partial derivatives of mixed orders with automatic order summation,
  - Familiar âh-barâ, tensor abstract index notations, isotopes, Taylor series term,
  - Signal sequences i.e. digital timing diagrams.


= *koma-labeling*

=  koma-labeling

*Latest Version:* 0.1.0

This package introduces a labeling feature to Typst, inspired by the KOMA-
Script's labeling environment.

Version 0.1.0

The koma-labeling package for Typst is inspired by the labeling environment
from the KOMA-Script bundle in LaTeX. It provides a convenient way to create
labeled lists with customizable label widths and optional delimiters, making
it perfect for creating structured descriptions and lists in your Typst
documents.


= *rfc-vibe*

=  rfc-vibe

*Latest Version:* 0.1.0

Bring RFC language into everyday docs

Bring that RFC lingo to your everyday documents.

A [ Typst ](https://typst.app/) package that makes it easy to use the exact
keywords, boilerplate, and definitions provided by BCP 14, RFC2119, and
RFC8174. See the end of this README for an example of the output.

In the future, this package may include other RFC-related patterns which are
applicable to a wide variety of everyday documents.


= *rich-counters*

=  rich-counters

*Latest Version:* 0.2.2

Counters which can inherit from other counters.

This package allows you to have *counters which can inherit from other
counters* .

Concretely, it implements ` rich-counter ` , which is a counter that can
_inherit_ one or more levels from another counter.

The interface is pretty much the same as the [ usual counter
](https://typst.app/docs/reference/introspection/counter/) . It provides a `
display() ` , ` get() ` , ` final() ` , ` at() ` , and a ` step() ` method. An
` update() ` method will be implemented soon.


= *rubby*

=  rubby

*Latest Version:* 0.10.1

Add ruby (furigana) next to base text.


= *commute*

=  commute

*Latest Version:* 0.2.0

A proof of concept library for commutative diagrams.

Featured  Package

Proof-of-concept commutative diagrams library for [ typst
](https://typst.app/home)

See [EricWay1024/tikzcd-editor][ [ https://github.com/EricWay1024/tikzcd-
editor ](https://github.com/EricWay1024/tikzcd-editor) ] for a web-based
visual diagram editor for this library!


= *lambdabus*

=  lambdabus

*Latest Version:* 0.1.0

Easily parse, normalize and display simple Î»-Calculus expressions.

Lambdabus allows you to parse, normalize and display simple Î»-Calculus
expressions in Typst with ease.


= *ansi-render*

=  ansi-render

*Latest Version:* 0.6.1

provides a simple way to render text with ANSI escape sequences.

[ ![GitHub manifest version
\(path\)](https://img.shields.io/github/v/tag/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render/tags) [ ![GitHub Repo
stars](https://img.shields.io/github/stars/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render) [
![GitHub](https://img.shields.io/github/license/8LWXpg/typst-ansi-render)
](https://github.com/8LWXpg/typst-ansi-render/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/ansi-render)

This script provides a simple way to render text with ANSI escape sequences.
Package ` ansi-render ` provides a function ` ansi-render ` , and a dictionary
of themes ` terminal-themes ` .

contribution is welcomed!


= *acrotastic*

=  acrotastic

*Latest Version:* 0.1.1

Manage acronyms and their definitions in Typst.

Manages all your acronyms for you.

Acrotastics main features are clickable abbreviations that auto-expand on the
first occurence, manual short and long forms, implicit or manual plural form
support, and customizable index printing.


= *truthfy*

=  truthfy

*Latest Version:* 0.5.0

Make empty or automatically filled truth table

Make an empty or filled truth table in Typst


= *chic-hdr*

=  chic-hdr

*Latest Version:* 0.4.0

Typst package for creating elegant headers and footers

*Chic-header* (chic-hdr) is a Typst package for creating elegant headers and
footers


= *songb*

=  songb

*Latest Version:* 0.1.0

A songbook package, to display chords above the lyrics and show a number-based
index (similar to patacrep)

Attempt at creating a songbook package to replace [ patacrep
](https://github.com/patacrep/patacrep) (which is based on LaTeX + [ Songs
](https://songs.sourceforge.net/) ).


= *algo*

=  algo

*Latest Version:* 0.3.4

Beautifully typeset algorithms.

A Typst library for writing algorithms. On Typst v0.6.0+ you can import the `
algo ` package:


= *basalt-backlinks*

=  basalt-backlinks

*Latest Version:* 0.1.0

Generate and get backlinks.

A Typst package for generating and getting backlinks.


= *great-theorems*

=  great-theorems

*Latest Version:* 0.1.1

Straightforward and functional theorem/proof environments.

This package allows you to make *theorem/proof/remark/â¦* blocks.

Features:

  - supports advanced counters through both [ headcount ](https://typst.app/universe/package/headcount/) and [ rich-counters ](https://typst.app/universe/package/rich-counters/)
  - easy adjustment of style:
    - change prefix
    - change how title is displayed
    - change formatting of body
    - change suffix
    - change numbering style
    - configure _all_ parameters of the [ ` block ` ](https://typst.app/docs/reference/layout/block/) , including background color, stroke color, rounded corners, inset, â¦
  - can adjust style also on individual basis (e.g. to highlight main theorem)
  - works with labels/references
  - sane and smart defaults


= *headcount*

=  headcount

*Latest Version:* 0.1.0

Make counters inherit from the heading counter.

This package allows you to make *counters depend on the current
chapter/section number* .

This works for *figures, theorems, and any other counters* .

The advantage compared to [ rich-counters
](https://typst.app/universe/package/rich-counters/) is that you stick with
native ` counter ` s and you can influence e.g. the ` figure ` counter
directly without writing a new ` show ` rule with a custom counter or so.


= *tidy*

=  tidy

*Latest Version:* 0.3.0

Documentation generator for Typst code in Typst.

Featured  Package

_Keep it tidy._

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Ftidy%2Fmain%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/tidy) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/tidy/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/tidy/releases/download/v0.3.0/tidy-guide.pdf)

*tidy* is a package that generates documentation directly in [ Typst
](https://typst.app/) for your Typst modules. It parses docstring comments
similar to javadoc and co. and can be used to easily build a beautiful
reference section for the parsed module. Within the docstring you may use
(almost) any Typst syntax â so markup, equations and even figures are no
problem!

Features:

  - *Customizable* output styles.
  - Automatically [ *render code examples* ](https://github.com/typst/packages/raw/main/packages/preview/tidy/0.3.0/#example) .
  - *Annotate types* of parameters and return values.
  - Automatically read off default values for named parameters.
  - [ *Help* feature ](https://github.com/typst/packages/raw/main/packages/preview/tidy/0.3.0/#generate-a-help-command-for-you-package) for your package.
  - [ Docstring tests ](https://github.com/typst/packages/raw/main/packages/preview/tidy/0.3.0/#docstring-tests) .

The [ guide ](https://github.com/Mc-Zen/tidy/releases/download/v0.3.0/tidy-
guide.pdf) fully describes the usage of this module and defines the format for
the docstrings.


= *socialhub-fa*

=  socialhub-fa

*Latest Version:* 1.0.0

A Typst library for Social Media references with icons based on Font Awesome.

The ` socialhub-fa ` package is designed to help you create your curriculum
vitae (CV). It allows you to easily reference your social media profiles with
the typical icon of the service plus a link to your profile.


= *pigmentpedia*

=  pigmentpedia

*Latest Version:* 0.1.0

An extended color library for Typst.

An extended color library for Typst. Most of these colors are commonly used on
the web.


= *outrageous*

=  outrageous

*Latest Version:* 0.3.0

Easier customization of outline entries.

Easier customization of outline entries.


= *ouset*

=  ouset

*Latest Version:* 0.2.0

Package providing over- and underset functions for math mode.

[ GitHub Repository including Examples and Changelog
](https://github.com/ludwig-austermann/typst-ouset)

This is a small package providing over- and underset functions for math mode
in [ typst ](https://typst.app/) .


= *tinyset*

=  tinyset

*Latest Version:* 0.1.0

Simple, consistent, and appealing math homework template

Extremely simple [ typst ](https://github.com/typst/typst) package for writing
math problem sets quickly and consistently. Under the hood it is just typst
fundamentals that could be defined by hand, however the aim of this package is
to make you faster and the code easier to read.


= *minitoc*

=  minitoc

*Latest Version:* 0.1.0

An outline function just for one section and nothing else

This package provides the ` minitoc ` command that does the same thing as the
` outline ` command but only for headings under the heading above it.

This is inspired by minitoc package for LaTeX.


= *fontawesome*

=  fontawesome

*Latest Version:* 0.5.0

A Typst library for Font Awesome icons through the desktop fonts.

A Typst library for Font Awesome icons through the desktop fonts.

p.s. The library is based on the Font Awesome 6 desktop fonts (v6.6.0)


= *genealotree*

=  genealotree

*Latest Version:* 0.1.0

A package to draw genealogical trees, based on CeTZ

Genealotree is a typst package to draw genealogical trees. It is developped at
[ https://codeberg.org/drloiseau/genealogy
](https://codeberg.org/drloiseau/genealogy) . This is the place you can get
the developpement version and send issues and pull requests.

![Example](https://github.com/typst/packages/raw/main/packages/preview/genealotree/0.1.0/examples/example.jpg)

This package is based on [ CeTZ
](https://github.com/typst/packages/raw/main/packages/preview/genealotree/0.1.0/%22https://typst.app/universe/package/cetz/%22)
and it provides functions to draw genealogical trees. It is oriented towards
medical genealogy to study genetic disorders inheritance, but you might be
able to use it to draw your family tree.

*Features :*

  - Draw an unlimited number of independant genealogical trees
  - Supports consanguinity and unions between different trees (see limitations)
  - Auto adjusts position of children to optimize spacing
  - Customize all lengths
  - Draw as much phenotypes as needed by coloring individuals
  - Print genotype and/or phenotype labels under individuals

*Limitations :*

  - Must manually adjust individual position in the tree when drawing consanguinity and unions between trees to prevent overlapping of individuals.
  - No remarriages (might be added in a future version)
  - No union between individuals at different generations (might be added in a future version)

*To be implemented :*

  - Allow to pass CeTZ arguments to every elements to cutomize their appearance
  - Draw optional legends for tree symbols and for phenotypes

See example.typ for a simple usage example, and the manual for precise
references at [ manual.pdf
](https://codeberg.org/attachments/cfdad2b7-52ae-4e18-8d7b-453fadc45532)

The steps to produce a tree are :

  - Import the package and CeTZ


= *wavy*

=  wavy

*Latest Version:* 0.1.1

Draw digital timing diagram in Typst using Wavedrom.

Draw digital timing diagram in Typst using [ Wavedrom ](https://wavedrom.com/)
.

![](https://github.com/typst/packages/raw/main/packages/preview/wavy/0.1.1/wavy.svg)


= *cuti*

=  cuti

*Latest Version:* 0.3.0

Easily simulate (fake) bold, italic and small capital characters.

Cuti (/kjuËti/) is a package that simulates fake bold / fake italic / fake
small captials. This package is typically used on fonts that do not have a `
bold ` weight, such as âSimSunâ.


= *glossy*

=  glossy

*Latest Version:* 0.2.0

A very simple glossary system with easily customizable output.

This package provides utilities to manage and render glossaries within
documents. It includes functions to define and use glossary terms, track their
usage, and generate a glossary list with references to where terms are used in
the document.

![image of sample
output](https://github.com/typst/packages/raw/main/packages/preview/glossy/0.2.0/thumbnail.png)


= *marge*

=  marge

*Latest Version:* 0.1.0

Easy-to-use but powerful and smart margin notes.

A package for easy-to-use but powerful and smart margin notes.


= *nassi*

=  nassi

*Latest Version:* 0.1.2

Draw Nassi-Shneiderman diagrams (Struktogramme) with Typst.

*nassi* is a package for [ Typst ](https://typst.app/) to draw [ Nassi-
Shneiderman diagrams
](https://en.wikipedia.org/wiki/Nassi%E2%80%93Shneiderman_diagram)
(Struktogramme).

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-1.png)


= *easytable*

=  easytable

*Latest Version:* 0.1.0

Simple Table Package

A Typst library for writing simple tables.


= *prooftrees*

=  prooftrees

*Latest Version:* 0.1.0

Proof trees for natural deduction and type theories

This package is for constructing proof trees in the style of natural deduction
or the sequent calculus, for ` typst ` ` 0.7.0 ` . Please do open issues for
bugs etc :)

    #show: config.with(
      course-name: "Typst ä½¿ç¨å°ç»ä¹ ",
      serial-str: "ç¬¬ 1 æ¬¡ä½ä¸",
      author-info: [
        sjfhsjfh from PKU-Typst
      ],
      author-names: "sjfhsjfh",
    )

    #prob[
      Calculate the 25th number in the Fibonacci sequence using Typst
    ][
      #let f(n) = {
        if n <= 2 {
          return 1
        }
        return f(n - 1) + f(n - 2)
      }
      #f(25)
    ]



= *outrageous*

=  outrageous

*Latest Version:* 0.3.0

Easier customization of outline entries.

Easier customization of outline entries.


= *ouset*

=  ouset

*Latest Version:* 0.2.0

Package providing over- and underset functions for math mode.

[ GitHub Repository including Examples and Changelog
](https://github.com/ludwig-austermann/typst-ouset)

This is a small package providing over- and underset functions for math mode
in [ typst ](https://typst.app/) .


= *tinyset*

=  tinyset

*Latest Version:* 0.1.0

Simple, consistent, and appealing math homework template

Extremely simple [ typst ](https://github.com/typst/typst) package for writing
math problem sets quickly and consistently. Under the hood it is just typst
fundamentals that could be defined by hand, however the aim of this package is
to make you faster and the code easier to read.


= *minitoc*

=  minitoc

*Latest Version:* 0.1.0

An outline function just for one section and nothing else

This package provides the ` minitoc ` command that does the same thing as the
` outline ` command but only for headings under the heading above it.

This is inspired by minitoc package for LaTeX.


= *fontawesome*

=  fontawesome

*Latest Version:* 0.5.0

A Typst library for Font Awesome icons through the desktop fonts.

A Typst library for Font Awesome icons through the desktop fonts.

p.s. The library is based on the Font Awesome 6 desktop fonts (v6.6.0)


= *genealotree*

=  genealotree

*Latest Version:* 0.1.0

A package to draw genealogical trees, based on CeTZ

Genealotree is a typst package to draw genealogical trees. It is developped at
[ https://codeberg.org/drloiseau/genealogy
](https://codeberg.org/drloiseau/genealogy) . This is the place you can get
the developpement version and send issues and pull requests.

![Example](https://github.com/typst/packages/raw/main/packages/preview/genealotree/0.1.0/examples/example.jpg)

This package is based on [ CeTZ
](https://github.com/typst/packages/raw/main/packages/preview/genealotree/0.1.0/%22https://typst.app/universe/package/cetz/%22)
and it provides functions to draw genealogical trees. It is oriented towards
medical genealogy to study genetic disorders inheritance, but you might be
able to use it to draw your family tree.

*Features :*

  - Draw an unlimited number of independant genealogical trees
  - Supports consanguinity and unions between different trees (see limitations)
  - Auto adjusts position of children to optimize spacing
  - Customize all lengths
  - Draw as much phenotypes as needed by coloring individuals
  - Print genotype and/or phenotype labels under individuals

*Limitations :*

  - Must manually adjust individual position in the tree when drawing consanguinity and unions between trees to prevent overlapping of individuals.
  - No remarriages (might be added in a future version)
  - No union between individuals at different generations (might be added in a future version)

*To be implemented :*

  - Allow to pass CeTZ arguments to every elements to cutomize their appearance
  - Draw optional legends for tree symbols and for phenotypes

See example.typ for a simple usage example, and the manual for precise
references at [ manual.pdf
](https://codeberg.org/attachments/cfdad2b7-52ae-4e18-8d7b-453fadc45532)

The steps to produce a tree are :

  - Import the package and CeTZ


= *wavy*

=  wavy

*Latest Version:* 0.1.1

Draw digital timing diagram in Typst using Wavedrom.

Draw digital timing diagram in Typst using [ Wavedrom ](https://wavedrom.com/)
.

![](https://github.com/typst/packages/raw/main/packages/preview/wavy/0.1.1/wavy.svg)


= *cuti*

=  cuti

*Latest Version:* 0.3.0

Easily simulate (fake) bold, italic and small capital characters.

Cuti (/kjuËti/) is a package that simulates fake bold / fake italic / fake
small captials. This package is typically used on fonts that do not have a `
bold ` weight, such as âSimSunâ.


= *glossy*

=  glossy

*Latest Version:* 0.2.0

A very simple glossary system with easily customizable output.

This package provides utilities to manage and render glossaries within
documents. It includes functions to define and use glossary terms, track their
usage, and generate a glossary list with references to where terms are used in
the document.

![image of sample
output](https://github.com/typst/packages/raw/main/packages/preview/glossy/0.2.0/thumbnail.png)


= *marge*

=  marge

*Latest Version:* 0.1.0

Easy-to-use but powerful and smart margin notes.

A package for easy-to-use but powerful and smart margin notes.


= *nassi*

=  nassi

*Latest Version:* 0.1.2

Draw Nassi-Shneiderman diagrams (Struktogramme) with Typst.

*nassi* is a package for [ Typst ](https://typst.app/) to draw [ Nassi-
Shneiderman diagrams
](https://en.wikipedia.org/wiki/Nassi%E2%80%93Shneiderman_diagram)
(Struktogramme).

![](https://github.com/typst/packages/raw/main/packages/preview/nassi/0.1.2/assets/example-1.png)


= *easytable*

=  easytable

*Latest Version:* 0.1.0

Simple Table Package

A Typst library for writing simple tables.


= *prooftrees*

=  prooftrees

*Latest Version:* 0.1.0

Proof trees for natural deduction and type theories

This package is for constructing proof trees in the style of natural deduction
or the sequent calculus, for ` typst ` ` 0.7.0 ` . Please do open issues for
bugs etc :)

Features:

  - Inferences can have arbitrarily many premises.
  - Inference lines can have left and/or right labelsÂ¹
  - ConfigurableÂ² per tree and per line: premise spacing, the line stroke, etcâ¦ .
  - Theyâre proof trees.

Â¹ The placement of labels is currently very primitive, and requires much user
intervention.

Â² Options are quite limited.


= *pointless-size*

=  pointless-size

*Latest Version:* 0.1.0

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ Chinese size system (hÃ
o-system) and type-related measurements units

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ã Chinese size system (hÃ
o-system) and type-related measurements units.


= *typpuccino*

=  typpuccino

*Latest Version:* 0.1.0

Use catppuccin palette with Typst.

User everyoneâs favorite [ Catppuccin color palettes
](https://github.com/catppuccin/catppuccin) in your Typst projects.


= *fractusist*

=  fractusist

*Latest Version:* 0.1.0

Create a variety of wonderful fractals in Typst.

Create a variety of wonderful fractals in Typst.


= *use-academicons*

=  use-academicons

*Latest Version:* 0.1.0

A Typst library for Academicons the desktop fonts.

A Typst library for Academicons through the desktop fonts.

This is based on the code from ` duskmoon314 ` and the package for [ *typst-
fontawesome* ](https://github.com/duskmoon314/typst-fontawesome) .

p.s. The library is based on the Academicons desktop fonts (v1.9.4)


= *blindex*

=  blindex

*Latest Version:* 0.1.0

Index-making of Biblical literature citations in Typst

Blindex ( ` blindex:0.1.0 ` ) is a Typst package specifically designed for the
generation of indices of Biblical literature citations in documents. Target
audience includes theologians and authors of documents that frequently cite
biblical literature.


= *use-tabler-icons*

=  use-tabler-icons

*Latest Version:* 0.4.0

Tabler Icons for Typst using webfont.

> *Note*
>
> This project is greatly inspired by and mainly edited based on [ typst-
> fontawesome ](https://github.com/duskmoon314/typst-fontawesome) .


= *nulite*

=  nulite

*Latest Version:* 0.1.0

Generate charts with vegalite.

A typst plugin to generate charts using [ vegalite
](https://vega.github.io/vega-lite/)


= *slashion*

=  slashion

*Latest Version:* 0.1.1

Fractions with slash.

You might not like the inline fraction displayed in a vertical layout. Just
use *Slashion* to convert it to a slash fraction.


= *pointless-size*

=  pointless-size

*Latest Version:* 0.1.0

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ Chinese size system (hÃ
o-system) and type-related measurements units

ä¸­æå­å·çå·æ°å¶åå­ä½åº¦éåä½ã Chinese size system (hÃ
o-system) and type-related measurements units.


= *typpuccino*

=  typpuccino

*Latest Version:* 0.1.0

Use catppuccin palette with Typst.

User everyoneâs favorite [ Catppuccin color palettes
](https://github.com/catppuccin/catppuccin) in your Typst projects.


= *fractusist*

=  fractusist

*Latest Version:* 0.1.0

Create a variety of wonderful fractals in Typst.

Create a variety of wonderful fractals in Typst.


= *use-academicons*

=  use-academicons

*Latest Version:* 0.1.0

A Typst library for Academicons the desktop fonts.

A Typst library for Academicons through the desktop fonts.

This is based on the code from ` duskmoon314 ` and the package for [ *typst-
fontawesome* ](https://github.com/duskmoon314/typst-fontawesome) .

p.s. The library is based on the Academicons desktop fonts (v1.9.4)


= *blindex*

=  blindex

*Latest Version:* 0.1.0

Index-making of Biblical literature citations in Typst

Blindex ( ` blindex:0.1.0 ` ) is a Typst package specifically designed for the
generation of indices of Biblical literature citations in documents. Target
audience includes theologians and authors of documents that frequently cite
biblical literature.


= *use-tabler-icons*

=  use-tabler-icons

*Latest Version:* 0.4.0

Tabler Icons for Typst using webfont.

> *Note*
>
> This project is greatly inspired by and mainly edited based on [ typst-
> fontawesome ](https://github.com/duskmoon314/typst-fontawesome) .


= *nulite*

=  nulite

*Latest Version:* 0.1.0

Generate charts with vegalite.

A typst plugin to generate charts using [ vegalite
](https://vega.github.io/vega-lite/)


= *slashion*

=  slashion

*Latest Version:* 0.1.1

Fractions with slash.

You might not like the inline fraction displayed in a vertical layout. Just
use *Slashion* to convert it to a slash fraction.


= *indenta*

=  indenta

*Latest Version:* 0.0.3

Fix indent of first paragraph.

An attempt to fix the indentation of the first paragraph in typst.

It works.


= *big-todo*

=  big-todo

*Latest Version:* 0.2.0

Package to insert clear TODOs, optionally with an outline.

Create clearly visible TODOs in your document, and add an outline to keep
track of them.


= *unichar*

=  unichar

*Latest Version:* 0.3.0

A partial port of the Unicode Character Database.

This package ports part of the [ Unicode Character Database
](https://www.unicode.org/reports/tr44/) to Typst. Notably, it includes
information from [ UnicodeData.txt
](https://unicode.org/reports/tr44/#UnicodeData.txt) and [ Blocks.txt
](https://unicode.org/reports/tr44/#Blocks.txt) .


= *qcm*

=  qcm

*Latest Version:* 0.1.0

Qualitative Colormaps

Qualitative Colormaps for Typst

Qualitative colormaps contain a fixed number of distinct and easily
differentiable colors. They are suitable to use for e.g. categorical data
visualization.


= *esotefy*

=  esotefy

*Latest Version:* 1.0.0

A brainfuck implementation in pure Typst

> A compilation of esoteric languages including for now brainfuck


= *dining-table*

=  dining-table

*Latest Version:* 0.1.0

Column-wise table definitions for big data

Version 0.1.0

Implements a layer on top of table to allow the user to define a table by
column rather than by row, to automatically handle headers and footers, to
implement table footnotes, to handle nested column quirks for you, to handle
rendering nested data structures.

Basically, if you are tabulating data where each row is an observation, and
some features (columns) are to be grouped (a common case for scientific data)
then this package might be worth checking out. Another use case is where you
have multiple tables with identical layouts, and you wish to keep them all
consistent with one another.

![Light](https://github.com/typst/packages/raw/main/packages/preview/dining-
table/0.1.0/examples/ledger.png)


= *rivet*

=  rivet

*Latest Version:* 0.1.0

Register / Instruction Visualizer & Explainer Tool with Typst, using CeTZ

RIVET _(Register / Instruction Visualizer & Explainer Tool) _ is a [ Typst
](https://typst.app/) package for visualizing binary instructions or
describing the contents of a register, using the [ CeTZ
](https://typst.app/universe/package/cetz) package.

It is based on the [ homonymous Python script
](https://git.kb28.ch/HEL/rivet/)


= *cvssc*

=  cvssc

*Latest Version:* 0.1.0

Common Vulnerability Scoring System Calculator

[
![Contributors](https://img.shields.io/github/contributors/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/graphs/contributors) [
![Forks](https://img.shields.io/github/forks/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/network/members) [
![Stargazers](https://img.shields.io/github/stars/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/stargazers) [
![Issues](https://img.shields.io/github/issues/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/issues) [ ![MIT
License](https://img.shields.io/github/license/DrakeAxelrod/cvssc.svg?style=for-
the-badge) ](https://github.com/DrakeAxelrod/cvssc/blob/master/LICENSE.txt)


= *treet*

=  treet

*Latest Version:* 0.1.1

Create tree lists easily

[ ![GitHub manifest version
\(path\)](https://img.shields.io/github/v/tag/8LWXpg/typst-treet)
](https://github.com/8LWXpg/typst-treet/tags) [ ![GitHub Repo
stars](https://img.shields.io/github/stars/8LWXpg/typst-treet?style=flat)
](https://github.com/8LWXpg/typst-treet) [
![GitHub](https://img.shields.io/github/license/8LWXpg/typst-treet)
](https://github.com/8LWXpg/typst-treet/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/treet)

Create tree list easily in Typst

contribution is welcomed!


= *simplebnf*

=  simplebnf

*Latest Version:* 0.1.1

A simple package to format Backus-Naur form (BNF)

simplebnf is a simple package to format Backus-Naur form. The package provides
a simple way to format Backus-Naur form (BNF). It provides constructs to
denote BNF expressions, possibly with annotations.

This is a sister package of [ simplebnf
](https://github.com/Zeta611/simplebnf) , a LaTeX package under the same name
by the author.


= *curryst*

=  curryst

*Latest Version:* 0.3.0

Typeset trees of inference rules.

Featured  Package

A Typst package for typesetting proof trees.


= *sigfig*

=  sigfig

*Latest Version:* 0.1.0

Typst library for rounding numbers with significant figures and measurement
uncertainty.

` sigfig ` is a [ Typst ](https://typst.app/) package for rounding numbers
with [ significant figures
](https://en.wikipedia.org/wiki/Significant_figures) and [ measurement
uncertainty ](https://en.wikipedia.org/wiki/Measurement_uncertainty) .


= *datify*

=  datify

*Latest Version:* 0.1.3

Datify is a simple date package that allows users to format dates in new ways
and addresses the issue of lacking date formats in different languages.

Datify is a simple date package that allows users to format dates in new ways
and addresses the issue of lacking date formats in different languages.


= *big-rati*

=  big-rati

*Latest Version:* 0.1.0

Utilities to work with big rational numbers in Typst

` big-rati ` is a package to work with rational numbers in Typst


= *postercise*

=  postercise

*Latest Version:* 0.1.0

Postercise allows users to easily create academic research posters with
different themes using Typst.

_Postercise_ allows users to easily create academic research posters with
different themes using [ Typst ](https://typst.app/) .

![GitHub](https://img.shields.io/github/license/dangh3014/postercise) ![GitHub
release \(latest by
date\)](https://img.shields.io/github/v/release/dangh3014/postercise) ![GitHub
Repo stars](https://img.shields.io/github/stars/dangh3014/postercise)


= *autofletcher*

=  autofletcher

*Latest Version:* 0.1.1

Easier diagrams with fletcher

This small module provides functions to (sort of) abstract away manual
placement of coordinates.

See the [ manual
](https://raw.githubusercontent.com/3akev/autofletcher/main/manual.pdf) for
usage examples.


= *embiggen*

=  embiggen

*Latest Version:* 0.0.1

LaTeX-like delimeter sizing in Typst

Get LaTeX-like delimeter sizing in Typst!


= *rose-pine*

=  rose-pine

*Latest Version:* 0.2.0

Soho vibes for Typst in a form of easily applicable theme.

![](https://raw.githubusercontent.com/rose-pine/rose-pine-
theme/main/assets/icon.png)


= *abbr*

=  abbr

*Latest Version:* 0.1.0

An Abbreviations package.

Short package for making the handling of abbreviations, acronyms, and
initialisms _easy_ .

Declare your abbreviations anywhere, use everywhere â they get picked up
automatically.


= *m-jaxon*

=  m-jaxon

*Latest Version:* 0.1.1

Render LaTeX equation in typst using MathJax.

Render LaTeX equation in typst using MathJax.

*Note:* This package is made for fun and to demonstrate the capability of
typst plugins. And it is *slow* . To actually convert LaTeX equations to
typst ones, you should use *pandoc* or *texmath* .

![](https://github.com/typst/packages/raw/main/packages/preview/m-jaxon/0.1.1/mj.svg)


= *droplet*

=  droplet

*Latest Version:* 0.3.1

Customizable dropped capitals.

A package for creating dropped capitals.


= *wordometer*

=  wordometer

*Latest Version:* 0.1.4

Word counts and document statistics.

Featured  Package

[ ![Manual](https://img.shields.io/badge/docs-manual.pdf-green)
](https://github.com/typst/packages/raw/main/packages/preview/wordometer/0.1.4/docs/manual.pdf)
![Version](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fgithub.com%2FJollywatt%2Ftypst-
wordometer%2Fraw%2Fmaster%2Ftypst.toml&query=package.version&label=latest%20version)
[ ![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/Jollywatt/typst-wordometer)

A small [ Typst
](https://github.com/typst/packages/raw/main/packages/preview/wordometer/0.1.4/%22https://typst.app/%22)
package for quick and easy in-document word counts.


= *kinase*

=  kinase

*Latest Version:* 0.1.0

Easy styling for different link types like mails and urls.

Package for easy styling of links. See [ Docs
](https://github.com/typst/packages/raw/main/packages/preview/kinase/0.1.0/docs/manual.pdf)
for a detailed guide. Below is an example of the functionality that is added.
The problem the package solves is that different link types cannot be styled
seperatly, but are recognized as such. This package allows for easy styling of
phone numbers, urls and mail addresses. It provides helper functions that
return regex patterns for the most common use cases.


= *numberingx*

=  numberingx

*Latest Version:* 0.0.1

Extended numbering patterns using the CSS Counter Styles spec

_Extended numbering patterns using the[ CSS Counter Styles
](https://www.w3.org/TR/css-counter-styles-3/) specification, along with a
number of [ Ready-made Counter Styles ](https://www.w3.org/TR/predefined-
counter-styles/) . _


= *metro*

=  metro

*Latest Version:* 0.3.0

Typset units and numbers with options.

The Metro package aims to be a port of the Latex package siunitx. It allows
easy typesetting of numbers and units with options. This package is very early
in development and many features are missing, so any feature requests or bug
reports are welcome!

Metroâs name comes from Metrology, the study scientific study of
measurement.

*Bug reports, feature requests, and PRs are welcome!*


= *k-mapper*

=  k-mapper

*Latest Version:* 1.1.0

A package to add Karnaugh maps into Typst projects.

ð See the ` k-mapper ` Manual [ here
](https://github.com/derekchai/k-mapper/blob/1f334d9e0f02cc656c01835302474bf728db9f80/manual.pdf)
! The Manual features much more documentation, and is typeset using Typst.

This is a package for adding Karnaugh maps into your Typst projects.

See the changelog for the package [ here
](https://github.com/derekchai/k-mapper/blob/698e8554ce67e3a61dd30319ab8f712a6a6b8daa/changelog.md)
.


= *chem-par*

=  chem-par

*Latest Version:* 0.0.1

Display chemical formulae and IUPAC nomenclature with ease

A utility package for displaying IUPAC nomenclature and chemical formulae
without the hassle of manually formatting all of these in your document.


= *cetz-plot*

=  cetz-plot

*Latest Version:* 0.1.0

Plotting module for CeTZ.

CeTZ-Plot is a library that adds plots and charts to [ CeTZ
](https://github.com/cetz-package/cetz) , a library for drawing with [ Typst
](https://typst.app/) .

CeTZ-Plot requires CeTZ version â¥ 0.3.1!


= *roremu*

=  roremu

*Latest Version:* 0.1.0

æ¥æ¬èªã®ããã¼ãã­ã¹ãçæï¼Lorem Ipsumï¼

æ¥æ¬èªã®ããã¼ãã­ã¹ãï¼Lipsumï¼çæãã¼ã«ã

Blind text (Lorem ipsum) generator for Japanese.


= *ctxjs*

=  ctxjs

*Latest Version:* 0.2.0

Run javascript in contexts.

A typst plugin to evaluate javascript code.

  - multiple javascript contexts
  - load javascript modules as source or bytecode
  - simple evaluations
  - formated evaluations (execute your code with your typst data)
  - call functions
  - call functions in modules
  - create bytecode with an extra tool (ctxjs_module_bytecode_builder)
  - allow later evaluation of javascript code


= *spreet*

=  spreet

*Latest Version:* 0.1.0

Parse a spreadsheet.

Spreet is a spreadsheet decoder for typst (excel/opendocument spreadsheets).
The spreadsheet will be read and parsed into a dictonary of 2-dimensional
array of strings: Each workbook in the spreadsheet is mapped as an entry in
the dictonary. Each row of the workbook is represented as an array of strings,
and all rows are summarised in a single array.


= *delimitizer*

=  delimitizer

*Latest Version:* 0.1.0

Customize the size of delimiters. Like \big, \Big, \bigg, \Bigg in LaTeX.

This package lets you customize the size of delimiters in your math equations.
It is useful when you want to make your equations more readable by increasing
the size of certain delimiters. Just like ` \big ` , ` \Big ` , ` \bigg ` ,
and ` \Bigg ` in LaTeX, ` delimitizer ` provides you with the same
functionality in Typst.

  - ` big(delimiter) ` : Makes the delimiters bigger than the default size.
  - ` Big(delimiter) ` : Makes the delimiters bigger than ` big() ` .
  - ` bigg(delimiter) ` : Makes the delimiters bigger than ` Big() ` .
  - ` Bigg(delimiter) ` : Makes the delimiters bigger than ` bigg() ` .
  - ` scaled-delimiter(delimiter, size) ` : Scales the delimiters by a factor of your choice.
  - ` paired-delimiter(left, right) ` : Make a short hand for paired delimiters. This function returns a closure ` f(size = auto: auto | none | big | Big | bigg | Bigg | relative, content: content) ` . The keyed argument ` size ` is optional and defaults to ` auto ` . The positional argument ` content ` is required.
    - when ` size ` is ` auto ` , the size of the delimiters is automatically determined.
    - when ` size ` is ` none ` , the size of the delimiters is ` 1em ` .
    - when ` size ` is ` big ` / ` Big ` / ` bigg ` / ` Bigg ` , the size of the delimiters is set to ` big ` / ` Big ` / ` bigg ` / ` Bigg ` respectively.
    - when ` size ` is ` relative ` length like ` 3em ` or ` 150% ` , the size of the delimiters is scaled by the factor you provide.

Example:


= *valkyrie*

=  valkyrie

*Latest Version:* 0.2.1

Type safe type validation

Version 0.2.1

This package implements type validation, and is targeted mainly at package and
template developers. The desired outcome is that it becomes easier for the
programmer to quickly put a package together without spending a long time on
type safety, but also to make the usage of those packages by end-users less
painful by generating useful error messages.


= *name-it*

=  name-it

*Latest Version:* 0.1.2

Get the English names of integers.

Get the English names of integers.


= *xarrow*

=  xarrow

*Latest Version:* 0.3.1

Variable-length arrows in Typst.

Variable-length arrows in Typst, fitting the width of a given content.


= *suiji*

=  suiji

*Latest Version:* 0.3.0

A highly efficient random number generator for Typst

Featured  Package

[ Suiji ](https://github.com/liuguangxi/suiji) (éæº in Chinese, /suÃ­jÄ«/,
meaning random) is a high efficient random number generator in Typst. Partial
algorithm is inherited from [ GSL ](https://www.gnu.org/software/gsl) and most
APIs are similar to [ NumPy Random Generator
](https://numpy.org/doc/stable/reference/random/generator.html) . It provides
pure function implementation and does not rely on any global state variables,
resulting in better performance and independency.


= *finite*

=  finite

*Latest Version:* 0.3.2

Typst-setting finite automata with CeTZ

Featured  Package

*finite* is a [ Typst ](https://github.com/typst/typst) package for
rendering finite automata on top of [ CeTZ ](https://github.com/johannes-
wolf/typst-canvas) .


= *touying*

=  touying

*Latest Version:* 0.5.3

A powerful package for creating presentation slides in Typst.

Featured  Package

[ Touying ](https://github.com/touying-typ/touying) (æå½± in chinese,
/tÃ³uyÇng/, meaning projection) is a user-friendly, powerful and efficient
package for creating presentation slides in Typst. Partial code is inherited
from [ Polylux ](https://github.com/andreasKroepelin/polylux) . Therefore,
some concepts and APIs remain consistent with Polylux.

Touying provides automatically injected global configurations, which is
convenient for configuring themes. Besides, Touying does not rely on ` counter
` and ` context ` to implement ` #pause ` , resulting in better performance.

If you like it, consider [ giving a star on GitHub
](https://github.com/touying-typ/touying) . Touying is a community-driven
project, feel free to suggest any ideas and contribute.

[ ![Book badge](https://img.shields.io/badge/docs-book-green)
](https://touying-typ.github.io/) [ ![Gallery
badge](https://img.shields.io/badge/docs-gallery-orange)
](https://github.com/touying-typ/touying/wiki)
![GitHub](https://img.shields.io/github/license/touying-typ/touying) ![GitHub
release \(latest by date\)](https://img.shields.io/github/v/release/touying-
typ/touying) ![GitHub Repo stars](https://img.shields.io/github/stars/touying-
typ/touying) ![Themes badge](https://img.shields.io/badge/themes-6-aqua)


= *hydra*

=  hydra

*Latest Version:* 0.5.1

Query and display headings in your documents and templates.

Featured  Package

Hydra is a Typst package allowing you to easily display the heading like
elements anywhere in your document. Itâs primary focus is to provide the
reader with a reminder of where they currently are in your document only when
it is needed.


= *minienvs*

=  minienvs

*Latest Version:* 0.1.0

Theorem environments with minimal fuss

Theorem environments in [ Typst ](https://typst.app/) with minimal fuss.

To use, import and add a show rule:


= *nth*

=  nth

*Latest Version:* 1.0.1

Add english ordinals to numbers, eg. 1st, 2nd, 3rd, 4th.

Provides functions ` #nth() ` and `; #nths() ` which take a number and return
it suffixed by an english ordinal.

This package is named after the nth [ LaTeX macro ](https://ctan.org/pkg/nth)
by Donald Arseneau.


= *vonsim*

=  vonsim

*Latest Version:* 0.1.0

Syntax highlighting support for VonSim.

This package adds the ability to syntax highlighting VonSim source code in
Typst.


= *derive-it*

=  derive-it

*Latest Version:* 0.1.1

Simple functions for creating fitch-style natural deduction proofs and
derivations.

A Typst package to create Fitch-style natural deductions.

![Image of
output](https://github.com/typst/packages/raw/main/packages/preview/derive-
it/0.1.1/examples/example.png)


= *stack-pointer*

=  stack-pointer

*Latest Version:* 0.1.0

A library for visualizing the execution of (imperative) computer programs

Featured  Package

Stack Pointer is a library for visualizing the execution of (imperative)
computer programs, particularly in terms of effects on the call stack: stack
frames and local variables therein.

Stack Pointer lets you represent an example program (e.g. a C or Java program)
using typst code with minimal hassle, and get the execution state of that
program at different points in time. For example, the following C program


= *polytonoi*

=  polytonoi

*Latest Version:* 0.1.0

Renders Roman letters into polytonic Greek.

A typst package for rendering text into polytonic Greek using a hopefully-
intuitive transliteration scheme.


= *echarm*

=  echarm

*Latest Version:* 0.1.1

Run echarts in typst with the use of CtxJS.

A typst plugin to run echarts in typst with the use of CtxJS.


= *glossarium*

=  glossarium

*Latest Version:* 0.5.1

Glossarium is a simple, easily customizable typst glossary.

Featured  Package

> [!TIP] Glossarium is based in great part of the work of [ SÃ©bastien
> dâHerbais de Thun ](https://github.com/Dherse) from his master thesis
> available at: [ https://github.com/Dherse/masterproef
> ](https://github.com/Dherse/masterproef) . His glossary is available under
> the MIT license [ here
> ](https://github.com/Dherse/masterproef/blob/main/elems/acronyms.typ) .

Glossarium is a simple, easily customizable typst glossary inspired by [ LaTeX
glossaries package ](https://www.ctan.org/pkg/glossaries) . You can see
various examples showcasing the different features in the ` examples ` folder.

![Screenshot](https://github.com/typst/packages/raw/main/packages/preview/glossarium/0.5.1/.github/example.png)


= *quick-maths*

=  quick-maths

*Latest Version:* 0.2.0

Custom shorthands for math equations.

Featured  Package

A package for creating custom shorthands for math equations.


= *vartable*

=  vartable

*Latest Version:* 0.1.2

A simple package to make variation table

An easy way to render variation table on typst, built on [ fletcher
](https://github.com/Jollywatt/typst-fletcher)
The [ documention ](https://github.com/Le-foucheur/Typst-
VarTable/blob/main/documentation.pdf)


= *efilrst*

=  efilrst

*Latest Version:* 0.3.0

A simple referenceable list library for typst.

A simple referenceable list library for Typst. If you ever wanted to reference
elements in a list by a key, this library is for you. The name comes from
âreflistâ but sorted alphabetically because we are not allowed to use
descriptive names for packages in Typst ð¤·ð»ââï¸.


= *octique*

=  octique

*Latest Version:* 0.1.0

GitHub Octicons for Typst.

GitHub [ Octicons ](https://primer.style/foundations/icons/) for Typst.


= *codetastic*

=  codetastic

*Latest Version:* 0.2.2

Generate all sorts of codes in Typst.

*Codetastic* is a [ Typst ](https://github.com/typst/typst) package for
drawing barcodes and 2d codes.


= *wrap-it*

=  wrap-it

*Latest Version:* 0.1.1

Wrap text around figures and content

Featured  Package

Until __[ https://github.com/typst/typst/issues/553
](https://github.com/typst/typst/issues/553) _ _ is resolved, ` typst `
doesnât natively support wrapping text around figures or other content.
However, you can use ` wrap-it ` to mimic much of this functionality:

  - Wrapping images left or right of their text

  - Specifying margins

  - And more

Detailed descriptions of each parameter are available in the __[ wrap-it
documentation ](https://github.com/ntjess/wrap-it/blob/main/docs/manual.pdf) _
_ .

The easiest method is to import ` wrap-it: wrap-content ` from the ` @preview
` package:


= *game-theoryst*

=  game-theoryst

*Latest Version:* 0.1.0

A package for typesetting games in Typst.

Featured  Package

A package for typesetting games in Typst.

Full manual available [ here
](https://github.com/typst/packages/raw/main/packages/preview/game-
theoryst/0.1.0/doc/gtheoryst-manual.pdf)

Work in progress â _coming soon!_


= *quetta*

=  quetta

*Latest Version:* 0.2.0

Write Tengwar easily with Typst.

A simple module to write [ tengwar ](https://en.wikipedia.org/wiki/Tengwar) in
[ Typst ](https://typst.app/) .


= *zero*

=  zero

*Latest Version:* 0.3.0

Advanced scientific number formatting.

Featured  Package

_Advanced scientific number formatting._

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fzero%2Fv0.3.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/zero) [ ![Test
Status](https://github.com/Mc-
Zen/zero/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/zero/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/zero/blob/main/LICENSE)

  - [ Introduction ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#introduction)
  - [ Quick Demo ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#quick-demo)
  - [ Documentation ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#documentation)
  - [ Table alignment ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#table-alignment)
  - [ Zero for third-party packages ](https://github.com/typst/packages/raw/main/packages/preview/zero/0.3.0/#zero-for-third-party-packages)


= *indic-numerals*

=  indic-numerals

*Latest Version:* 0.1.0

convert arabic numerals to indic numerals and vice versa

[ ![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)
](https://github.com/cecoeco/indic-numerals/blob/main/LICENSE.md)


= *umbra*

=  umbra

*Latest Version:* 0.1.0

Basic shadows for Typst

Featured  Package

Umbra is a library for drawing basic gradient shadows in [ typst
](https://typst.app/) . It currently provides only one function for drawing a
shadow along one edge of a path.


= *tenv*

=  tenv

*Latest Version:* 0.1.1

Parse a .env content.

Parse a .env content.


= *codelst*

=  codelst

*Latest Version:* 2.0.2

A typst package to render sourcecode.

*codelst* is a [ Typst ](https://github.com/typst/typst) package for
rendering sourcecode with line numbers and some other additions.


= *fletcher*

=  fletcher

*Latest Version:* 0.5.2

Draw diagrams with nodes and arrows.

Featured  Package

[ ![Manual](https://img.shields.io/badge/docs-manual.pdf-green)
](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/manual.pdf?raw=true)
![Version](https://img.shields.io/badge/version-0.5.2-green) [ ![Development
version](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fgithub.com%2FJollywatt%2Ftypst-
fletcher%2Fraw%2Fdev%2Ftypst.toml&query=package.version&label=dev&color=blue)
](https://github.com/Jollywatt/typst-fletcher/tree/dev) [
![Repo](https://img.shields.io/badge/GitHub-repo-blue)
](https://github.com/Jollywatt/typst-fletcher)

_*fletcher* (noun) a maker of arrows _

A [ Typst ](https://typst.app/) package for drawing diagrams with arrows,
built on top of [ CeTZ ](https://github.com/johannes-wolf/cetz) . See the [
manual
](https://github.com/typst/packages/raw/main/packages/preview/fletcher/0.5.2/docs/manual.pdf?raw=true)
for documentation.


= *anti-matter*

=  anti-matter

*Latest Version:* 0.1.1

Simple page numbering of front and back matter.

This typst packages allows you to simply mark the end and start of your front
matter and back matter to change style and value of your page number without
manually setting and keeping track of inner and outer page counters.


= *tablem*

=  tablem

*Latest Version:* 0.1.0

Write markdown-like tables easily.

Write markdown-like tables easily.


= *frame-it*

=  frame-it

*Latest Version:* 1.0.0

Beautiful, flexible, and integrated. Display custom frames for theorems,
environments, and more. Attractive visuals with syntax that blends seamlessly
into the source.

![Introductory PDF](https://raw.githubusercontent.com/marc-thieme/frame-
it/refs/heads/assets/README.svg)


= *ionio-illustrate*

=  ionio-illustrate

*Latest Version:* 0.2.0

Mass spectra with annotations for typst.

[ ![GitHub](https://img.shields.io/github/license/jamesxx/ionio-illustrate)
](https://github.com/jamesxx/ionio-illustrate/blob/master/LICENSE) [ ![typst
package](https://img.shields.io/badge/typst-package-239dad)
](https://github.com/typst/packages/tree/main/packages/preview/ionio-
illustrate) [ ![GitHub tag \(with
filter\)](https://img.shields.io/github/v/tag/jamesxx/ionio-illustrate)
](https://github.com/JamesxX/ionio-illustrate/tags)

This package implements a Cetz chart-like object for displying mass
spectrometric data in Typst documents. It allows for individually styled mass
peaks, callouts, titles, and mass callipers.

[ *Explore the docs Â»* ](https://github.com/jamesxx/ionio-
illustrate/blob/main/manual.pdf)

[ Report Bug ](https://github.com/jamesxx/ionio-illustrate/issues) Â· [
Request Feature ](https://github.com/jamesxx/ionio-illustrate/issues)


= *scienceicons*

=  scienceicons

*Latest Version:* 0.0.6

SVG icons for open-science articles

SVG icons for open-science articles


= *icu-datetime*

=  icu-datetime

*Latest Version:* 0.1.2

Date and time formatting using ICU4X via WASM

This library is a wrapper around [ ICU4X ](https://github.com/unicode-
org/icu4x) â ` datetime ` formatting for Typst which provides
internationalized formatting for dates, times, and timezones.

As the WASM bundle includes all localization data, itâs quite large (about 8
MiB).

See [ nerixyz.github.io/icu-typ ](https://nerixyz.github.io/icu-typ) for a
full API reference with more examples.


= *conchord*

=  conchord

*Latest Version:* 0.2.0

Easily write lyrics with chords, generate chord diagrams and tabs.

Featured  Package

> Notice: Iâm preparing the update, so the documentation there is referring
> to the new version.

` conchord ` (concise chord) is a [ Typst ](https://github.com/typst/typst)
package to write lyrics with chords and generate colorful fretboard diagram
(aka chord diagram). From ` 0.1.1 ` there is also experimental tabs support
(though quite simple and unstable yet). It is inspired by [ chordx
](https://github.com/ljgago/typst-chords) package and my previous tiny project
for generating chord diagrams SVG-s.

` conchord ` makes it easy to add new chords, both for diagrams and lyrics.
Unlike [ chordx ](https://github.com/ljgago/typst-chords) , you donât need
to think about layout and pass lots of arrays for drawing barres. Just pass a
string with held frets and it will work:


= *typearea*

=  typearea

*Latest Version:* 0.2.0

A KOMA-Script inspired package to better configure your typearea and margins.

A KOMA-Script inspired package to better configure your typearea and margins.


= *ctheorems*

=  ctheorems

*Latest Version:* 1.1.3

Numbered theorem environments for typst.

An implementation of numbered theorem environments in [ typst
](https://github.com/typst/typst) . Import using


= *colorful-boxes*

=  colorful-boxes

*Latest Version:* 1.3.1

Predefined colorful boxes to spice up your document.

Colorful boxes in [ Typst ](https://github.com/typst/typst) .

Check out [ the example project
](https://typst.app/project/rp9q3upfc69bPUCbv0BjzX) to see all boxes in action

Current features include:

  - a colorful box is in four different colors (black, red, blue, green)
  - a colorful box with a slanted headline
  - a box with a simple outline
  - a rotateable stickynote


= *mannot*

=  mannot

*Latest Version:* 0.1.0

A package for highlighting and annotating in math blocks.

A package for highlighting and annotating in math blocks in [ Typst
](https://typst.app/) .

A full documentation is [ here
](https://github.com/typst/packages/raw/main/packages/preview/mannot/0.1.0/docs/doc.pdf)
.


= *mino*

=  mino

*Latest Version:* 0.1.2

Render tetris fumen in typst.

Render tetris [ fumen ](https://harddrop.com/fumen/) in typst!

![](https://github.com/typst/packages/raw/main/packages/preview/mino/0.1.2/mino.svg)


= *sourcerer*

=  sourcerer

*Latest Version:* 0.2.1

Customizable and flexible source-code blocks

Sourcerer is a Typst package for displaying stylized source code blocks, with
some extra features. Main features include:

  - Rendering source code with numbering
  - Rendering only a range of lines from the source code, keeping the original highlighting of the code (For example, block comments are still rendered well, even if cut)
  - Adding in-code line labels which are easily referenceable (via ` reference ` )
  - Considerable customization options for the display of the code block
  - Consistent and pretty cutoff between pages
  - Displaying the language used for a code block in a readable manner, in-code-block

First, import the package via:


= *gviz*

=  gviz

*Latest Version:* 0.1.0

Generate graphs using the graphviz dot language.

GViz is a typst plugin that can render graphviz graphs.

It uses [ https://codeberg.org/Sekoia/layout
](https://codeberg.org/Sekoia/layout) as a backend, which means it can
currently only render to SVG, and mostly supports basic features.

Import it like any other plugin: ` #import "@preview/gviz:0.1.0": * ` .


= *ascii-ipa*

=  ascii-ipa

*Latest Version:* 2.0.0

Converter for ASCII representations of the International Phonetic Alphabet
(IPA)

ð ASCII / IPA conversion for Typst

This package allows you to easily convert different ASCII representations of
the International Phonetic Alphabet (IPA) to and from the IPA. It also offers
some minor utilities to make phonetic transcriptions easier to use overall.
The package is being maintained [ here ](https://github.com/imatpot/typst-
ascii-ipa) .

Note: This is an extended port of the [ ` ipa-translate `
](https://github.com/tirimid/ipa-translate) Rust crate by [ tirimid
](https://github.com/tirimid) âs conversion features into native Typst. Most
conversions are implemented according to [ this Wikipedia article
](https://en.wikipedia.org/wiki/Comparison_of_ASCII_encodings_of_the_International_Phonetic_Alphabet)
which in turn relies of the official specifications of the respective ASCII
representations.


= *gridlock*

=  gridlock

*Latest Version:* 0.2.0

Grid typesetting in Typst

Grid typesetting in Typst. Use this package if you want to line up your body
text across columns and pages.


= *natrix*

=  natrix

*Latest Version:* 0.1.0

Natural and consistent matrix for typst.

![](https://github.com/typst/packages/raw/main/packages/preview/natrix/0.1.0/natrix.svg)

` natrix.nat ` is a drop-in replacement for ` mat ` with some additional
features. ` nat ` ensures that each row in your matrix should have the similar
height, unless one of them becomes too tall.

At this moment, it is recommended to use ` nat ` only in display equations,
but not in inline equations. This is because ` nat ` looks a little bit off
when used in inline equations.


= *pubmatter*

=  pubmatter

*Latest Version:* 0.1.0

Parse, normalize and show publication frontmatter, including authors and
affiliations

_Beautiful scientific documents with structured metadata for publishers_

[ ![Documentation](https://img.shields.io/badge/typst-docs-orange.svg)
](https://github.com/curvenote/pubmatter/blob/main/docs.pdf) [
![License](https://img.shields.io/badge/license-MIT-blue.svg)
](https://github.com/curvenote/pubmatter/blob/main/LICENSE)

Pubmatter is a typst library for parsing, normalizing and showing scientific
publication frontmatter.

Utilities for loading, normalizing and working with authors, affiliations,
abstracts, keywords and other frontmatter information common in scientific
publications. Our goal is to introduce standardized ways of working with this
content to expose metadata to scientific publishers who are interested in
using typst in a standardized way. The specification for this ` pubmatter ` is
based on [ MyST Markdown ](https://mystmd.org/) and [ Quarto
](https://quarto.org/) , and can load their YAML files directly.


= *unify*

=  unify

*Latest Version:* 0.7.0

Format numbers, units, and ranges correctly.

Featured  Package

` unify ` is a [ Typst ](https://github.com/typst/typst) package simplifying
the typesetting of numbers, units, and ranges. It is the equivalent to
LaTeXâs ` siunitx ` , though not as mature.


= *wrap-indent*

=  wrap-indent

*Latest Version:* 0.1.0

Wrap content in custom functions with just indentation

` wrap-indent ` is a package for wrapping content in custom functions with
just indentation. This lets you avoid using trailing square brackets to wrap
content, instead you just indent it!

This system works by re-purposing Typstâs existing [ term-list
](https://typst.app/docs/reference/model/terms/) syntax via a custom show rule
on ` terms.item ` . We give it our custom function within [ state
](https://typst.app/docs/reference/introspection/state/) via a new ` wrap-in()
` function.


= *weave*

=  weave

*Latest Version:* 0.2.0

A helper library for chaining lambda abstractions

A helper library for chaining lambda abstractions, imitating the ` |> ` or ` .
` operator in some functional languages.

The function ` compose ` is the ` pipe ` function in the mathematical order.
Functions suffixed with underscore have their arguments flipped.


= *anatomy*

=  anatomy

*Latest Version:* 0.1.1

Anatomy of a Font. Visualise metrics.

_Anatomy of a Font_ . Visualise metrics.

Import the ` anatomy ` package:


= *metalogo*

=  metalogo

*Latest Version:* 1.0.2

Typeset various LaTeX logos

Typeset LaTeX compiler logos in [ typst ](https://github.com/typst/typst) .


= *idwtet*

=  idwtet

*Latest Version:* 0.3.0

Package for uniform, correct and simplified typst code demonstration.

The name ` idwtet ` stands for âI Donât Wanna Type Everything Twiceâ. It
provides a ` typst-ex ` and a ` typst-ex-code ` codeblock, which _shows*and*
executes _ typst code.

It is meant for code demonstration, e.g. when publishing a package, and
provides some niceties:

  - the code should always be correct in the examples: As the example code is used for the code block, but also for evaluation, there is no need to write it twice
  - easy configuration with simple, uniform and good look

However, there are some limitations:

  - Every code block has its own local scope and the default behaviour is that variables are not reachable from outside. A similar restriction lies on import statements. That is why, there is the ` eval-scope ` argument, which captures variables and simulates global variables. Additionally, a ` typst ` codeblock is provided for a consistent look.
  - Locality can be displayed to the users by automatically wrapping code in ` typst-ex-code ` , but ` typst-ex ` does not provide such functionality. It might thus be difficult for users to understand code examples this way.
  - The page width has to be defined in absolute terms. It is quite nice, for a showcase, to take the least possible space, but tracking the widths of all boxes and then setting the page width accordingly is not (yet) possible.


= *down*

=  down

*Latest Version:* 0.1.0

Pass down arguments of `sum`, `integral`, etc. to the next line, which can
generate shorthand to present reusable segments.

Pass down arguments of ` sum ` , ` integral ` , etc. to the next line, which
can generate shorthand to present reusable segments. While writing long step-
by-step equations, only certain parts of a line change. ` down ` leverages
Typstâs ` context ` (from version 0.11.0) to help relieve the pressure of
writing long and repetitive formulae.

Import the package:


= *quill*

=  quill

*Latest Version:* 0.5.0

Effortlessly create quantum circuit diagrams.

Featured  Package

![Quill logo](https://github.com/user-
attachments/assets/bf6bfe99-6667-41b0-9b45-13c73ed18590)

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fquill%2Fv0.5.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/quill) [ ![Test
Status](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/quill/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf)

*Quill* is a package for creating quantum circuit diagrams in [ Typst
](https://typst.app/) .

_Note, that this package is in beta and may still be undergoing breaking
changes. As new features like data types and scoped functions will be added to
Typst, this package will be adapted to profit from the new paradigms._

_Meanwhile, we suggest importing everything from the package in a local scope
to avoid polluting the global namespace (see example below)._

  - [ *Usage* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#basic-usage) _quick introduction_
  - [ *Cheat sheet* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#cheat-sheet) _gallery for quickly viewing all kinds of gates_
  - [ *Tequila* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) _building (sub-)circuits in a way similar to QASM or Qiskit_
  - [ *Examples* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#examples)
  - [ *Changelog* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#changelog)


= *lasaveur*

=  lasaveur

*Latest Version:* 0.1.3

Porting vim-latex's math shorthands to Typst. An accommendating vim syntax
file is provided in the repo.

This is a Typst package for speedy mathematical input, inspired by [ vim-latex
](https://github.com/vim-latex/vim-latex) . This project is named after my Vim
plugin [ vimtex-lasaveur ](https://github.com/yangwenbo99/vimtex-lasaveur) ,
which ports the operations in vim-latex to [ vimtex
](https://github.com/lervag/vimtex) .


= *cetz-venn*

=  cetz-venn

*Latest Version:* 0.1.2

CeTZ library for drawing venn diagrams for two or three sets.

A [ CeTZ ](https://github.com/cetz-package/cetz) library for drawing simple
two- or three-set Venn diagrams.


= *haw-hamburg*

=  haw-hamburg

*Latest Version:* 0.3.1

Unofficial template for writing a report or thesis in the HAW Hamburg
department of Computer Science design.

This is an *` unofficial ` * template for writing a report or thesis in the
` HAW Hamburg ` department of ` Computer Science ` design using [ Typst
](https://github.com/typst/typst) .


= *oxifmt*

=  oxifmt

*Latest Version:* 0.2.1

Convenient Rust-like string formatting in Typst

A Typst library that brings convenient string formatting and interpolation
through the ` strfmt ` function. Its syntax is taken directly from Rustâs `
format! ` syntax, so feel free to read its page for more information ( [
https://doc.rust-lang.org/std/fmt/ ](https://doc.rust-lang.org/std/fmt/) );
however, this README should have enough information and examples for all
expected uses of the library. Only a few things arenât supported from the
Rust syntax, such as the ` p ` (pointer) format type, or the ` .* ` precision
specifier.

A few extras (beyond the Rust-like syntax) will be added over time, though
(feel free to drop suggestions at the repository: [
https://github.com/PgBiel/typst-oxifmt ](https://github.com/PgBiel/typst-
oxifmt) ). The first âextraâ so far is the ` fmt-decimal-separator:
"string" ` parameter, which lets you customize the decimal separator for
decimal numbers (floats) inserted into strings. E.g. ` strfmt("Result: {}",
5.8, fmt-decimal-separator: ",") ` will return the string ` "Result: 5,8" `
(comma instead of dot). See more below.

*Compatible with:* [ Typst ](https://github.com/typst/typst) v0.4.0+


= *minideck*

=  minideck

*Latest Version:* 0.2.1

Simple dynamic slides.

A small package for dynamic slides in typst.

minideck provides basic functionality for dynamic slides ( ` pause ` , `
uncover ` , â¦), integration with [ fletcher
](https://typst.app/universe/package/fletcher) and [ CetZ
](https://typst.app/universe/package/cetz/) , and some minimal infrastructure
for theming.


= *ez-today*

=  ez-today

*Latest Version:* 0.1.0

Simply displays the full current date.

Simply displays the current date with easy to use customization.


= *cartao*

=  cartao

*Latest Version:* 0.1.0

Dead simple flashcards with Typst.

Dead simple flashcards with Typst.


= *tada*

=  tada

*Latest Version:* 0.1.0

Easy, composable tabular data manipulation

TaDa provides a set of simple but powerful operations on rows of data. A full
manual is available online: [ https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf ](https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf)

Key features include:

  - *Arithmetic expressions* : Row-wise operations are as simple as string expressions with field names

  - *Aggregation* : Any function that operates on an array of values can perform row-wise or column-wise aggregation

  - *Data representation* : Handle displaying currencies, floats, integers, and more with ease and arbitrary customization

Note: This library is in early development. The API is subject to change
especially as typst adds more support for user-defined types. *Backwards
compatibility is not guaranteed!* Handling of field info, value types, and
more may change substantially with more user feedback.


= *numty*

=  numty

*Latest Version:* 0.0.5

Numeric Typst


= *gridlock*

=  gridlock

*Latest Version:* 0.2.0

Grid typesetting in Typst

Grid typesetting in Typst. Use this package if you want to line up your body
text across columns and pages.


= *natrix*

=  natrix

*Latest Version:* 0.1.0

Natural and consistent matrix for typst.

![](https://github.com/typst/packages/raw/main/packages/preview/natrix/0.1.0/natrix.svg)

` natrix.nat ` is a drop-in replacement for ` mat ` with some additional
features. ` nat ` ensures that each row in your matrix should have the similar
height, unless one of them becomes too tall.

At this moment, it is recommended to use ` nat ` only in display equations,
but not in inline equations. This is because ` nat ` looks a little bit off
when used in inline equations.


= *pubmatter*

=  pubmatter

*Latest Version:* 0.1.0

Parse, normalize and show publication frontmatter, including authors and
affiliations

_Beautiful scientific documents with structured metadata for publishers_

[ ![Documentation](https://img.shields.io/badge/typst-docs-orange.svg)
](https://github.com/curvenote/pubmatter/blob/main/docs.pdf) [
![License](https://img.shields.io/badge/license-MIT-blue.svg)
](https://github.com/curvenote/pubmatter/blob/main/LICENSE)

Pubmatter is a typst library for parsing, normalizing and showing scientific
publication frontmatter.

Utilities for loading, normalizing and working with authors, affiliations,
abstracts, keywords and other frontmatter information common in scientific
publications. Our goal is to introduce standardized ways of working with this
content to expose metadata to scientific publishers who are interested in
using typst in a standardized way. The specification for this ` pubmatter ` is
based on [ MyST Markdown ](https://mystmd.org/) and [ Quarto
](https://quarto.org/) , and can load their YAML files directly.


= *unify*

=  unify

*Latest Version:* 0.7.0

Format numbers, units, and ranges correctly.

Featured  Package

` unify ` is a [ Typst ](https://github.com/typst/typst) package simplifying
the typesetting of numbers, units, and ranges. It is the equivalent to
LaTeXâs ` siunitx ` , though not as mature.


= *wrap-indent*

=  wrap-indent

*Latest Version:* 0.1.0

Wrap content in custom functions with just indentation

` wrap-indent ` is a package for wrapping content in custom functions with
just indentation. This lets you avoid using trailing square brackets to wrap
content, instead you just indent it!

This system works by re-purposing Typstâs existing [ term-list
](https://typst.app/docs/reference/model/terms/) syntax via a custom show rule
on ` terms.item ` . We give it our custom function within [ state
](https://typst.app/docs/reference/introspection/state/) via a new ` wrap-in()
` function.


= *weave*

=  weave

*Latest Version:* 0.2.0

A helper library for chaining lambda abstractions

A helper library for chaining lambda abstractions, imitating the ` |> ` or ` .
` operator in some functional languages.

The function ` compose ` is the ` pipe ` function in the mathematical order.
Functions suffixed with underscore have their arguments flipped.


= *anatomy*

=  anatomy

*Latest Version:* 0.1.1

Anatomy of a Font. Visualise metrics.

_Anatomy of a Font_ . Visualise metrics.

Import the ` anatomy ` package:


= *metalogo*

=  metalogo

*Latest Version:* 1.0.2

Typeset various LaTeX logos

Typeset LaTeX compiler logos in [ typst ](https://github.com/typst/typst) .


= *idwtet*

=  idwtet

*Latest Version:* 0.3.0

Package for uniform, correct and simplified typst code demonstration.

The name ` idwtet ` stands for âI Donât Wanna Type Everything Twiceâ. It
provides a ` typst-ex ` and a ` typst-ex-code ` codeblock, which _shows*and*
executes _ typst code.

It is meant for code demonstration, e.g. when publishing a package, and
provides some niceties:

  - the code should always be correct in the examples: As the example code is used for the code block, but also for evaluation, there is no need to write it twice
  - easy configuration with simple, uniform and good look

However, there are some limitations:

  - Every code block has its own local scope and the default behaviour is that variables are not reachable from outside. A similar restriction lies on import statements. That is why, there is the ` eval-scope ` argument, which captures variables and simulates global variables. Additionally, a ` typst ` codeblock is provided for a consistent look.
  - Locality can be displayed to the users by automatically wrapping code in ` typst-ex-code ` , but ` typst-ex ` does not provide such functionality. It might thus be difficult for users to understand code examples this way.
  - The page width has to be defined in absolute terms. It is quite nice, for a showcase, to take the least possible space, but tracking the widths of all boxes and then setting the page width accordingly is not (yet) possible.


= *down*

=  down

*Latest Version:* 0.1.0

Pass down arguments of `sum`, `integral`, etc. to the next line, which can
generate shorthand to present reusable segments.

Pass down arguments of ` sum ` , ` integral ` , etc. to the next line, which
can generate shorthand to present reusable segments. While writing long step-
by-step equations, only certain parts of a line change. ` down ` leverages
Typstâs ` context ` (from version 0.11.0) to help relieve the pressure of
writing long and repetitive formulae.

Import the package:


= *quill*

=  quill

*Latest Version:* 0.5.0

Effortlessly create quantum circuit diagrams.

Featured  Package

![Quill logo](https://github.com/user-
attachments/assets/bf6bfe99-6667-41b0-9b45-13c73ed18590)

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fquill%2Fv0.5.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/quill) [ ![Test
Status](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/quill/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf)

*Quill* is a package for creating quantum circuit diagrams in [ Typst
](https://typst.app/) .

_Note, that this package is in beta and may still be undergoing breaking
changes. As new features like data types and scoped functions will be added to
Typst, this package will be adapted to profit from the new paradigms._

_Meanwhile, we suggest importing everything from the package in a local scope
to avoid polluting the global namespace (see example below)._

  - [ *Usage* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#basic-usage) _quick introduction_
  - [ *Cheat sheet* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#cheat-sheet) _gallery for quickly viewing all kinds of gates_
  - [ *Tequila* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) _building (sub-)circuits in a way similar to QASM or Qiskit_
  - [ *Examples* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#examples)
  - [ *Changelog* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#changelog)


= *lasaveur*

=  lasaveur

*Latest Version:* 0.1.3

Porting vim-latex's math shorthands to Typst. An accommendating vim syntax
file is provided in the repo.

This is a Typst package for speedy mathematical input, inspired by [ vim-latex
](https://github.com/vim-latex/vim-latex) . This project is named after my Vim
plugin [ vimtex-lasaveur ](https://github.com/yangwenbo99/vimtex-lasaveur) ,
which ports the operations in vim-latex to [ vimtex
](https://github.com/lervag/vimtex) .


= *cetz-venn*

=  cetz-venn

*Latest Version:* 0.1.2

CeTZ library for drawing venn diagrams for two or three sets.

A [ CeTZ ](https://github.com/cetz-package/cetz) library for drawing simple
two- or three-set Venn diagrams.


= *haw-hamburg*

=  haw-hamburg

*Latest Version:* 0.3.1

Unofficial template for writing a report or thesis in the HAW Hamburg
department of Computer Science design.

This is an *` unofficial ` * template for writing a report or thesis in the
` HAW Hamburg ` department of ` Computer Science ` design using [ Typst
](https://github.com/typst/typst) .


= *oxifmt*

=  oxifmt

*Latest Version:* 0.2.1

Convenient Rust-like string formatting in Typst

A Typst library that brings convenient string formatting and interpolation
through the ` strfmt ` function. Its syntax is taken directly from Rustâs `
format! ` syntax, so feel free to read its page for more information ( [
https://doc.rust-lang.org/std/fmt/ ](https://doc.rust-lang.org/std/fmt/) );
however, this README should have enough information and examples for all
expected uses of the library. Only a few things arenât supported from the
Rust syntax, such as the ` p ` (pointer) format type, or the ` .* ` precision
specifier.

A few extras (beyond the Rust-like syntax) will be added over time, though
(feel free to drop suggestions at the repository: [
https://github.com/PgBiel/typst-oxifmt ](https://github.com/PgBiel/typst-
oxifmt) ). The first âextraâ so far is the ` fmt-decimal-separator:
"string" ` parameter, which lets you customize the decimal separator for
decimal numbers (floats) inserted into strings. E.g. ` strfmt("Result: {}",
5.8, fmt-decimal-separator: ",") ` will return the string ` "Result: 5,8" `
(comma instead of dot). See more below.

*Compatible with:* [ Typst ](https://github.com/typst/typst) v0.4.0+


= *minideck*

=  minideck

*Latest Version:* 0.2.1

Simple dynamic slides.

A small package for dynamic slides in typst.

minideck provides basic functionality for dynamic slides ( ` pause ` , `
uncover ` , â¦), integration with [ fletcher
](https://typst.app/universe/package/fletcher) and [ CetZ
](https://typst.app/universe/package/cetz/) , and some minimal infrastructure
for theming.


= *ez-today*

=  ez-today

*Latest Version:* 0.1.0

Simply displays the full current date.

Simply displays the current date with easy to use customization.


= *cartao*

=  cartao

*Latest Version:* 0.1.0

Dead simple flashcards with Typst.

Dead simple flashcards with Typst.


= *tada*

=  tada

*Latest Version:* 0.1.0

Easy, composable tabular data manipulation

TaDa provides a set of simple but powerful operations on rows of data. A full
manual is available online: [ https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf ](https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf)

Key features include:

  - *Arithmetic expressions* : Row-wise operations are as simple as string expressions with field names

  - *Aggregation* : Any function that operates on an array of values can perform row-wise or column-wise aggregation

  - *Data representation* : Handle displaying currencies, floats, integers, and more with ease and arbitrary customization

Note: This library is in early development. The API is subject to change
especially as typst adds more support for user-defined types. *Backwards
compatibility is not guaranteed!* Handling of field info, value types, and
more may change substantially with more user feedback.


= *numty*

=  numty

*Latest Version:* 0.0.5

Numeric Typst


= *gridlock*

=  gridlock

*Latest Version:* 0.2.0

Grid typesetting in Typst

Grid typesetting in Typst. Use this package if you want to line up your body
text across columns and pages.


= *natrix*

=  natrix

*Latest Version:* 0.1.0

Natural and consistent matrix for typst.

![](https://github.com/typst/packages/raw/main/packages/preview/natrix/0.1.0/natrix.svg)

` natrix.nat ` is a drop-in replacement for ` mat ` with some additional
features. ` nat ` ensures that each row in your matrix should have the similar
height, unless one of them becomes too tall.

At this moment, it is recommended to use ` nat ` only in display equations,
but not in inline equations. This is because ` nat ` looks a little bit off
when used in inline equations.


= *pubmatter*

=  pubmatter

*Latest Version:* 0.1.0

Parse, normalize and show publication frontmatter, including authors and
affiliations

_Beautiful scientific documents with structured metadata for publishers_

[ ![Documentation](https://img.shields.io/badge/typst-docs-orange.svg)
](https://github.com/curvenote/pubmatter/blob/main/docs.pdf) [
![License](https://img.shields.io/badge/license-MIT-blue.svg)
](https://github.com/curvenote/pubmatter/blob/main/LICENSE)

Pubmatter is a typst library for parsing, normalizing and showing scientific
publication frontmatter.

Utilities for loading, normalizing and working with authors, affiliations,
abstracts, keywords and other frontmatter information common in scientific
publications. Our goal is to introduce standardized ways of working with this
content to expose metadata to scientific publishers who are interested in
using typst in a standardized way. The specification for this ` pubmatter ` is
based on [ MyST Markdown ](https://mystmd.org/) and [ Quarto
](https://quarto.org/) , and can load their YAML files directly.


= *unify*

=  unify

*Latest Version:* 0.7.0

Format numbers, units, and ranges correctly.

Featured  Package

` unify ` is a [ Typst ](https://github.com/typst/typst) package simplifying
the typesetting of numbers, units, and ranges. It is the equivalent to
LaTeXâs ` siunitx ` , though not as mature.


= *wrap-indent*

=  wrap-indent

*Latest Version:* 0.1.0

Wrap content in custom functions with just indentation

` wrap-indent ` is a package for wrapping content in custom functions with
just indentation. This lets you avoid using trailing square brackets to wrap
content, instead you just indent it!

This system works by re-purposing Typstâs existing [ term-list
](https://typst.app/docs/reference/model/terms/) syntax via a custom show rule
on ` terms.item ` . We give it our custom function within [ state
](https://typst.app/docs/reference/introspection/state/) via a new ` wrap-in()
` function.


= *weave*

=  weave

*Latest Version:* 0.2.0

A helper library for chaining lambda abstractions

A helper library for chaining lambda abstractions, imitating the ` |> ` or ` .
` operator in some functional languages.

The function ` compose ` is the ` pipe ` function in the mathematical order.
Functions suffixed with underscore have their arguments flipped.


= *anatomy*

=  anatomy

*Latest Version:* 0.1.1

Anatomy of a Font. Visualise metrics.

_Anatomy of a Font_ . Visualise metrics.

Import the ` anatomy ` package:


= *metalogo*

=  metalogo

*Latest Version:* 1.0.2

Typeset various LaTeX logos

Typeset LaTeX compiler logos in [ typst ](https://github.com/typst/typst) .


= *idwtet*

=  idwtet

*Latest Version:* 0.3.0

Package for uniform, correct and simplified typst code demonstration.

The name ` idwtet ` stands for âI Donât Wanna Type Everything Twiceâ. It
provides a ` typst-ex ` and a ` typst-ex-code ` codeblock, which _shows*and*
executes _ typst code.

It is meant for code demonstration, e.g. when publishing a package, and
provides some niceties:

  - the code should always be correct in the examples: As the example code is used for the code block, but also for evaluation, there is no need to write it twice
  - easy configuration with simple, uniform and good look

However, there are some limitations:

  - Every code block has its own local scope and the default behaviour is that variables are not reachable from outside. A similar restriction lies on import statements. That is why, there is the ` eval-scope ` argument, which captures variables and simulates global variables. Additionally, a ` typst ` codeblock is provided for a consistent look.
  - Locality can be displayed to the users by automatically wrapping code in ` typst-ex-code ` , but ` typst-ex ` does not provide such functionality. It might thus be difficult for users to understand code examples this way.
  - The page width has to be defined in absolute terms. It is quite nice, for a showcase, to take the least possible space, but tracking the widths of all boxes and then setting the page width accordingly is not (yet) possible.


= *down*

=  down

*Latest Version:* 0.1.0

Pass down arguments of `sum`, `integral`, etc. to the next line, which can
generate shorthand to present reusable segments.

Pass down arguments of ` sum ` , ` integral ` , etc. to the next line, which
can generate shorthand to present reusable segments. While writing long step-
by-step equations, only certain parts of a line change. ` down ` leverages
Typstâs ` context ` (from version 0.11.0) to help relieve the pressure of
writing long and repetitive formulae.

Import the package:


= *quill*

=  quill

*Latest Version:* 0.5.0

Effortlessly create quantum circuit diagrams.

Featured  Package

![Quill logo](https://github.com/user-
attachments/assets/bf6bfe99-6667-41b0-9b45-13c73ed18590)

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fquill%2Fv0.5.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/quill) [ ![Test
Status](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/quill/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf)

*Quill* is a package for creating quantum circuit diagrams in [ Typst
](https://typst.app/) .

_Note, that this package is in beta and may still be undergoing breaking
changes. As new features like data types and scoped functions will be added to
Typst, this package will be adapted to profit from the new paradigms._

_Meanwhile, we suggest importing everything from the package in a local scope
to avoid polluting the global namespace (see example below)._

  - [ *Usage* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#basic-usage) _quick introduction_
  - [ *Cheat sheet* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#cheat-sheet) _gallery for quickly viewing all kinds of gates_
  - [ *Tequila* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) _building (sub-)circuits in a way similar to QASM or Qiskit_
  - [ *Examples* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#examples)
  - [ *Changelog* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#changelog)


= *lasaveur*

=  lasaveur

*Latest Version:* 0.1.3

Porting vim-latex's math shorthands to Typst. An accommendating vim syntax
file is provided in the repo.

This is a Typst package for speedy mathematical input, inspired by [ vim-latex
](https://github.com/vim-latex/vim-latex) . This project is named after my Vim
plugin [ vimtex-lasaveur ](https://github.com/yangwenbo99/vimtex-lasaveur) ,
which ports the operations in vim-latex to [ vimtex
](https://github.com/lervag/vimtex) .


= *cetz-venn*

=  cetz-venn

*Latest Version:* 0.1.2

CeTZ library for drawing venn diagrams for two or three sets.

A [ CeTZ ](https://github.com/cetz-package/cetz) library for drawing simple
two- or three-set Venn diagrams.


= *haw-hamburg*

=  haw-hamburg

*Latest Version:* 0.3.1

Unofficial template for writing a report or thesis in the HAW Hamburg
department of Computer Science design.

This is an *` unofficial ` * template for writing a report or thesis in the
` HAW Hamburg ` department of ` Computer Science ` design using [ Typst
](https://github.com/typst/typst) .


= *oxifmt*

=  oxifmt

*Latest Version:* 0.2.1

Convenient Rust-like string formatting in Typst

A Typst library that brings convenient string formatting and interpolation
through the ` strfmt ` function. Its syntax is taken directly from Rustâs `
format! ` syntax, so feel free to read its page for more information ( [
https://doc.rust-lang.org/std/fmt/ ](https://doc.rust-lang.org/std/fmt/) );
however, this README should have enough information and examples for all
expected uses of the library. Only a few things arenât supported from the
Rust syntax, such as the ` p ` (pointer) format type, or the ` .* ` precision
specifier.

A few extras (beyond the Rust-like syntax) will be added over time, though
(feel free to drop suggestions at the repository: [
https://github.com/PgBiel/typst-oxifmt ](https://github.com/PgBiel/typst-
oxifmt) ). The first âextraâ so far is the ` fmt-decimal-separator:
"string" ` parameter, which lets you customize the decimal separator for
decimal numbers (floats) inserted into strings. E.g. ` strfmt("Result: {}",
5.8, fmt-decimal-separator: ",") ` will return the string ` "Result: 5,8" `
(comma instead of dot). See more below.

*Compatible with:* [ Typst ](https://github.com/typst/typst) v0.4.0+


= *minideck*

=  minideck

*Latest Version:* 0.2.1

Simple dynamic slides.

A small package for dynamic slides in typst.

minideck provides basic functionality for dynamic slides ( ` pause ` , `
uncover ` , â¦), integration with [ fletcher
](https://typst.app/universe/package/fletcher) and [ CetZ
](https://typst.app/universe/package/cetz/) , and some minimal infrastructure
for theming.


= *ez-today*

=  ez-today

*Latest Version:* 0.1.0

Simply displays the full current date.

Simply displays the current date with easy to use customization.


= *cartao*

=  cartao

*Latest Version:* 0.1.0

Dead simple flashcards with Typst.

Dead simple flashcards with Typst.


= *tada*

=  tada

*Latest Version:* 0.1.0

Easy, composable tabular data manipulation

TaDa provides a set of simple but powerful operations on rows of data. A full
manual is available online: [ https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf ](https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf)

Key features include:

  - *Arithmetic expressions* : Row-wise operations are as simple as string expressions with field names

  - *Aggregation* : Any function that operates on an array of values can perform row-wise or column-wise aggregation

  - *Data representation* : Handle displaying currencies, floats, integers, and more with ease and arbitrary customization

Note: This library is in early development. The API is subject to change
especially as typst adds more support for user-defined types. *Backwards
compatibility is not guaranteed!* Handling of field info, value types, and
more may change substantially with more user feedback.


= *numty*

=  numty

*Latest Version:* 0.0.5

Numeric Typst


= *natrix*

=  natrix

*Latest Version:* 0.1.0

Natural and consistent matrix for typst.

![](https://github.com/typst/packages/raw/main/packages/preview/natrix/0.1.0/natrix.svg)

` natrix.nat ` is a drop-in replacement for ` mat ` with some additional
features. ` nat ` ensures that each row in your matrix should have the similar
height, unless one of them becomes too tall.

At this moment, it is recommended to use ` nat ` only in display equations,
but not in inline equations. This is because ` nat ` looks a little bit off
when used in inline equations.


= *pubmatter*

=  pubmatter

*Latest Version:* 0.1.0

Parse, normalize and show publication frontmatter, including authors and
affiliations

_Beautiful scientific documents with structured metadata for publishers_

[ ![Documentation](https://img.shields.io/badge/typst-docs-orange.svg)
](https://github.com/curvenote/pubmatter/blob/main/docs.pdf) [
![License](https://img.shields.io/badge/license-MIT-blue.svg)
](https://github.com/curvenote/pubmatter/blob/main/LICENSE)

Pubmatter is a typst library for parsing, normalizing and showing scientific
publication frontmatter.

Utilities for loading, normalizing and working with authors, affiliations,
abstracts, keywords and other frontmatter information common in scientific
publications. Our goal is to introduce standardized ways of working with this
content to expose metadata to scientific publishers who are interested in
using typst in a standardized way. The specification for this ` pubmatter ` is
based on [ MyST Markdown ](https://mystmd.org/) and [ Quarto
](https://quarto.org/) , and can load their YAML files directly.


= *unify*

=  unify

*Latest Version:* 0.7.0

Format numbers, units, and ranges correctly.

Featured  Package

` unify ` is a [ Typst ](https://github.com/typst/typst) package simplifying
the typesetting of numbers, units, and ranges. It is the equivalent to
LaTeXâs ` siunitx ` , though not as mature.


= *wrap-indent*

=  wrap-indent

*Latest Version:* 0.1.0

Wrap content in custom functions with just indentation

` wrap-indent ` is a package for wrapping content in custom functions with
just indentation. This lets you avoid using trailing square brackets to wrap
content, instead you just indent it!

This system works by re-purposing Typstâs existing [ term-list
](https://typst.app/docs/reference/model/terms/) syntax via a custom show rule
on ` terms.item ` . We give it our custom function within [ state
](https://typst.app/docs/reference/introspection/state/) via a new ` wrap-in()
` function.


= *weave*

=  weave

*Latest Version:* 0.2.0

A helper library for chaining lambda abstractions

A helper library for chaining lambda abstractions, imitating the ` |> ` or ` .
` operator in some functional languages.

The function ` compose ` is the ` pipe ` function in the mathematical order.
Functions suffixed with underscore have their arguments flipped.


= *anatomy*

=  anatomy

*Latest Version:* 0.1.1

Anatomy of a Font. Visualise metrics.

_Anatomy of a Font_ . Visualise metrics.

Import the ` anatomy ` package:


= *metalogo*

=  metalogo

*Latest Version:* 1.0.2

Typeset various LaTeX logos

Typeset LaTeX compiler logos in [ typst ](https://github.com/typst/typst) .


= *idwtet*

=  idwtet

*Latest Version:* 0.3.0

Package for uniform, correct and simplified typst code demonstration.

The name ` idwtet ` stands for âI Donât Wanna Type Everything Twiceâ. It
provides a ` typst-ex ` and a ` typst-ex-code ` codeblock, which _shows*and*
executes _ typst code.

It is meant for code demonstration, e.g. when publishing a package, and
provides some niceties:

  - the code should always be correct in the examples: As the example code is used for the code block, but also for evaluation, there is no need to write it twice
  - easy configuration with simple, uniform and good look

However, there are some limitations:

  - Every code block has its own local scope and the default behaviour is that variables are not reachable from outside. A similar restriction lies on import statements. That is why, there is the ` eval-scope ` argument, which captures variables and simulates global variables. Additionally, a ` typst ` codeblock is provided for a consistent look.
  - Locality can be displayed to the users by automatically wrapping code in ` typst-ex-code ` , but ` typst-ex ` does not provide such functionality. It might thus be difficult for users to understand code examples this way.
  - The page width has to be defined in absolute terms. It is quite nice, for a showcase, to take the least possible space, but tracking the widths of all boxes and then setting the page width accordingly is not (yet) possible.


= *down*

=  down

*Latest Version:* 0.1.0

Pass down arguments of `sum`, `integral`, etc. to the next line, which can
generate shorthand to present reusable segments.

Pass down arguments of ` sum ` , ` integral ` , etc. to the next line, which
can generate shorthand to present reusable segments. While writing long step-
by-step equations, only certain parts of a line change. ` down ` leverages
Typstâs ` context ` (from version 0.11.0) to help relieve the pressure of
writing long and repetitive formulae.

Import the package:


= *quill*

=  quill

*Latest Version:* 0.5.0

Effortlessly create quantum circuit diagrams.

Featured  Package

![Quill logo](https://github.com/user-
attachments/assets/bf6bfe99-6667-41b0-9b45-13c73ed18590)

[ ![Typst
Package](https://img.shields.io/badge/dynamic/toml?url=https%3A%2F%2Fraw.githubusercontent.com%2FMc-
Zen%2Fquill%2Fv0.5.0%2Ftypst.toml&query=%24.package.version&prefix=v&logo=typst&label=package&color=239DAD)
](https://typst.app/universe/package/quill) [ ![Test
Status](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml/badge.svg) ](https://github.com/Mc-
Zen/quill/actions/workflows/run_tests.yml) [ ![MIT
License](https://img.shields.io/badge/license-MIT-blue)
](https://github.com/Mc-Zen/quill/blob/main/LICENSE) [ ![User
Manual](https://img.shields.io/badge/manual-.pdf-purple)
](https://github.com/Mc-Zen/quill/releases/download/v0.5.0/quill-guide.pdf)

*Quill* is a package for creating quantum circuit diagrams in [ Typst
](https://typst.app/) .

_Note, that this package is in beta and may still be undergoing breaking
changes. As new features like data types and scoped functions will be added to
Typst, this package will be adapted to profit from the new paradigms._

_Meanwhile, we suggest importing everything from the package in a local scope
to avoid polluting the global namespace (see example below)._

  - [ *Usage* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#basic-usage) _quick introduction_
  - [ *Cheat sheet* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#cheat-sheet) _gallery for quickly viewing all kinds of gates_
  - [ *Tequila* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#tequila) _building (sub-)circuits in a way similar to QASM or Qiskit_
  - [ *Examples* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#examples)
  - [ *Changelog* ](https://github.com/typst/packages/raw/main/packages/preview/quill/0.5.0/#changelog)


= *lasaveur*

=  lasaveur

*Latest Version:* 0.1.3

Porting vim-latex's math shorthands to Typst. An accommendating vim syntax
file is provided in the repo.

This is a Typst package for speedy mathematical input, inspired by [ vim-latex
](https://github.com/vim-latex/vim-latex) . This project is named after my Vim
plugin [ vimtex-lasaveur ](https://github.com/yangwenbo99/vimtex-lasaveur) ,
which ports the operations in vim-latex to [ vimtex
](https://github.com/lervag/vimtex) .


= *cetz-venn*

=  cetz-venn

*Latest Version:* 0.1.2

CeTZ library for drawing venn diagrams for two or three sets.

A [ CeTZ ](https://github.com/cetz-package/cetz) library for drawing simple
two- or three-set Venn diagrams.


= *haw-hamburg*

=  haw-hamburg

*Latest Version:* 0.3.1

Unofficial template for writing a report or thesis in the HAW Hamburg
department of Computer Science design.

This is an *` unofficial ` * template for writing a report or thesis in the
` HAW Hamburg ` department of ` Computer Science ` design using [ Typst
](https://github.com/typst/typst) .


= *oxifmt*

=  oxifmt

*Latest Version:* 0.2.1

Convenient Rust-like string formatting in Typst

A Typst library that brings convenient string formatting and interpolation
through the ` strfmt ` function. Its syntax is taken directly from Rustâs `
format! ` syntax, so feel free to read its page for more information ( [
https://doc.rust-lang.org/std/fmt/ ](https://doc.rust-lang.org/std/fmt/) );
however, this README should have enough information and examples for all
expected uses of the library. Only a few things arenât supported from the
Rust syntax, such as the ` p ` (pointer) format type, or the ` .* ` precision
specifier.

A few extras (beyond the Rust-like syntax) will be added over time, though
(feel free to drop suggestions at the repository: [
https://github.com/PgBiel/typst-oxifmt ](https://github.com/PgBiel/typst-
oxifmt) ). The first âextraâ so far is the ` fmt-decimal-separator:
"string" ` parameter, which lets you customize the decimal separator for
decimal numbers (floats) inserted into strings. E.g. ` strfmt("Result: {}",
5.8, fmt-decimal-separator: ",") ` will return the string ` "Result: 5,8" `
(comma instead of dot). See more below.

*Compatible with:* [ Typst ](https://github.com/typst/typst) v0.4.0+


= *minideck*

=  minideck

*Latest Version:* 0.2.1

Simple dynamic slides.

A small package for dynamic slides in typst.

minideck provides basic functionality for dynamic slides ( ` pause ` , `
uncover ` , â¦), integration with [ fletcher
](https://typst.app/universe/package/fletcher) and [ CetZ
](https://typst.app/universe/package/cetz/) , and some minimal infrastructure
for theming.


= *ez-today*

=  ez-today

*Latest Version:* 0.1.0

Simply displays the full current date.

Simply displays the current date with easy to use customization.


= *cartao*

=  cartao

*Latest Version:* 0.1.0

Dead simple flashcards with Typst.

Dead simple flashcards with Typst.


= *tada*

=  tada

*Latest Version:* 0.1.0

Easy, composable tabular data manipulation

TaDa provides a set of simple but powerful operations on rows of data. A full
manual is available online: [ https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf ](https://github.com/ntjess/typst-
tada/blob/v0.1.0/docs/manual.pdf)

Key features include:

  - *Arithmetic expressions* : Row-wise operations are as simple as string expressions with field names

  - *Aggregation* : Any function that operates on an array of values can perform row-wise or column-wise aggregation

  - *Data representation* : Handle displaying currencies, floats, integers, and more with ease and arbitrary customization

Note: This library is in early development. The API is subject to change
especially as typst adds more support for user-defined types. *Backwards
compatibility is not guaranteed!* Handling of field info, value types, and
more may change substantially with more user feedback.


= *numty*

=  numty

*Latest Version:* 0.0.5

Numeric Typst


