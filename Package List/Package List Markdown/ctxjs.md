#  ctxjs

0.2.0

Run javascript in contexts.

A typst plugin to evaluate javascript code.

  * multiple javascript contexts 
  * load javascript modules as source or bytecode 
  * simple evaluations 
  * formated evaluations (execute your code with your typst data) 
  * call functions 
  * call functions in modules 
  * create bytecode with an extra tool (ctxjs_module_bytecode_builder) 
  * allow later evaluation of javascript code 

##  Example

    
    
    #import "@preview/ctxjs:0.2.0"
    
    #{
      _ = ctxjs.create-context("context_name")
      let test = ctxjs.eval("context_name", "function test(data) {return data + 2;}")
      let returns-4 = ctxjs.call-function("context_name", "test", (2,))
      let returns-6 = ctxjs.eval-format("context_name", "test({test})", (test: 4))
      let code = ```
        export function another_test_function() { return {data: 'test'}; }
      ```;
      _ = ctxjs.load-module-js("context_name", "module_name", code.text)
      let returns-array-with-another-test = ctxjs.get-module-properties("context_name", "module_name")
      let returns-data-with-test-string = ctxjs.call-module-function("context_name", "module_name", "another_test_function", ())
      let returns-8 = ctxjs.eval-format("context_name", "test({test})", (test: ctxjs.eval-later("4 + 4")))
    }
    

###  How to add

Copy this into your project and use the import as  ` ctxjs `

    
    
    #import "@preview/ctxjs:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     lublak 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     November 28, 2024 
First released:

     September 11, 2024 
Archive size:

     427 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ctxjs-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/lublak/typst-ctxjs-package)

###  Where to report issues?

This  package  is a project of  lublak  .  Report issues on  [ their
repository ](https://github.com/lublak/typst-ctxjs-package) .  You can also
try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  November 28, 2024   
[ 0.1.1 ](https://typst.app/universe/package/ctxjs/0.1.1/) |  September 30, 2024   
[ 0.1.0 ](https://typst.app/universe/package/ctxjs/0.1.0/) |  September 11, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

