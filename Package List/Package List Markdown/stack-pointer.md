#  stack-pointer

0.1.0

A library for visualizing the execution of (imperative) computer programs

Featured  Package

Stack Pointer is a library for visualizing the execution of (imperative)
computer programs, particularly in terms of effects on the call stack: stack
frames and local variables therein.

Stack Pointer lets you represent an example program (e.g. a C or Java program)
using typst code with minimal hassle, and get the execution state of that
program at different points in time. For example, the following C program

    
    
    int main() {
      int x = foo();
      return 0;
    }
    
    int foo() {
      return 0;
    }
    

would be represented by the following Typst code (see the [ manual
](https://github.com/typst/packages/raw/main/packages/preview/stack-
pointer/0.1.0/docs/manual.pdf) for a detailled explanation):

    
    
    #let steps = execute({
      let foo() = func("foo", 6, l => {
        l(0)
        l(1); retval(0)
      })
      let main() = func("main", 1, l => {
        l(0)
        l(1)
        let (x, ..rest) = foo(); rest
        l(1, push("x", x))
        l(2)
      })
      main(); l(none)
    })
    

The ` steps ` variable now contains an array, where each element corresponds
to one of the mentioned lines of code.

Take a look at [ this complete example
](https://github.com/typst/packages/raw/main/packages/preview/stack-
pointer/0.1.0/gallery/sum.pdf) of using Stack Pointer together with [ Polylux
](https://polylux.dev/book/) .

###  How to add

Copy this into your project and use the import as  ` stack-pointer `

    
    
    #import "@preview/stack-pointer:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Clemens Koza ](https://github.com/SillyFreak/)
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     July 15, 2024 
First released:

     July 15, 2024 
Archive size:

     4.29 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/stack-pointer-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/SillyFreak/typst-stack-pointer)
Discipline  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Presentation icon](/assets/icons/16-presentation.svg) [ Presentation ](https://typst.app/universe/search/?category=presentation)

###  Where to report issues?

This  package  is a project of  Clemens Koza  .  Report issues on  [ their
repository ](https://github.com/SillyFreak/typst-stack-pointer) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  July 15, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

