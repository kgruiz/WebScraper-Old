#  babble-bubbles

0.1.0

A package to create callouts.

A package to create callouts in typst, inspired by the [ Obsidan
](https://obsidian.md/) callouts.

Use preset callouts, or create your own!

![callouts_example](https://github.com/typst/packages/raw/main/packages/preview/babble-
bubbles/0.1.0/examples/callouts.png)

##  Usage

Import the package

    
    
    #import "@preview/babble-bubbles:0.1.0": *
    

Or grab it locally and use:

    
    
    #import "@local/babble-bubbles:0.1.0": *
    

##  Presets

Here you can find a list of presets and an example usage of each. You can
customise them with the same parameters as the ` callout ` function. See the `
Custom callouts ` for more details.

    
    
    #info[This is information]
    
    #success[I'm making a note here: huge success]
    
    #check[This is checked!]
    
    #warning[First warning...]
    
    #note[My incredibly useful note]
    
    #question[Question?]
    
    #example[An example make things interesting]
    
    #quote[To be or not to be]
    

##  Custom callouts

###  ` callout `

Create a default callout. Tweak the parameters to create your own!

    
    
    callout(
      body,
      title: "Callout",
      fill: blue,
      title-color: white,
      body-color: black,
      icon: none)
    

###  Tips

You can create aliases to more easily handle your newly create callouts or
customise presets by using [ with
](https://typst.app/docs/reference/types/function/#methods-with) .

    
    
    #let mycallout = callout.with(title: "My callout")
    
    #mycallout[Hey this is my custom callout!]
    

###  How to add

Copy this into your project and use the import as  ` babble-bubbles `

    
    
    #import "@preview/babble-bubbles:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Dimitri Belopopsky 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     September 11, 2023 
First released:

     September 11, 2023 
Archive size:

     2.15 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/babble-bubbles-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/ShadowMitia/typst-babble-bubbles)

###  Where to report issues?

This  package  is a project of  Dimitri Belopopsky  .  Report issues on  [
their repository ](https://github.com/ShadowMitia/typst-babble-bubbles) .  You
can also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  September 11, 2023   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

