#  jogs

0.2.3

QuickJS JavaScript runtime for Typst

Quickjs javascript runtime for typst. This package provides a typst plugin for
evaluating javascript code.

##  Example

    
    
    #import "@preview/jogs:0.2.3": *
    
    #set page(height: auto, width: auto, fill: black, margin: 1em)
    #set text(fill: white)
    
    #let code = ```
    function sum() {
      const total = Array.prototype.slice.call(arguments).reduce(function(a, b) {
          return a + b;
      }, 0);
      return total;
    }
    
    function string_join(arr) {
      return arr.join(" | ");
    }
    
    function return_complex_obj() {
      return {
        a: 1,
        b: "2",
        c: [1, 2, 3],
        d: {
          e: 1,
        },
      };
    }
    
    ```
    #let bytecode = compile-js(code)
    
    #list-global-property(bytecode)
    
    #call-js-function(bytecode, "sum", 6, 7, 8, 9, 10)
    
    #call-js-function(bytecode, "string_join", ("a", "b", "c", "d", "e"),)
    
    #call-js-function(bytecode, "return_complex_obj",)
    
    
    

result:

![](https://github.com/typst/packages/raw/main/packages/preview/jogs/0.2.3/typst-
package/examples/fib.svg)

##  Documentation

This package provide following function(s):

###  ` eval-js `

Run a Javascript code snippet.

####  Arguments

  * ` code ` \- The Javascript code to run. It can be a string or a raw block. 

####  Returns

The result of the Javascript code. The type is the typst type which most
closely resembles the Javascript type.

####  Example

    
    
    #let result = eval-js("1 + 1")
    

###  ` compile-js `

Compile a Javascript code snippet into bytecode.

####  Arguments

  * ` code ` \- The Javascript code to compile. It can be a string or a raw block. 

####  Returns

The bytecode of the Javascript code. The type is ` bytes ` .

####  Example

    
    
    #let bytecode = compile-js("function sum(a, b) { return a + b; }")
    

###  ` call-js-function `

Call a Javascript function with arguments.

####  Arguments

  * ` bytecode ` \- The bytecode of the Javascript function. It can be obtained by calling ` compile-js ` . 
  * ` name ` \- The name of the Javascript function. 
  * ` ..args ` \- The arguments to pass to the Javascript function. All other positional arguments are passed to the Javascript function as is. 

####  Returns

The result of the Javascript function. The type is the typst type which most
closely resembles the Javascript type.

####  Example

    
    
    #let bytecode = compile-js("function sum(a, b) { return a + b; }")
    #let result = call-js-function(bytecode, "sum", 1, 2)
    

###  ` list-global-property `

List all global properties of a compiled Javascript bytecode. This is useful
for inspecting the compiled Javascript bytecode.

####  Arguments

  * ` bytecode ` \- The bytecode of the Javascript function. It can be obtained by calling ` compile-js ` . 

####  Returns

A list of all global properties of the Javascript bytecode. The type is `
array ` .

####  Example

    
    
    #let bytecode = compile-js("function sum(a, b) { return a + b; }")
    #let result = list-global-property(bytecode)
    

###  How to add

Copy this into your project and use the import as  ` jogs `

    
    
    #import "@preview/jogs:0.2.3"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Wenzhuo Liu 
License:

     MIT 
Current version:

     0.2.3 
Last updated:

     February 1, 2024 
First released:

     November 6, 2023 
Archive size:

     354 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/jogs-0.2.3.tar.gz)
Repository:

     [ GitHub ](https://github.com/Enter-tainer/jogs)

###  Where to report issues?

This  package  is a project of  Wenzhuo Liu  .  Report issues on  [ their
repository ](https://github.com/Enter-tainer/jogs) .  You can also try to ask
for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.3  |  February 1, 2024   
[ 0.2.2 ](https://typst.app/universe/package/jogs/0.2.2/) |  January 15, 2024   
[ 0.2.1 ](https://typst.app/universe/package/jogs/0.2.1/) |  November 29, 2023   
[ 0.2.0 ](https://typst.app/universe/package/jogs/0.2.0/) |  November 7, 2023   
[ 0.1.0 ](https://typst.app/universe/package/jogs/0.1.0/) |  November 6, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

