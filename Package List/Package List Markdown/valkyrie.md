#  valkyrie

0.2.1

Type safe type validation

Version 0.2.1

This package implements type validation, and is targeted mainly at package and
template developers. The desired outcome is that it becomes easier for the
programmer to quickly put a package together without spending a long time on
type safety, but also to make the usage of those packages by end-users less
painful by generating useful error messages.

##  Example Usage

    
    
    #import "@preview/valkyrie:0.2.1" as z
    
    #let my-schema = z.dictionary((
        should-be-string: z.string(),
        complicated-tuple: z.tuple(
          z.email(),
          z.ip(),
          z.either(
            z.string(),
            z.number(),
          ),
        ),
      )
    )
    
    #z.parse(
      (
        should-be-string: "This doesn't error",
        complicated-tuple: (
          "neither@does-this.com",
          // Error: Schema validation failed on argument.complicated-tuple.1: 
          //        String must be a valid IP address
          "NOT AN IP",
          1,
        ),
      ),
      my-schema,
    )
    

##  Community-lead

As of version 0.2.0, ` valkyrie ` now resides in the typst-community
organisation. Typst users are encouraged to submit additional types,
assertions, coercions, and schemas that they believe are already used widely,
or should be widely adopted for the health of the ecosystem.

###  How to add

Copy this into your project and use the import as  ` valkyrie `

    
    
    #import "@preview/valkyrie:0.2.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     James R. Swift  & [ tinger ](mailto:me@tinger.dev)
License:

     MIT 
Current version:

     0.2.1 
Last updated:

     July 15, 2024 
First released:

     November 19, 2023 
Archive size:

     9.99 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/valkyrie-0.2.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/typst-community/valkyrie)
Categor  ies  :

    

  * ![Scripting icon](/assets/icons/16-code.svg) [ Scripting ](https://typst.app/universe/search/?category=scripting)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  James R. Swift and tinger  .  Report issues on
[ their repository ](https://github.com/typst-community/valkyrie) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.1  |  July 15, 2024   
[ 0.2.0 ](https://typst.app/universe/package/valkyrie/0.2.0/) |  May 27, 2024   
[ 0.1.1 ](https://typst.app/universe/package/valkyrie/0.1.1/) |  April 29, 2024   
[ 0.1.0 ](https://typst.app/universe/package/valkyrie/0.1.0/) |  November 19, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

