#  codly-languages

0.1.1

A set of language configurations for use with codly

Provides a set of predefined language configurations for use with the ` codly
` code listing package. For each supported language, this package defines a
name, icon, and color to use when displaying code.

##  Usage

Pretty simple. Import ` codly ` . Initialize it. Import ` codly-languages ` .
Configure ` codly ` with the languages. Like this:

    
    
    #import "@preview/codly:1.0.0": *
    #show: codly-init
    
    #import "@preview/codly-languages:0.1.1": *
    #codly(languages: codly-languages)
    

Then use code blocks as you normally would and the output, for supported
languages, should look like this:

![Example code
listings](https://github.com/typst/packages/raw/main/packages/preview/codly-
languages/0.1.1/thumbnail.png)

##  Contributing

The following languages are still missing. All contributions welcome.

  * ASP 
  * ActionScript 
  * Ada 
  * AppleScript 
  * AsciiDoc 
  * Batch File 
  * CFML 
  * CSV 
  * Cabal 
  * Crontab 
  * D 
  * Diff 
  * DotENV 
  * Email 
  * Fish 
  * Fstab 
  * GLSL 
  * Graphviz 
  * Groff 
  * Group 
  * INI 
  * Jinja2 
  * Jsonnet 
  * Lean 
  * Lisp 
  * LiveScript 
  * Makefile 
  * MediaWiki 
  * NSIS 
  * Ninja 
  * Org mode 
  * Pascal 
  * Passwd 
  * Protobuf 
  * Puppet 
  * QML 
  * Racket 
  * Rego 
  * Regular Expressions 
  * Resolv 
  * RestructuredText 
  * Robot 
  * SLS 
  * SML 
  * Slim 
  * Strace 
  * SublimeEthereum 
  * SublimeJQ 
  * SystemVerilo 
  * TCL 
  * TOML 
  * Textile 
  * TodoTxt 
  * Verilog 
  * WGSL 
  * cmd-help 
  * gnuplot 
  * hosts 
  * http-request-response 
  * varlink 
  * vscode-wgsl 

##  Icon Attribution

The ` typst-small.png ` icon included in this package came from the MIT-
licensed [ codly ](https://github.com/Dherse/codly) project.

All other icons included here came from the MIT-licensed [ devicon
](https://github.com/devicons/devicon/) project.

##  License

This package is released under the MIT License.

###  How to add

Copy this into your project and use the import as  ` codly-languages `

    
    
    #import "@preview/codly-languages:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Stephen Waits ](mailto:steve@waits.net)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     November 21, 2024 
First released:

     November 18, 2024 
Archive size:

     96.2 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/codly-languages-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/swaits/typst-collection)

###  Where to report issues?

This  package  is a project of  Stephen Waits  .  Report issues on  [ their
repository ](https://github.com/swaits/typst-collection) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  November 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/codly-languages/0.1.0/) |  November 18, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

