#  linguify

0.4.1

Load strings for different languages easily

Load strings for different languages easily. This can be useful if you create
a package or template for multilingual usage.

##  Usage

The usage depends if you are using it inside a package or a template or in
your own document.

###  For end users and own templates

You can use linguify global database.

Example:

    
    
    #import "@preview/linguify:0.4.0": *
    
    #let lang_data = toml("lang.toml")
    #set-database(lang_data);
    
    #set text(lang: "de")
    
    #linguify("abstract")  // Shows "Zusammenfassung" in the document.
    

The ` lang.toml ` musst look like this:

    
    
    [conf]
    default-lang = "en"
    
    [en]
    title = "A simple linguify example"
    abstract = "Abstract"
    
    [de]
    title = "Ein einfaches Linguify Beispiel"
    abstract = "Zusammenfassung"
    

###  Inside a package

So that multiple packages can use linguify simultaneously, they should contain
their own database. A linguify database is just a dictionary with a certain
structure. (See database structure.)

Recommend is to store the database in a separate file like ` lang.toml ` and
load it inside the document. And specify it in each ` linguify() ` function
call.

Example:

    
    
    #import "@preview/linguify:0.4.0": *
    
    #let database = toml("lang.toml")
    
    #linguify("key", from: database, default: "key")
    

##  Features

  * Use a ` toml ` or other file to load strings for different languages. You need to pass a typst dictionary which follows the structure of the shown toml file. 
  * Specify a **default-lang** . If none is specified it will default to ` en `
  * **Fallback** to the default-lang if a key is not found for a certain language. 
  * [ Fluent ](https://projectfluent.org/) support 

###  How to add

Copy this into your project and use the import as  ` linguify `

    
    
    #import "@preview/linguify:0.4.1"

![Copy](/assets/icons/16-copy.svg)

Check the docs for  [ more information on how to import packages
](https://typst.app/docs/reference/scripting/#packages) .

###  About

Author  :

     [ Jomaway ](https://github.com/jomaway)
License:

     MIT 
Current version:

     0.4.1 
Last updated:

     April 29, 2024 
First released:

     January 31, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     470 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/linguify-0.4.1.tar.gz)
Repository:

     [ GitHub ](https://github.com/jomaway/typst-linguify)
Categor  ies  :

    

  * ![Languages icon](/assets/icons/16-world.svg) [ Languages ](https://typst.app/universe/search/?category=languages)
  * ![Utility icon](/assets/icons/16-hammer.svg) [ Utility ](https://typst.app/universe/search/?category=utility)

###  Where to report issues?

This  package  is a project of  Jomaway  .  Report issues on  [ their
repository ](https://github.com/jomaway/typst-linguify) .  You can also try to
ask for help with this  package  on the  [ Forum ](https://forum.typst.app) .

Please report this  package  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.4.1  |  April 29, 2024   
[ 0.4.0 ](https://typst.app/universe/package/linguify/0.4.0/) |  April 2, 2024   
[ 0.3.1 ](https://typst.app/universe/package/linguify/0.3.1/) |  March 26, 2024   
[ 0.3.0 ](https://typst.app/universe/package/linguify/0.3.0/) |  March 18, 2024   
[ 0.2.0 ](https://typst.app/universe/package/linguify/0.2.0/) |  March 16, 2024   
[ 0.1.0 ](https://typst.app/universe/package/linguify/0.1.0/) |  January 31, 2024   
  
Typst GmbH did not create this  package  and cannot guarantee correct
functionality of this  package  or compatibility with any version of the Typst
compiler or app.

