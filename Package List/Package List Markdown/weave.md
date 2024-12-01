#  weave

0.2.0

A helper library for chaining lambda abstractions

A helper library for chaining lambda abstractions, imitating the ` |> ` or ` .
` operator in some functional languages.

The function ` compose ` is the ` pipe ` function in the mathematical order.
Functions suffixed with underscore have their arguments flipped.

##  Changelog

  * 0.2.0 Redesigned interface to work with typstâs ` with ` keyword. 
  * 0.1.0 Initial release 

##  Basic usage

It can help improve readability with nested applications to a content value,
or make the diff cleaner.

    
    
    #compose_((
      text.with(blue),
      emph,
      strong,
      underline,
      strike,
    ))[This is a very long content with a lot of words]
    // Is equivalent to
    #text(
      blue,
      emph(
        strong(
          underline(
            strike[This is a very long content with a lot of words]
          )
        )
      )
    )
    

You can use it for show rules just like the example above.

    
    
    #show link: compose_.with((
      text.with(fill: blue),
      emph,
      underline,
    ))
    // These two are equivalent
    #show link: text.with(fill: blue)
    #show link: emph
    #show link: underline
    

This can also be useful when you need to destructure lists, as it allows
creating binds that are scoped by each lambda expression.

    
    
    #let two_and_one = pipe(
      (1, 2),
      (
        ((a, b)) => (a, b, -1), // becomes a list of length three
        ((a, b, _)) => (b, a), // discard the third element and swap
      ),
    )
    

###  How to add

Copy this into your project and use the import as  ` weave `

    
    
    #import "@preview/weave:0.2.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ LÃ©ana æ± ](https://github.com/leana8959)
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     October 21, 2024 
First released:

     October 21, 2024 
Archive size:

     1.92 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/weave-0.2.0.tar.gz)
Categor  y  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)

###  Where to report issues?

This  package  is a project of  LÃ©ana æ±  .  You can also try to ask for
help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  October 21, 2024   
[ 0.1.0 ](https://typst.app/universe/package/weave/0.1.0/) |  October 21, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

