#  codly

1.0.0

Codly is a beautiful code presentation template with many features like smart
indentation, line numbering, highlighting, etc.

Featured  Package

[
![Documentation](https://img.shields.io/website?down_message=offline&label=manual&up_color=007aff&up_message=online&url=https%3A%2F%2Fgithub.com%2FDherse%2Fcodly%2Fblob%2Fmain%2Fdocs.pdf)
](https://github.com/Dherse/codly/blob/main/docs.pdf) [ ![MIT
License](https://img.shields.io/badge/license-MIT-brightgreen)
](https://github.com/Dherse/codly/blob/main/LICENSE)
![](https://github.com/Dherse/codly/actions/workflows/test.yml/badge.svg)

Codly is a package that lets you easily create **beautiful** code blocks for
your Typst documents. It uses the newly added [ ` raw.line `
](https://typst.app/docs/reference/text/raw/#definitions-line) function to
work across all languages easily. You can customize the icons, colors, and
more to suit your documentâs theme. By default it has zebra striping, line
numbers, for ease of reading.

A full set of documentation can be found [ in the repo
](https://raw.githubusercontent.com/Dherse/codly/main/docs.pdf) .

![Example](https://github.com/typst/packages/raw/main/packages/preview/codly/1.0.0/demo.png)

    
    
    #import "@preview/codly:1.0.0": *
    #show: codly-init.with()
    
    #codly(
      languages: (
        rust: (
          name: "Rust",
          icon: text(font: "tabler-icons", "\u{fa53}),
          color: rgb("#CE412B")
        ),
      )
    )
    
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
    

###  Setup

To start using codly, you need to initialize codly using a show rule:

    
    
    #show: codly-init.with()
    

> [!TIP] You only need to do this once at the top of your document!

Then you _can_ to configure codly with your parameters:

    
    
    #codly(
      languages: (
        rust: (name: "Rust", icon: "\u{fa53}", color: rgb("#CE412B")),
      )
    )
    

> [!IMPORTANT] Any parameter that you leave blank will use the previous values
> (or the default value if never set) similar to a ` set ` rule in regular
> typst. But the changes are always global unless you use the provided `
> codly.local ` function. To get a full list of all settings, see the [
> documentation
> ](https://raw.githubusercontent.com/Dherse/codly/main/docs.pdf) .

Then you just need to add a code block and it will be automatically displayed
correctly:

    
    
    ```rust
    pub fn main() {
        println!("Hello, world!");
    }
    ```
    

###  Disabling

To locally disable codly, you can just do the following, you can then later
re-enable it using the ` codly ` configuration function.

    
    
    #disable-codly()
    

Alternatively, you can use the ` no-codly ` function to achieve the same
effect locally:

    
    
    #no-codly[
      ```typ
      I will be displayed using the normal raw blocks.
      ```
    ]
    

###  Setting an offset

If you wish to add an offset to your code block, but without selecting a
subset of lines, you can use the ` codly-offset ` function:

    
    
    // Sets a 5 line offset
    #codly-offset(5)
    

###  Selecting a subset of lines

If you wish to select a subset of lines, you can use the ` codly-range `
function. By setting the start to 1 and the end to ` none ` you can select all
lines from the start to the end of the code block.

    
    
    #codly-range(start: 5, end: 10)
    

###  Adding a âskipâ

You can add a âfakeâ skip between lines using the ` skips ` parameters:

    
    
    // Before the 5th line (indexing start at 0), insert a 32 line jump.
    #codly(skips: ((4, 32), ))
    

This can be customized using the ` skip-line ` and ` skip-number ` to
customize what it looks like.

###  Adding annotations

> [!IMPORTANT] This is a Beta feature and has a few quirks, refer to [ the
> documentation
> ](https://raw.githubusercontent.com/Dherse/codly/main/docs.pdf) for those

You can annotate a line/group of lines using the ` annotations ` parameters :

    
    
    // Add an annotation from the second line (0 indexing) to the 5th line included.
    #codly(
      annotations: (
        (
          start: 1,
          end: 4,
          content: block(
            width: 2em,
            // Rotate the element to make it look nice
            rotate(
              -90deg,
              align(center, box(width: 100pt)[Function body])
            )
          )
        ), 
      )
    )
    

###  Disabling line numbers

You can configure this with the ` codly ` function:

    
    
    #codly(number-format: none)
    

###  Disabling zebra striping

You disable zebra striping by setting the ` zebra-fill ` to white.

    
    
    #codly(zebra-fill: none)
    

###  Customize the stroke

You can customize the stroke surrounding the figure using the ` stroke `
parameter of the ` codly ` function:

    
    
    #codly(stroke: 1pt + red)
    

###  Misc

You can also disable the icon, by setting the ` display-icon ` parameter to `
false ` :

    
    
    #codly(display-icon: false)
    

Same with the name, whether the block is breakable, the radius, the padding,
and the width of the numbers columns, and so many more [ documentation
](https://raw.githubusercontent.com/Dherse/codly/main/docs.pdf) .

###  How to add

Copy this into your project and use the import as  ` codly `

    
    
    #import "@preview/codly:1.0.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Dherse ](https://github.com/Dherse)
License:

     MIT 
Current version:

     1.0.0 
Last updated:

     July 17, 2024 
First released:

     November 6, 2023 
Minimum Typst version:

     0.11.0 
Archive size:

     14.3 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/codly-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Dherse/codly)

###  Where to report issues?

This  package  is a project of  Dherse  .  Report issues on  [ their
repository ](https://github.com/Dherse/codly) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  July 17, 2024   
[ 0.2.1 ](https://typst.app/universe/package/codly/0.2.1/) |  April 1, 2024   
[ 0.2.0 ](https://typst.app/universe/package/codly/0.2.0/) |  January 1, 2024   
[ 0.1.0 ](https://typst.app/universe/package/codly/0.1.0/) |  November 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

