#  acrotastic

0.1.1

Manage acronyms and their definitions in Typst.

Manages all your acronyms for you.

Acrotastics main features are clickable abbreviations that auto-expand on the
first occurence, manual short and long forms, implicit or manual plural form
support, and customizable index printing.

##  Quick Start

    
    
    #import "@preview/acrotastic:0.1.1": *
    
    #init-acronyms((
      "WTP": ("Wonderful Typst Package","Wonderful Typst Packages"),
    ))
    
    Acrotastic is a #acr("WTP")! This #acr("WTP") enables easy acronym manipulation.
    

##  Usage

###  Define acronyms

First, define the acronyms in a dictionary, with the keys being the acronyms
and the values being arrays of their definitions. If there is only a singular
version of the definition, the array contains only one value. If there are
both singular and plural versions, define the definition as an array where the
first item is the singular definition and the second item is the plural. Then,
initialize Acrotastic by passing the dictionay you just defined to the `
#init-acronyms(...) ` function.

Here is a example of the ` acronyms.typ ` file:

    
    
    #import "@preview/acrotastic:0.1.1": *
    
    #init-acronyms((
      "NN": ("Neural Network"),
      "OS": ("Operating System",),
      "BIOS": ("Basic Input/Output System", "Basic Input/Output Systems"),
    ))
    

###  Call Acrotastic functions

There is a large number of different functions to fit every use case. You will
find an overview of all functions and their descriptions in the table below.

Function  |  Description   
---|---  
` #acr(...) ` |  On the first occurrence the long version of the abbreviation and the abbreviation itself are displayed in brackets. The next time only the abbreviation is displayed.   
` #acrpl(...) ` |  Same as ` #acr(...) ` but the plural will be diplayed. If no plural is defined, an âsâ is added to the singular form.   
` #acrf(...) ` |  The acronym will be displayed as if it is the first time. This means that it is again shown in the long form and the abbreviation in brackets.   
` #acrfpl(...) ` |  Same as ` #acrf(...) ` but the plural will be displayed. If no plural is defined, an âsâ is added to the singular form.   
` #acrs(...) ` |  Always displays the short form of the acronym.   
` #acrspl(...) ` |  Same as ` #acrs(...) ` but adds an âsâ to the acronym for the plural form.   
` #acrl(...) ` |  Always displays the long form of the acronym.   
` #acrlpl(...) ` |  Same as ` #acrl(...) ` but the plural will be displayed. If no plural is defined, an âsâ is added to the singular form.   
` #reset-acronym(...) ` |  Resets a specific acronym. The acronym will be expanded on the next use.   
` reset-all-acronyms() ` |  Resets all acronyms. The acronyms will be expanded on their next use.   
  
You can alternatively use ` #acr(...) ` , ` #acrf(...) ` , ` #acrs(...) ` and
` #acrl(...) ` with ` plural: true ` to display the plural form.

    
    
    #acr("BIOS", plural: true)
    

To deactivate the link to the abbreviations directory (for whatever reason),
you can set ` link: false ` .

    
    
    #acr("BIOS", link: false)
    

###  Print Abbreviations directory

You can also print an index of all acronyms used in the document with the `
#print-index() ` function. There are some parameters for customization.

parameter  |  values  |  default  |  description   
---|---|---|---  
title  |  string  |  âList of Abbreviationsâ  |  Heading of the acronym index   
level  |  number  |  1  |  Level of the heading   
sorted  |  âupâ, âdownâ, âkeepâ  |  âupâ  |  âUpâ sorts alphabetically, âDownâ sorts reversed alphabetically and âkeepâ uses the order from initialization   
delimiter  |  string  |  â:â  |  String to place after the acronym in the list   
acr-col-size  |  percentage  |  20%  |  Size of the acronym column in percent   
outlined  |  bool  |  false  |  Make the index section outlined   
  
##  Possible Errors

Error  |  Solution   
---|---  
Acronym is not a key in the acronyms dictionary.  |  Make sure that the acronym is defined in the dictionary passed to ` #init-acronyms(dict) `  
No definitions found for acronym. Make sure it is defined in the dictionary passed to #init-acronyms(dict)  |  The acronym is in the dictionary, but has no correct definition.   
Definitions should be arrays of one or two strings. Definition of acronym is:  |  The acronym has a definition, but the definition doesnât have the right type. Make sure itâs an array of one or two strings.   
  
Moreover you have to be careful when using states.

  * For every acronym âABCâ that you define, the state named âacronym-state-ABCâ is initialized and used. To avoid errors, do not try to use this state manually for other purposes. Similarly, the state named âacronymsâ is reserved to Acrotastic. Please avoid using it. 
  * The functions above are leveraging the state ` display ` function and only works if the return value is actually printed in the document. For more information on states, see the [ Typst documentation on states ](https://typst.app/docs/reference/introspection/state/) . 

##  Contributing

If you notice any bug or want to contribute a new feature, please open an
issue or a pull request on the fork [ Julian702/typst-packages
](https://github.com/Julian702/typst-packages?tab=readme-ov-file)

##  Acknowledgement

Thanks to @Grisely who developed the [ acrostiche package
](https://typst.app/universe/package/acrostiche/) which was the basis for
acrotastic.

###  How to add

Copy this into your project and use the import as  ` acrotastic `

    
    
    #import "@preview/acrotastic:0.1.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  s  :

     @Julian702  & Gaetan Lepage @GaetanLepage 
License:

     MIT 
Current version:

     0.1.1 
Last updated:

     September 3, 2024 
First released:

     April 29, 2024 
Archive size:

     4.20 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/acrotastic-0.1.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/Julian702/typst-packages)
Categor  y  :

    

  * ![Model icon](/assets/icons/16-list-unordered.svg) [ Model ](https://typst.app/universe/search/?category=model)

###  Where to report issues?

This  package  is a project of  @Julian702 and Gaetan Lepage @GaetanLepage  .
Report issues on  [ their repository ](https://github.com/Julian702/typst-
packages) .  You can also try to ask for help with this  package  on the  [
Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.1  |  September 3, 2024   
[ 0.1.0 ](https://typst.app/universe/package/acrotastic/0.1.0/) |  April 29, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

