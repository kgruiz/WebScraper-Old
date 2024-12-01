#  showman

0.1.2

Eval & show typst code outputs inline with their source

![](https://www.github.com/ntjess/showman/raw/v0.1.0/showman.jpg)

* * *

Automagic tools to smooth the package documentation & development process.

  * Package your files for local typst installation or PR submission in one command 

  * Provide your readme in typst format with code block examples, and let ` showman ` do the rest! In one command, it will the readme to markdown and render code block outputs as included images. 

    * Bonus points â let ` showman ` know your repository path and it will ensure images will properly appear in your readme even after your package has been distributed through typstâs registry. 
  * Execute non-typst code blocks and render their outputs 

**Prerequisites** : Make sure you have ` typst ` and ` pandoc ` available from
the command line. Then, in a python virtual environment, run:

    
    
    pip install showman
    

Create a typst file with ` ```example ` code blocks that show the output you
want to include in your readme. For instance:

    
    
    #import "@preview/cetz:0.1.2"
    // Just to avoid showing this heading in the readme itself
    #set heading(outlined: false)
    
    = Hello, world!
    Let's do something complicated:
    
    #cetz.canvas({
      import cetz.plot
      import cetz.palette
      cetz.draw.set-style(axes: (tick: (length: -.05)))
      // Plot something
      plot.plot(size: (3,3), x-tick-step: 1, axis-style: "left", {
          for i in range(0, 3) {
          plot.add(domain: (-4, 2),
          x => calc.exp(-(calc.pow(x + i, 2))),
          fill: true, style: palette.tango)
        }
      })
    })
    

![Example
1](https://www.github.com/ntjess/showman/raw/v0.1.0/assets/example-1.png)

Then, run the following command:

    
    
    showman md 
    

Congrats, you now have a readme with inline images ð

You can optionally specify your workspace root, output file name, image
folder, etc. These options are visible under ` showman md --help ` .

**Note** : You can customize the appearance of these images by providing `
showman ` the template to use when creating them. In your file to be rendered,
create a variable called ` showman-config ` at the outermost scope:

    
    
    // Render images with a black background and red text
    #let showman-config = (
      template: it => {
        set text(fill: red)
        rect(fill: black, it)
      }
    )
    

Behind the scenes, showman imports your file as a module and looks for this
variable. If it is found, your template and a few other options are injected
into the example rendering process.

**Note** : If every example has the same setup (package imports, etc.), and
you donât want the text to be included in your examples, you can pass `
eval-kwargs ` in this config as well to specify a string that gets prefixed to
every example. Alternatively, pass variables in a scope directly:

    
    
    // Setup either through providing scope or import prefixes
    #let my-variable = 5
    #let showman-config = (
      eval-kwargs: (
        prefix: "#import \"@preview/cetz:0.1.2\"
      ),
      // Now you can use `my-var` in your examples
      scope: (my-var: my-variable)
    )
    

##  Caveats

  * ` showman ` uses the beautiful ` pandoc ` to do most of the markdown conversion heavy lifting. So, if your document canât be processed by pandoc, you may need to adjust your syntax until pandoc is happy making a markdown document. 

  * Typst doesnât allow page styling inside containers. Since ` showman ` must use containers to extract each rendered example, you canât use ` #set page(...) ` or ` #pagebreak() ` inside your examples. 

If you donât care about converting your readme to markdown, itâs even
easier to have example rendered alongside their code. Simply add the following
preamble to your file:

    
    
    #import "@preview/showman:0.1.1"
    #show: showman.formatter.template
    
    The code below will be rendered side by side with its output:
    
    ``` typst
    = Hello world!
    ```
    ![Example 2](https://www.github.com/ntjess/showman/raw/v0.1.0/assets/example-2.png)
    
    Several keywords can be privded to customize appearance and more. See `showman.formatter.template` for more details.
    

Youâve done the hard work of creating a beautiful, well-documented manual.
Now itâs time to share it with the world. ` showman ` can help you package
your files for distribution in one command, after some minimal setup.

  1. Make sure you have a ` typst.toml ` file that follows typst [ packaging guidelines ](https://github.com/typst/packages)

  2. Add a new block to your toml file as follows: 

    
    
    [tool.packager]
    paths = [...]
    

Where ` paths ` is a list of files and directories you want to include in your
package.

  3. Run the following command from the root of your repository: 

    
    
    showman package 
    

  4. Without any other arguments, youâve just installed your package in your systemâs local typst packages folder. Now you can import it with ` typst #import "@local/mypackage:<version>" ` . 

     * You can alternatively specify the path to your fork of ` typst/packages ` to prep your files for a PR, or specify a ` --namespace ` other than ` local ` . 

**Note** : You can see the full list of command options with ` showman package
--help ` .

This package also executes non-typst code (currently bash on non-windows,
python, and c++). You can use ` showman execute ./path/to/file.typ ` to
execute code blocks in these languages, and the output will be captured in a `
.coderunner.json ` file in the root directory you specified. To enable this
feature, you need to add the following preamble to your file:

    
    
    #import "@preview/showman:0.1.1": runner
    
    #let cache = json("/.coderunner.json").at("path/to/file.typ", default: (:))
    #let show-rule = runner.external-code.with(result-cache: cache)
    
    // Now, apply the show rule to languages that have a `showman execute` result:
    #show raw.where(lang: "python"): show-rule
    

You can optionally style ` <example-input> ` and ` <example-output> ` labels
to customize how input and output blocks appear. For even deeper
customization, you can specify the ` container ` that displays the input and
output blocks that accepts a keyword ` direction ` and positional ` input `
and ` output ` .

###  How to add

Copy this into your project and use the import as  ` showman `

    
    
    #import "@preview/showman:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Nathan Jessurun 
License:

     Unlicense 
Current version:

     0.1.2 
Last updated:

     November 28, 2024 
First released:

     January 15, 2024 
Minimum Typst version:

     0.12.0 
Archive size:

     6.00 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/showman-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/ntjess/showman)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Nathan Jessurun  .  Report issues on  [ their
repository ](https://github.com/ntjess/showman) .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  November 28, 2024   
[ 0.1.1 ](https://typst.app/universe/package/showman/0.1.1/) |  March 16, 2024   
[ 0.1.0 ](https://typst.app/universe/package/showman/0.1.0/) |  January 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

