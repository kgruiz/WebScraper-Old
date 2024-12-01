#  titleize

0.1.1

Turn strings into title case

Small wrapper around the [ titlecase ](https://crates.io/crates/titlecase)
library to convert text to title case. It follows the [ rules defined by John
Gruber ](https://daringfireball.net/2008/05/title_case) . For more details,
refer to the library.

` titlecase ` applies a show rule, that by default transforms every string of
at least four characters. This limit can be changed with the ` limit `
parameter. Especially with equations, the results can be a bit unpredictable,
so proceed with care.

    
    
    #import "@preview/titleize:0.1.1": titlecase
    
    #for s in (
      "Being productive on linux",
      "Finding an alternative to Mac OS X â part 2",
      [an example with small words and sub-phrases: "the example"],
    ) [
      #s => #titlecase(s) \
    ]
    
    #let debug-print(x) = {
      if type(x) == content {
        let fields = x.fields()
        let func = x.func()
        [
          #repr(func)
          #for (k, v) in fields [
            - #k: #debug-print(v)
          ]
        ]
      } else {
        if type(x) == array [
          array
          #for y in x [
            - #debug-print(y)
          ]
        ] else [
          #repr(type(x)) (#repr(x))
        ]
      }
    }
    
    #show: titlecase
    
    = This is a test, even with math $a = b + c$
    
    In math, text can appear in various places:
    
    $
      a_"for example in a subscript" &= "or in a longer text" \
      f(x) &= sin(x)
    $
    

![example](https://github.com/typst/packages/raw/main/packages/preview/titleize/0.1.1/example.png)

###  How to add

Copy this into your project and use the import as  ` titleize `

    
    
    #import "@preview/titleize:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Daniel Hauck ](mailto:mail@solidtux.de)
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     October 15, 2024 
First released:

     October 7, 2024 
Archive size:

     253 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/titleize-0.1.1.tar.gz)
Repository:

     [ GitLab ](https://gitlab.com/SolidTux/titleize)
Categor  ies  :

    

  * ![Text icon](/assets/icons/16-text.svg) [ Text ](https://typst.app/universe/search/?category=text)
  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Daniel Hauck  .  Report issues on  [ their
repository ](https://gitlab.com/SolidTux/titleize) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  October 15, 2024   
[ 0.1.0 ](https://typst.app/universe/package/titleize/0.1.0/) |  October 7, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

