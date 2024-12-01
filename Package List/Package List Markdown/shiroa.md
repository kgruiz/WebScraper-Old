#  shiroa

0.1.2

A simple tool for creating modern online books in pure typst.

[ _shiroa_ ](https://github.com/Myriad-Dreamin/shiroa) ( _Shiro A_ , or _The
White_ , or _äºç¬º_ ) is a simple tool for creating modern online (cloud)
books in pure typst.

##  Installation (shiroa CLI)

There are multiple ways to install the [ shiroa ](https://github.com/Myriad-
Dreamin/shiroa) CLI tool. Choose any one of the methods below that best suit
your needs.

###  Pre-compiled binaries

Executable binaries are available for download on the [ GitHub Releases page
](https://github.com/Myriad-Dreamin/shiroa/releases) . Download the binary for
your platform (Windows, macOS, or Linux) and extract the archive. The archive
contains an ` shiroa ` executable which you can run to build your books.

To make it easier to run, put the path to the binary into your ` PATH ` .

###  Build from source using Rust

To build the ` shiroa ` executable from source, you will first need to install
Yarn, Rust, and Cargo. Follow the instructions on the [ Yarn installation page
](https://classic.yarnpkg.com/en/docs/install) and [ Rust installation page
](https://www.rust-lang.org/tools/install) . shiroa currently requires at
least Rust version 1.75.

To build with precompiled artifacts, run the following commands:

    
    
    cargo install --git https://github.com/Myriad-Dreamin/shiroa --locked shiroa-cli
    

To build from source, run the following commands:

    
    
    git clone https://github.com/Myriad-Dreamin/shiroa.git
    git submodule update --recursive --init
    cargo run --bin shiroa-build
    # optional: install it globally
    cargo install --path ./cli
    

With global installation, to uninstall, run the command ` cargo uninstall
shiroa ` .

Again, make sure to add the Cargo bin directory to your ` PATH ` .

###  Get started

See the [ Get-started ](https://myriad-dreamin.github.io/shiroa/guide/get-
started.html) online documentation.

###  Setup for writing your book

We donât provide a watch command, but ` shiroa ` is designated to embracing
all of the approaches to writing typst documents. Itâs feasible to preview
your documents by following approaches (like previewing normal documents):

  * via [ Official Web App ](https://typst.app/) . 

  * via VSCod(e,ium), see [ Tinymist ](https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist) and [ Typst Preview ](https://marketplace.visualstudio.com/items?itemName=mgt19937.typst-preview) . 

  * via other editors. For example of neovim, see [ typst.vim ](https://github.com/kaarmu/typst.vim) and [ Typst Preview ](https://github.com/Enter-tainer/typst-preview#use-without-vscode) . 

  * via ` typst-cli watch ` , See [ typst-cli watch ](https://github.com/typst/typst#usage) . 

###  Acknowledgement

  * The [ mdbook theme ](https://github.com/typst/packages/raw/main/packages/preview/shiroa/0.1.2/themes/mdbook/) is borrowed from [ mdBook ](https://github.com/rust-lang/mdBook/tree/master/src/theme) project. 

  * Compile the document with awesome [ Typst ](https://github.com/typst/typst) . 

###  How to add

Copy this into your project and use the import as  ` shiroa `

    
    
    #import "@preview/shiroa:0.1.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Myriad-Dreamin ](https://github.com/Myriad-Dreamin)
License:

     Apache-2.0 
Current version:

     0.1.2 
Last updated:

     October 22, 2024 
First released:

     June 17, 2024 
Archive size:

     11.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/shiroa-0.1.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/Myriad-Dreamin/shiroa)
Categor  y  :

    

  * ![Book icon](/assets/icons/16-docs.svg) [ Book ](https://typst.app/universe/search/?category=book)

###  Where to report issues?

This  package  is a project of  Myriad-Dreamin  .  Report issues on  [ their
repository ](https://github.com/Myriad-Dreamin/shiroa) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  October 22, 2024   
[ 0.1.1 ](https://typst.app/universe/package/shiroa/0.1.1/) |  August 26, 2024   
[ 0.1.0 ](https://typst.app/universe/package/shiroa/0.1.0/) |  June 17, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

