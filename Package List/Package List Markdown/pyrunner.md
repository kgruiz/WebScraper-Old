#  pyrunner

0.2.0

Run python code in typst.

Run python code in [ typst ](https://typst.app/) using [ RustPython
](https://github.com/RustPython/RustPython) .

    
    
    #import "@preview/pyrunner:0.1.0" as py
    
    #let compiled = py.compile(
    ```python
    def find_emails(string):
        import re
        return re.findall(r"\b[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}\b", string)
    
    def sum_all(*array):
        return sum(array)
    ```)
    
    #let txt = "My email address is john.doe@example.com and my friend's email address is jane.doe@example.net."
    
    #py.call(compiled, "find_emails", txt)
    #py.call(compiled, "sum_all", 1, 2, 3)
    

Block mode is also available.

    
    
    #let code = ```
    f'{a+b=}'
    ```
    
    #py.block(code, globals: (a: 1, b: 2))
    
    #py.block(code, globals: (a: "1", b: "2"))
    

The result will be ` a+b=3 ` and ` a+b='12' ` .

##  Current limitations

Due to restrictions of typst and its plugin system, some Python function will
not work as expected:

  * File and network IO will always raise an exception. 
  * ` datatime.now ` will always return 1970-01-01. 

Also, there is no way to import third-party modules. Only bundled stdlib
modules are available. We might find a way to lift this restriction, so feel
free to submit an issue if you want this functionality.

##  API

###  ` block `

Run Python code block and get its result.

####  Arguments

  * ` code ` : string | raw content - The Python code to run. 
  * ` globals ` : dict (named optional) - The global variables to bring into scope. 

####  Returns

The last expression of the code block.

###  ` compile `

Compile Python code to bytecode.

####  Arguments

  * ` code ` : string | raw content - The Python code to compile. 

####  Returns

The bytecode representation in ` bytes ` .

###  ` call `

Call a python function with arguments.

####  Arguments

  * ` compiled ` : bytes - The bytecode representation of Python code. 
  * ` fn_name ` : string - The name of the function to be called. 
  * ` ..args ` : any - The arguments to pass to the function. 

####  Returns

The result of the function call.

##  Build from source

Install [ ` wasi-stub ` ](https://github.com/astrale-sharp/wasm-minimal-
protocol) . You should use a slightly modified one. See [ the related issue
](https://github.com/astrale-sharp/wasm-minimal-
protocol/issues/22#issuecomment-1827379467) .

Build pyrunner.

    
    
    rustup target add wasm32-wasi
    cargo build --target wasm32-wasi
    make pkg/typst-pyrunner.wasm
    

Add to local package.

    
    
    mkdir -p ~/.local/share/typst/packages/local/pyrunner/0.0.1
    cp pkg/* ~/.local/share/typst/packages/local/pyrunner/0.0.1
    

###  How to add

Copy this into your project and use the import as  ` pyrunner `

    
    
    #import "@preview/pyrunner:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Peng Guanwen 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     March 18, 2024 
First released:

     December 4, 2023 
Minimum Typst version:

     0.10.0 
Archive size:

     5.89 MB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/pyrunner-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/peng1999/typst-pyrunner)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Integration icon](/assets/icons/16-integration.svg) [ Integration ](https://typst.app/universe/search/?category=integration)

###  Where to report issues?

This  package  is a project of  Peng Guanwen  .  Report issues on  [ their
repository ](https://github.com/peng1999/typst-pyrunner) .  You can also try
to ask for help with this  package  on the  [ Forum ](https://forum.typst.app)
.

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  March 18, 2024   
[ 0.1.0 ](https://typst.app/universe/package/pyrunner/0.1.0/) |  December 4, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

