#  latedef

0.1.0

Use now, define later

_Use now, define later!_

##  Basic usage

This package exposes a single function, ` latedef-setup ` .

    
    
    #let (undef, def) = latedef-setup(simple: true)
    
    My #undef is #undef.
    #def("dog")
    #def("cool")
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/1.png)

Note that the definition doesnât actually have to come _after_ the usage,
but if you want to define something beforehand, youâre better off using a
variable instead.

    
    
    #let (undef, def) = latedef-setup(simple: true)
    
    // Instead of
    #def("A")
    The first letter is #undef.
    
    // you should use
    #let A = "A"
    The first letter is #A.
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/2.png)

##  The ` simple ` parameter

When ` simple: false ` (which is the default), ` undef ` becomes a function
you have to call. It takes an optional positional or named parameter ` id ` of
type ` str ` , which can be used to define things out of order.

    
    
    #let (undef, def) = latedef-setup() // or `latedef-setup(simple: false)`
    
    // Note that you can still call it without an id, which works just like when `simple: true`.
    My letters are #undef("1"), #undef(id: "2"), and #undef().
    
    // `def` now takes one positional and either another positional or a named parameter.
    #def("C")
    #def(id: "2", "B")
    #def("1", "A")
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/3.png)

##  The ` footnote ` parameter

This is a convenience feature that automatically wraps ` undef ` in ` footnote
` , either directly (when ` simple: true ` ) or as a function (when ` simple:
false ` ).

This corresponds to LaTeXâs ` \footnotemark ` and ` \footnotetext ` , hence
the different names in the example.

    
    
    #let (fmark, ftext) = latedef-setup(simple: true, footnote: true)
    Do#fmark you#fmark believe#fmark in God?#fmark
    
    #let wdym = "What do you mean"
    #ftext[#wdym "Do"?]
    #ftext[#wdym "you"?]
    #ftext[#wdym "believe"?]
    #ftext[And w#wdym.slice(1) "God"?]
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/4.png)

##  The ` stand-in ` parameter

This is a function that takes a single positional parameter ( ` id ` ) of type ` none | str ` and produces a stand-in value that gets shown when a late-defined value is missing a corresponding definition. 
    
    
    #let (undef, def) = latedef-setup()
    // This is the default stand-in
    #undef()
    #undef("with an id")
    
    // Custom stand-in
    #let (undef, def) = latedef-setup(stand-in: id => emph[No #id!])
    #undef()
    #undef("id")
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/5.png)

Since ` stand-in ` is a function, which is only called when a definition is
actually missing, you can even set it to panic to enforce that all late-
defined values have a definiton.

    
    
    #let (undef, def) = latedef-setup(stand-in: id => panic("Missing definition for value with id " + repr(id)))
    #undef()
    #undef("id")
    

The output will look something like

    
    
    error: panicked with: "Missing definition for value with id none"
      ââ example.typ:1:50
      â
      â #let (undef, def) = latedef-setup(stand-in: id => panic("Missing definition for value with id " + repr(id)))
      â                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    
    error: panicked with: "Missing definition for value with id \"id\""
      ââ example.typ:1:50
      â
      â #let (undef, def) = latedef-setup(stand-in: id => panic("Missing definition for value with id " + repr(id)))
      â                                                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
    

And there is no error when everything has a definition:

    
    
    #let (undef, def) = latedef-setup(stand-in: id => panic("Missing definition for value with id " + repr(id)))
    #undef() is #undef("id").
    #def("This")
    #def("id", "fine")
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/6.png)

##  The ` group ` parameter

Sometimes you may want to use multiple instances of ` latedef ` in parallel.
This is done using the ` group ` parameter, which can be ` none ` (the
default) or any ` str ` .

Note that using ` footnote: true ` sets the default group to ` "footnote" `
instead.

    
    
    // Use a group for the figure stuff...
    #let (caption-undef, caption) = latedef-setup(simple: true, group: "figure")
    #let figure = std.figure.with(caption: caption-undef)
    // ...so you can still use the regular mechanism in parallel.
    #let (undef, def) = latedef-setup(simple: true)
    
    #figure(raw(block: true, lorem(5)))
    #caption[The #undef _lorem ipsum_.]
    #def("classic")
    

![](https://github.com/typst/packages/raw/main/packages/preview/latedef/0.1.0/example-
images/7.png)

###  How to add

Copy this into your project and use the import as  ` latedef `

    
    
    #import "@preview/latedef:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ T0mstone ](mailto:realt0mstone@gmail.com)
License:

     MIT-0 
Current version:

     0.1.0 
Last updated:

     October 21, 2024 
First released:

     October 21, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     3.64 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/latedef-0.1.0.tar.gz)
Repository:

     [ Codeberg ](https://codeberg.org/T0mstone/typst-latedef)

###  Where to report issues?

This  package  is a project of  T0mstone  .  Report issues on  [ their
repository ](https://codeberg.org/T0mstone/typst-latedef) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 21, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

