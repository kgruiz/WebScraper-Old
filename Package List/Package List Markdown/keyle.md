#  keyle

0.2.0

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

##  Usage

Please see the [ keyle.pdf
](https://github.com/magicwenli/keyle/blob/main/doc/keyle.pdf) for more
documentation.

` keyle ` is imported using:

    
    
    #import "@preview/keyle:0.2.0"
    

###  Example

####  Custom Delimiter

    
    
    #let kbd = keyle.config()
    #kbd("Ctrl", "Shift", "K", delim: "-")
    

![Custom
Delimiter](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-1.png)

####  Compact Mode

    
    
    #let kbd = keyle.config()
    #kbd("Ctrl", "Shift", "K", compact: true)
    

![Compact
Mode](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-2.png)

####  Standard Theme

    
    
    #let kbd = keyle.config(theme: keyle.themes.standard)
    #keyle.gen-examples(kbd)
    

![Standard
Theme](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-3.png)

####  Deep Blue Theme

    
    
    #let kbd = keyle.config(theme: keyle.themes.deep-blue)
    #keyle.gen-examples(kbd)
    

![Deep Blue
Theme](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-4.png)

####  Type Writer Theme

    
    
    #let kbd = keyle.config(theme: keyle.themes.type-writer)
    #keyle.gen-examples(kbd)
    

![Type Writer
Theme](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-5.png)

####  Biolinum Theme

    
    
    #let kbd = keyle.config(theme: keyle.themes.biolinum, delim: keyle.biolinum-key.delim_plus)
    #keyle.gen-examples(kbd)
    

![Biolinum
Theme](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-6.png)

####  Custom Theme

    
    
    // https://www.radix-ui.com/themes/playground#kbd
    #let radix_kdb(content) = box(
      rect(
        inset: (x: 0.5em),
        outset: (y:0.05em),
        stroke: rgb("#1c2024") + 0.3pt,
        radius: 0.35em,
        fill: rgb("#fcfcfd"),
        text(fill: black, font: (
          "Roboto",
          "Helvetica Neue",
        ), content),
      ),
    )
    #let kbd = keyle.config(theme: radix_kdb)
    #keyle.gen-examples(kbd)
    

![Custom
Theme](https://github.com/typst/packages/raw/main/packages/preview/keyle/0.2.0/test/test-7.png)

##  License

MIT

###  How to add

Copy this into your project and use the import as  ` keyle `

    
    
    #import "@preview/keyle:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ magicwenli ](mailto:yxnian@outlook.com)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     August 27, 2024 
First released:

     July 24, 2024 
Minimum Typst version:

     0.11.1 
Archive size:

     5.97 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/keyle-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/magicwenli/keyle)
Categor  ies  :

    

  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)
  * ![Fun icon](/assets/icons/16-smile.svg) [ Fun ](https://typst.app/universe/search/?category=fun)

###  Where to report issues?

This  package  is a project of  magicwenli  .  Report issues on  [ their
repository ](https://github.com/magicwenli/keyle) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  August 27, 2024   
[ 0.1.1 ](https://typst.app/universe/package/keyle/0.1.1/) |  August 12, 2024   
[ 0.1.0 ](https://typst.app/universe/package/keyle/0.1.0/) |  July 24, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

