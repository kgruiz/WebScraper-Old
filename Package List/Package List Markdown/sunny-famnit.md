![A preview of the sunny-famnit Typst
template.](https://packages.typst.org/preview/thumbnails/sunny-
famnit-0.2.0-small.webp)

#  sunny-famnit

0.2.0

Thesis template for University of Primorska, FAMNIT

[ Create project in app ](/app?template=sunny-famnit&version=0.2.0)

![GitHub release \(latest by
date\)](https://img.shields.io/github/v/release/Tiggax/famnit_typst_template)
![GitHub Repo
stars](https://img.shields.io/github/stars/Tiggax/famnit_typst_template)

![logo](https://www.famnit.upr.si/img/UP_FAMNIT.png)

_University of Primorska,_

_Faculty of Mathematics, Natural Sciences and Information Technologies_

* * *

This is a Typst template for FAMNIT final work.

* * *

##  configuration example

    
    
    #import "@preview/sunny-famnit:0.2.0": project
    
    #show project.with(
    	date: datetime(day: 1, month: 1, year: 2024), // you could also do `datetime.today()`
    	text_lang: "en" // the language that the thesis is gonna be written in.
    	
    	author: "your name"
    	studij: "your course",
    	mentor: (
        name: "his name", 
        en: ("prepends","postpends"), // you can prepend or postpend any titles
        sl: ("predstavki","postavki"),// you can prepend or postpend any titles
        ),
    	somentor: none, // if you have a co-mentor write him here the same way as mentor, else you can just remove the line.
    	work_mentor: none, // if you have a work mentor, the same as above
    
    	naslov: "your title in slovene",
    	title: "your title",
    
    	izvleÄek: [
    		your abstract in slovene.
    	],
    	abstract: [
    		your abstract
    	],
    
    	kljuÄne_besede: ("Typst", "je", "super!"),
    	key_words: ("Typst", "is", "Awesome!"),
    
    	kratice: (
    		"Famnit": "Fakulteta za matematiko naravoslovje in informacijske tehnologije",
    		"PDF": "Portable document format",
    	),
    
    	priloge: (), // you can add attachments as a dict of a title and content like `"name": [content],`
    
    	zahvala: [
    		you can add an acknowlegment.
    	],
    
      bib_file: bibliography(
        "my_references.bib",
        style: "ieee",
        title: [Bibliography],
      ),
    
    	/* Additional content and their defaults
     	kraj: "Koper",
    	*/
    )
    
    // Your content goes below.
    
    

##  Abbreviations (kratice)

You can specify Abbreviations at the start as an attribute ` kratice ` and
pass it a dictionary of the abbriviation and itâs explanation. Then you can
reference them in text using ` @<short name> ` to create a link to it.

##  Attachments

Some thesis need Attachments that are shown at the end of the file. To add
these attachments add them in your project under ` priloge ` as a dictionary
of the attachment name and its content. I suggest having a seperate `
attachments.typ ` file, from where you can reference them in the main project.

##  Language

The writing of the thesis can be achieved in two languages; Slovene and
English. They have some differences between them in the way the template is
generated, as the thesis needs to be different for each one. you can specify
the language with the ` text_lang ` attribute.

* * *

If you have any questions, suggestion or improvements open an issue or a pull
request [ here ](https://github.com/Tiggax/famnit_typst_template)

[ Create project in app ](/app?template=sunny-famnit&version=0.2.0)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/sunny-famnit:0.2.0

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     Tilen Gimpelj [@Tiggax] 
License:

     MIT 
Current version:

     0.2.0 
Last updated:

     July 19, 2024 
First released:

     March 18, 2024 
Minimum Typst version:

     0.11.0 
Archive size:

     5.38 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/sunny-famnit-0.2.0.tar.gz)
Repository:

     [ GitHub ](https://github.com/Tiggax/famnit_typst_template)
Discipline  s  :

    

  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)
  * [ Biology ](https://typst.app/universe/search/?discipline=biology)
  * [ Mathematics ](https://typst.app/universe/search/?discipline=mathematics)

Categor  y  :

    

  * ![Thesis icon](/assets/icons/16-mortarboard.svg) [ Thesis ](https://typst.app/universe/search/?category=thesis)

###  Where to report issues?

This  template  is a project of  Tilen Gimpelj [@Tiggax]  .  Report issues on
[ their repository ](https://github.com/Tiggax/famnit_typst_template) .  You
can also try to ask for help with this  template  on the  [ Forum
](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.2.0  |  July 19, 2024   
[ 0.1.0 ](https://typst.app/universe/package/sunny-famnit/0.1.0/) |  March 18, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

