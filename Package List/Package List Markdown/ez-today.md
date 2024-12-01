#  ez-today

0.1.0

Simply displays the full current date.

Simply displays the current date with easy to use customization.

##  Included languages

German, English, French and Italian months can be used out of the box. If you
want to use a language that is not included, you can easily add it yourself.
This is shown in the customization section below.

##  Usage

The usage is very simple, because there is only the ` today() ` function.

    
    
    #import "@preview/ez-today:0.1.0"
    
    // To get the current date use this
    #ez-today.today()
    

##  Reference

###  ` today `

Prints the current date with given arguments.

    
    
    #let today(
      lang: "de",
      format: "d. M Y",
      custom-months: ()
    ) = { .. }
    

**Arguments:**

  * ` lang ` : [ ` str ` ] â Select one of the included languages (de, en, fr, it). 
  * ` format ` : [ ` str ` ] â Specify the output format. 
  * ` custom-months ` : [ ` array ` ] of [ ` str ` ] â Use custom names for each month. This array must have 12 entries. If this is used, the ` lang ` argument does nothing. 

##  Customization

The default output prints the full current date with German months like this:

    
    
    #ez-today.today()   // 11. Oktober 2024
    

You can choose one of the included languages with the ` lang ` argument:

    
    
    #ez-today.today(lang: "en")   // 11. October 2024
    #ez-today.today(lang: "fr")   // 11. Octobre 2024
    #ez-today.today(lang: "it")   // 11. Ottobre 2024
    

You can also change the format of the output with the ` format ` argument.
Pass any string you want here, but know that the following characters will be
replaced with the following:

  * ` d ` â The current day as a decimal 
  * ` m ` â The current month as a decimal ( ` lang ` argument does nothing) 
  * ` M ` â The current month as a string with either the selected language or the custom array 
  * ` y ` â The current year as a decimal with the last two numbers 
  * ` Y ` â The current year as a decimal 

Here are some examples:

    
    
    #ez-today.today(lang: "en", format: "M d Y")    // October 11 2024
    #ez-today.today(format: "m-d-y")                // 10-11-24
    #ez-today.today(format: "d/m")                  // 11/10
    #ez-today.today(format: "d.m.Y")                // 11.10.2024
    

Use the ` custom-months ` argument to give each month a custom name. You can
add a new language or use short terms for each month.

    
    
    // Defining some custom names
    #let my-months = ("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")
    // Get current date with custom names
    #ez-today.today(custom-months: my-months, format: "M-y")    // Oct-24
    

###  How to add

Copy this into your project and use the import as  ` ez-today `

    
    
    #import "@preview/ez-today:0.1.0"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     Carlo Schafflik 
License:

     MIT 
Current version:

     0.1.0 
Last updated:

     October 11, 2024 
First released:

     October 11, 2024 
Archive size:

     2.42 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/ez-today-0.1.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/CarloSchafflik12/typst-ez-today)

###  Where to report issues?

This  package  is a project of  Carlo Schafflik  .  Report issues on  [ their
repository ](https://github.com/CarloSchafflik12/typst-ez-today) .  You can
also try to ask for help with this  package  on the  [ Forum
](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.0  |  October 11, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

