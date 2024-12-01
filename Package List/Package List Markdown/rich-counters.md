#  rich-counters

0.2.2

Counters which can inherit from other counters.

This package allows you to have **counters which can inherit from other
counters** .

Concretely, it implements ` rich-counter ` , which is a counter that can
_inherit_ one or more levels from another counter.

The interface is pretty much the same as the [ usual counter
](https://typst.app/docs/reference/introspection/counter/) . It provides a `
display() ` , ` get() ` , ` final() ` , ` at() ` , and a ` step() ` method. An
` update() ` method will be implemented soon.

##  Simple typical Showcase

In the following example, ` mycounter ` inherits the first level from `
heading ` (but not deeper levels).

    
    
    #import "@preview/rich-counters:0.2.2": *
    
    #set heading(numbering: "1.1")
    #let mycounter = rich-counter(identifier: "mycounter", inherited_levels: 1)
    
    // DOCUMENT
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    = First level heading
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    Stepping `mycounter` here. #(mycounter.step)()
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    = Another first level heading
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    Stepping `mycounter` here. #(mycounter.step)()
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    == Second level heading
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    Stepping `mycounter` here. #(mycounter.step)()
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    = Aaand another first level heading
    
    Displaying `mycounter` here: #context (mycounter.display)()
    
    Stepping `mycounter` here. #(mycounter.step)()
    
    Displaying `mycounter` here: #context (mycounter.display)()
    

![](https://github.com/typst/packages/raw/main/packages/preview/rich-
counters/0.2.2/example.png)

##  Construction of a ` rich-counter `

To create a ` rich-counter ` , you have to call the ` rich-counter(...) `
function. It accepts three arguments:

  * ` identifier ` (required) 

Must be a unique ` string ` which identifies the counter.

  * ` inherited_levels `

Specifies how many levels should be inherited from the parent counter.

  * ` inherited_from ` (Default: ` heading ` ) 

Specifies the parent counter. Can be a ` rich-counter ` or any key that is
accepted by the [ ` counter(...) ` constructor
](https://typst.app/docs/reference/introspection/counter#constructor) , such
as a ` label ` , a ` selector ` , a ` location ` , or a ` function ` like `
heading ` . If not specified, defaults to ` heading ` (and hence it will
inherit from the counter of the headings).

If itâs a ` rich-counter ` and ` inherited_levels ` is _not_ specified, then
` inherited_levels ` will default to one level higher than the given ` rich-
counter ` .

For example, the following creates a ` rich-counter ` ` foo ` which inherits
one level from the headings, and then another ` rich-counter ` ` bar ` which
inherits two levels (implicitly) from ` foo ` .

    
    
    #import "@preview/rich-counters:0.2.2": *
    
    #let foo = rich-counter(identifier: "foo", inherited_levels: 1)
    #let bar = rich-counter(identifier: "bar", inherited_from: foo)
    

##  Usage of a ` rich-counter `

  * ` display(numbering) ` (needs ` context ` ) 

Displays the current value of the counter with the given numbering style.
Giving the numbering style is optional, with default value ` "1.1" ` .

  * ` get() ` (needs ` context ` ) 

Returns the current value of the counter (as an ` array ` ).

  * ` final() ` (needs ` context ` ) 

Returns the value of the counter at the end of the document.

  * ` at(loc) ` (needs ` context ` ) 

Returns the value of the counter at ` loc ` , where ` loc ` can be a ` label `
, ` selector ` , ` location ` , or ` function ` .

  * ` step(depth: 1) `

Steps the counter at the specified ` depth ` (default: ` 1 ` ). That is, it
steps the ` rich-counter ` at level ` inherited_levels + depth ` .

**Due to a Typst limitation, you have to put parentheses before you put the
arguments. (See below.)**

For example, the following steps ` mycounter ` (at depth 1) and then displays
it.

    
    
    #import "@preview/rich-counters:0.2.2": *
    #let mycounter = rich-counter(...)
    
    #(mycounter.step)()
    #context (mycounter.display)("1.1")
    

##  Limitations

Due to current Typst limitations, there is no way to detect manual updates or
steps of Typst-native counters, like ` counter(heading).update(...) ` or `
counter(heading).step(...) ` . Only occurrences of actual ` heading ` s can be
detected. So make sure that after you call e.g. ` counter(heading).update(...)
` , you place a heading directly after it, before you call any ` rich-counter
` s.

##  Roadmap

  * implement ` update() `
  * use Typst custom types as soon as they become available 
  * adopt native Typst implementation of dependent counters as soon it becomes available 

###  How to add

Copy this into your project and use the import as  ` rich-counters `

    
    
    #import "@preview/rich-counters:0.2.2"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Johann Birnick ](https://jbirnick.net)
License:

     MIT 
Current version:

     0.2.2 
Last updated:

     November 21, 2024 
First released:

     August 14, 2024 
Archive size:

     3.60 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/rich-counters-0.2.2.tar.gz)
Repository:

     [ GitHub ](https://github.com/jbirnick/typst-rich-counters)
Categor  ies  :

    

  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)
  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Johann Birnick  .  Report issues on  [ their
repository ](https://github.com/jbirnick/typst-rich-counters) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.2  |  November 21, 2024   
[ 0.2.1 ](https://typst.app/universe/package/rich-counters/0.2.1/) |  October 16, 2024   
[ 0.2.0 ](https://typst.app/universe/package/rich-counters/0.2.0/) |  October 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/rich-counters/0.1.0/) |  August 14, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

