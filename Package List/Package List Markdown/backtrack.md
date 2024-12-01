#  backtrack

1.0.0

A version-agnostic library for checking the compiler version.

Backtrack is a simple and performant Typst library that determines the current
compiler version and provides an API for comparing, displaying, and observing
versions.

Unlike the built-in [ version API ](https://github.com/typst/typst/pull/2016)
which is only available on Typst 0.9.0+, Backtrack works on any [ *
](https://github.com/typst/packages/raw/main/packages/preview/backtrack/1.0.0/#version-
support) Typst version. It uses the built-in API when available so that
itâll continue to work on all future Typst versions without modification.

Additionally, it:

  * doesnât noticeably impact compilation time. All version checks are extremely simple, and newer versions are checked first to avoid overhead from supporting old versions. 
  * is automatically tested on _every_ supported Typst version to ensure reliability. 
  * can be downloaded and installed manually in addition to being available as a package. 

##  Example

    
    
    #import "@preview/backtrack:1.0.0": current-version, versions
    
    You are using Typst #current-version.displayable!
    #{
      if current-version.cmpable <= versions.v2023-03-28.cmpable [
        That is ancient.
      ] else if current-version.cmpable < versions.v0-5-0.cmpable [
        That is old.
      ] else [
        That is modern.
      ]
    }
    

##  Installation

There are two ways to install the library:

  * Use the package on Typst 0.6.0+. This is as simple as adding the following line to your document: 
    
        #import "@preview/backtrack:1.0.0"
    

  * Download and install the library manually: 
    1. Download and extract the latest [ release ](https://github.com/TheLukeGuy/backtrack/releases) . 
    2. Rename ` src/lib.typ ` to ` src/backtrack.typ ` . 
    3. Move/copy ` COPYING ` into ` src/ ` . 
    4. Rename the ` src/ ` directory to ` backtrack/ ` . 
    5. Move/copy the newly-renamed ` backtrack/ ` directory into your project. 
    6. Add the following line to your document: 
        
                #import "[path/to/]backtrack/backtrack.typ"
        

##  Documentation

See [ DOCS.md
](https://github.com/typst/packages/raw/main/packages/preview/backtrack/1.0.0/DOCS.md)
. Itâs quite short. ð

##  Version Support

Backtrack compiles on and can detect these versions:

Version  |  Status  |  Notes   
---|---|---  
0.6.0+  |  â  |  Also available as a package   
March 28, 2023â0.5.0  |  â  |   
March 21, 2023  |  â  |  Initial public/standalone Typst release   
February 25, 2023  |  ð¡  |  Detects as February 15, 2023   
February 12â15, 2023  |  â  |   
February 2, 2023  |  ð¡  |  Detects as January 30, 2023   
January 30, 2023  |  â  |   
  
The partially-supported versions _may_ be possible to detect, but theyâre
tricky since most of their changes are content-related. Content values were
opaque up until the March 21, 2023 release, making it difficult to
automatically check for the presence of these changes.

##  Copying

Copyright Â© 2023 [ Luke Chambers ](https://github.com/TheLukeGuy)

Backtrack is licensed under the Apache License, Version 2.0. You can find a
copy of the license in [ COPYING
](https://github.com/typst/packages/raw/main/packages/preview/backtrack/1.0.0/COPYING)
or online at [ https://www.apache.org/licenses/LICENSE-2.0
](https://www.apache.org/licenses/LICENSE-2.0) .

###  How to add

Copy this into your project and use the import as  ` backtrack `

    
    
    #import "@preview/backtrack:1.0.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     TheLukeGuy 
License:

     Apache-2.0 
Current version:

     1.0.0 
Last updated:

     October 27, 2023 
First released:

     October 27, 2023 
Archive size:

     8.64 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/backtrack-1.0.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/TheLukeGuy/backtrack)

###  Where to report issues?

This  package  is a project of  TheLukeGuy  .  Report issues on  [ their
repository ](https://github.com/TheLukeGuy/backtrack) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
1.0.0  |  October 27, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

