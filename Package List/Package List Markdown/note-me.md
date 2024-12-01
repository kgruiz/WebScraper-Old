#  note-me

0.3.0

Adds GitHub-style Admonitions (Alerts) to Typst.

> [!NOTE] Add GitHub style admonitions (also known as alerts) to Typst.

##  Usage

Import this package, and do

    
    
    // Import from @preview namespace is suggested
    // #import "@preview/note-me:0.3.0": *
    
    // Import from @local namespace is only for debugging purpose
    // #import "@local/note-me:0.3.0": *
    
    // Import relatively is for development purpose
    #import "lib.typ": *
    
    = Basic Examples
    
    #note[
      Highlights information that users should take into account, even when skimming.
    ]
    
    #tip[
      Optional information to help a user be more successful.
    ]
    
    #important[
      Crucial information necessary for users to succeed.
    ]
    
    #warning[
      Critical content demanding immediate user attention due to potential risks.
    ]
    
    #caution[
      Negative potential consequences of an action.
    ]
    
    #admonition(
      icon-path: "icons/stop.svg",
      color: color.fuchsia,
      title: "Customize",
      foreground-color: color.white,
      background-color: color.black,
    )[
      The icon, (theme) color, title, foreground and background color are customizable.
    ]
    
    #admonition(
      icon-string: read("icons/light-bulb.svg"),
      color: color.fuchsia,
      title: "Customize",
    )[
      The icon can be specified as a string of SVG. This is useful if the user want to use an SVG icon that is not available in this package.
    ]
    
    #admonition(
      icon: [ð],
      color: color.fuchsia,
      title: "Customize",
    )[
      Or, pass a content directly as the icon...
    ]
    
    = More Examples
    
    #todo[
      Fix `note-me` package.
    ]
    
    
    = Prevent Page Breaks from Breaking Admonitions
    
    #box(
      width: 1fr,
      height: 50pt,
      fill: gray,
    )
    
    #note[
      #lorem(100)
    ]
    

![github-
admonition](https://github.com/typst/packages/raw/main/packages/preview/note-
me/0.3.0/example.svg)

Further Reading:

  * [ https://github.com/orgs/community/discussions/16925 ](https://github.com/orgs/community/discussions/16925)
  * [ https://docs.asciidoctor.org/asciidoc/latest/blocks/admonitions/ ](https://docs.asciidoctor.org/asciidoc/latest/blocks/admonitions/)

##  Style

It borrows the style of GitHubâs admonition.

> [!NOTE]  
>  Highlights information that users should take into account, even when
> skimming.

> [!TIP] Optional information to help a user be more successful.

> [!IMPORTANT]  
>  Crucial information necessary for users to succeed.

> [!WARNING]  
>  Critical content demanding immediate user attention due to potential risks.

> [!CAUTION] Negative potential consequences of an action.

##  Credits

The admonition icons are from [ Octicons ](https://github.com/primer/octicons)
.

###  How to add

Copy this into your project and use the import as  ` note-me `

    
    
    #import "@preview/note-me:0.3.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Flandia Yingman 
License:

     MIT 
Current version:

     0.3.0 
Last updated:

     September 30, 2024 
First released:

     February 11, 2024 
Archive size:

     5.02 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/note-me-0.3.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/FlandiaYingman/note-me)

###  Where to report issues?

This  package  is a project of  Flandia Yingman  .  Report issues on  [ their
repository ](https://github.com/FlandiaYingman/note-me) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.3.0  |  September 30, 2024   
[ 0.2.1 ](https://typst.app/universe/package/note-me/0.2.1/) |  March 8, 2024   
[ 0.1.1 ](https://typst.app/universe/package/note-me/0.1.1/) |  February 25, 2024   
[ 0.1.0 ](https://typst.app/universe/package/note-me/0.1.0/) |  February 11, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

