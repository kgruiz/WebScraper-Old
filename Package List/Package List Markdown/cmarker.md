#  cmarker

0.1.1

Transpile CommonMark Markdown to Typst, from within Typst!

#set document(title: "cmarker.typ") #set page(numbering: "1", number-align:
center) #set text(lang: "en") #align(center, text(weight: 700,
1.75em)[cmarker.typ]) #set heading(numbering: "1.") #show link: c =>
text(underline(c), fill: blue) #set image(height: 2em) #show par: set
block(above: 1.2em, below: 1.2em)
#align(center)[https://github.com/SabrinaJewson/cmarker.typ] #"

This package enables you to write CommonMark Markdown, and import it directly
into Typst.

` simple.typ ` |  ` simple.md `  
---|---  
      
    
    #import "@preview/cmarker:0.1.1"
    
    #cmarker.render(read("simple.md"))
    

|

    
    
    # We can write Markdown!
    
    *Using* __lots__ ~of~ `fancy` [features](https://example.org/).
      
  
` simple.pdf `  
---  
![](https://github.com/typst/packages/raw/main/packages/preview/cmarker/0.1.1/examples/simple.png)  
  
This document is available in [ Markdown
](https://github.com/SabrinaJewson/cmarker.typ/tree/main#cmarker) and [
rendered PDF
](https://github.com/SabrinaJewson/cmarker.typ/blob/main/README.pdf) formats.

##  API

We offer a single function:

    
    
    render(
      markdown,
      smart-punctuation: true,
      blockquote: none,
      math: none,
      h1-level: 1,
      raw-typst: true,
      scope: (:),
      show-source: false,
    ) -> content
    

The parameters are as follows:

  * ` markdown ` : The [ CommonMark ](https://spec.commonmark.org/0.30/) Markdown string to be processed. Parsed with the [ pulldown-cmark ](https://docs.rs/pulldown-cmark) Rust library. You can set this to ` read("somefile.md") ` to import an external markdown file; see the [ documentation for the read function ](https://typst.app/docs/reference/data-loading/read/) . 

    * Accepted values: Strings and raw text code blocks. 
    * Required. 
  * ` smart-punctuation ` : Automatically convert ASCII punctuation to Unicode equivalents: 

    * nondirectional quotations (" and ') become directional (ââ and ââ); 
    * three consecutive full stops (â¦) become ellipses (â¦); 
    * two and three consecutive hypen-minus signs (-- and â) become en and em dashes (â and â). 

Note that although Typst also offers this functionality, this conversion is
done through the Markdown parser rather than Typst.

    * Accepted values: Booleans. 
    * Default value: ` true ` . 
  * ` blockquote ` : A callback to be used when a blockquote is encountered in the Markdown, or ` none ` if blockquotes should be treated as normal text. Because Typst does not support blockquotes natively, the user must configure this. 

    * Accepted values: Functions accepting content and returning content, or ` none ` . 
    * Default value: ` none ` . 

For example, to display a black border to the left of the text one can use:

    
        box.with(stroke: (left: 1pt + black), inset: (left: 5pt, y: 6pt))
    

  * ` math ` : A callback to be used when equations are encountered in the Markdown, or ` none ` if it should be treated as normal text. Because Typst does not support LaTeX equations natively, the user must configure this. 

    * Accepted values: Functions that take a boolean argument named ` block ` and a positional string argument (often, the ` mitex ` function from [ the mitex package ](https://typst.app/universe/package/mitex) ), or ` none ` . 
    * Default value: ` none ` . 

For example, to render math equation as a Typst math block, one can use:

    
        #import "@preview/mitex:0.2.4": mitex
    #cmarker.render(`$\int_1^2 x \mathrm{d} x$`, math: mitex)
    

  * ` h1-level ` : The level that top-level headings in Markdown should get in Typst. When set to zero, top-level headings are treated as text, ` ## ` headings become ` = ` headings, ` ### ` headings become ` == ` headings, et cetera; when set to ` 2 ` , ` # ` headings become ` == ` headings, ` ## ` headings become ` === ` headings, et cetera. 

    * Accepted values: Integers in the range [0, 255]. 
    * Default value: 1. 
  * ` raw-typst ` : Whether to allow raw Typst code to be injected into the document via HTML comments. If disabled, the comments will act as regular HTML comments. 

    * Accepted values: Booleans. 
    * Default value: ` true ` . 

For example, when this is enabled, ` <!--raw-typst #circle(radius: 10pt) --> `
will result in a circle in the document (but only when rendered through
Typst). See also ` <!--typst-begin-exclude--> ` and ` <!--typst-end-exclude-->
` , which is the inverse of this.

  * ` scope ` : When ` raw-typst ` is enabled, this is a dictionary providing the context in which the evaluated Typst code runs. It is useful to pass values in to code inside ` <!--raw-typst--> ` blocks. 

    * Accepted values: Any dictionary. 
    * Default value: ` (:) ` . 
  * ` show-source ` : A debugging tool. When set to ` true ` , the Typst code that would otherwise have been displayed will be instead rendered in a code block. 

    * Accepted values: Booleans. 
    * Default value: ` false ` . 

This function returns the rendered ` content ` .

##  Supported Markdown Syntax

We support CommonMark with a couple extensions.

  * Paragraph breaks: Two newlines, i.e. one blank line. 
  * Hard line breaks (used more in poetry than prose): Put two spaces at the end of the line. 
  * ` *emphasis* ` or ` _emphasis_ ` : _emphasis_
  * ` **strong** ` or ` __strong__ ` : **strong**
  * ` ~strikethrough~ ` : ~strikethrough~ 
  * ` [links](https://example.org) ` : [ links ](https://example.org/)
  * ` ### Headings ` , where ` # ` is a top-level heading, ` ## ` a subheading, ` ### ` a sub-subheading, etc 
  * ` `inline code blocks` ` : ` inline code blocks `
  *     ```
    out of line code blocks
    ```
    

Syntax highlighting can be achieved by specifying a language after the opening
backticks:

    
        ```rust
    let x = 5;
    ```
    

giving:

    
        let x = 5;
    

  * ` --- ` , making a horizontal rule: 

* * *

  *     - Unordered
    - lists
    

    * Unordered 
    * Lists 
  *     1. Ordered
    1. Lists
    

    1. Ordered 
    2. Lists 
  * ` $x + y$ ` or ` $$x + y$$ ` : math equations, if the ` math ` parameter is set. 
  * ` > blockquotes ` , if the ` blockquote ` parameter is set. 
  * Images: ` ![Some tiled hexagons](examples/hexagons.png) ` , giving ![Some tiled hexagons](https://github.com/typst/packages/raw/main/packages/preview/cmarker/0.1.1/examples/hexagons.png)

##  Interleaving Markdown and Typst

Sometimes, you might want to render a certain section of the document only
when viewed as Markdown, or only when viewed through Typst. To achieve the
former, you can simply wrap the section in ` <!--typst-begin-exclude--> ` and
` <!--typst-end-exclude--> ` :

    
    
    Hello from not Typst!
    
    

Most Markdown parsers support HTML comments, so from their perspective this is
no different to just writing out the Markdown directly; but ` cmarker.typ `
knows to search for those comments and avoid rendering the content in between.

Note that when the opening comment is followed by the end of an element, `
cmarker.typ ` will close the block for you. For example:

    
    
    > 
    > One
    
    Two
    

In this code, âTwoâ will be given no matter where the document is
rendered. This is done to prevent us from generating invalid Typst code.

Conversely, one can put Typst code inside a HTML comment of the form ` <!--
raw-typst [â¦]--> ` to have it evaluated directly as Typst code (but only if
the ` raw-typst ` option to ` render ` is set to ` true ` , otherwise it will
just be seen as a regular comment and removed):

    
    
    

##  MarkdownâTypst Polyglots

This project has a manual as a PDF and a README as a Markdown document, but by
the power of this library they are in fact the same thing! Furthermore, one
can read the ` README.md ` in a markdown viewer and it will display correctly,
but one can _also_ run ` typst compile README.md ` to generate the Typst-
typeset ` README.pdf ` .

How does this work? We just have to be clever about how we write the README:

    
    
    (Typst preamble content)
    #"
    
    
    Regular Markdown goes hereâ¦
    
    
    

The same code but syntax-highlighted as Typst code helps to illuminate it:

    
    
    <picture>
    (Typst preamble content)
    #"</picture>
    <!--".slice(0,0)
    #import "@preview/cmarker:0.1.1"
    #let markdown = read("README.md")
    #markdown = markdown.slice(markdown.position("</picture>") + "</picture>".len())
    #cmarker.render(markdown, h1-level: 0)
    /*-->
    
    Regular Markdown goes hereâ¦
    
    <!--*///-->
    

##  Limitations

  * We do not currently support HTML tags, and they will be stripped from the output; for example, GitHub supports writing ` <sub>text</sub> ` to get subscript text, but we will render that as simply âtextâ. In future it would be nice to support a subset of HTML tags. 
  * We do not currently support Markdown tables and footnotes. In future it would be good to. 
  * Although I tried my best to escape everything correctly, I wonât provide a hard guarantee that everything is fully sandboxed even if you set ` raw-typst: false ` . That said, Typst itself is well-sandboxed anyway. 

##  Development

  * Build the plugin with ` ./build.sh ` , which produces the ` plugin.wasm ` necessary to use this. 
  * Compile examples with ` typst compile examples/{name}.typ --root . ` . 
  * Compile this README to PDF with ` typst compile README.md ` . 

###  How to add

Copy this into your project and use the import as  ` cmarker `

    
    
    #import "@preview/cmarker:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Sabrina Jewson 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     September 11, 2024 
First released:

     October 23, 2023 
Minimum Typst version:

     0.8.0 
Archive size:

     94.8 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/cmarker-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/SabrinaJewson/cmarker.typ)

###  Where to report issues?

This  package  is a project of  Sabrina Jewson  .  Report issues on  [ their
repository ](https://github.com/SabrinaJewson/cmarker.typ) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  September 11, 2024   
[ 0.1.0 ](https://typst.app/universe/package/cmarker/0.1.0/) |  October 23, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

