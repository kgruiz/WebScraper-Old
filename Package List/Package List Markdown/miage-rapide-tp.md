![A preview of the miage-rapide-tp Typst
template.](https://packages.typst.org/preview/thumbnails/miage-rapide-
tp-0.1.2-small.webp)

#  miage-rapide-tp

0.1.2

Quickly generate a report for MIAGE practical work.

[ Create project in app ](/app?template=miage-rapide-tp&version=0.1.2)

Typst template to generate a practical work report for students of the MIAGE
(MÃ©thodes Informatiques AppliquÃ©es Ã la Gestion des Entreprises).

##  ð§âð» Usage

  * Directly from [ Typst web app ](https://typst.app/) by clicking âStart from templateâ on the dashboard and searching for ` miage-rapide-tp ` . 

  * With CLI: 

    
    
    typst init @preview/miage-rapide-tp:{version}
    

##  ð Features

  * Cover page 
  * Table of contents (optionnal) 
  * ` question ` = automatically generates a question number (optionnal) with the content of the question 
  * ` code-block ` = code block with syntax highlighting. You can pass a filepath or code directly to display in the block 
  * ` remarque ` = a remark block with content and color 

###  Cover page

The conf looks like this:

    
    
    #let conf(
      subtitle: none,
      authors: (),
      toc: true,
      lang: "fr",
      font: "Satoshi",
      date: none,
      years: (2024, 2025),
      years-label: "AnnÃ©e universitaire",
      title,
      doc,
    )
    

###  Question

A question can be added like this:

    
    
    #question("Une question avec numÃ©ro ?")
    #question("Une question sans numÃ©ro ?", counter: false)
    

The first argument is the question content, and the second (OPTIONAL) is the
counter. If ` counter ` is set to ` false ` , the question will not be
numbered.

###  Code-block

To use a ` code-block ` , you can do as follows :

    
    
    #code-block(read("code/main.py"), "py")
    #code-block(read("code/example.sql"), "sql", title: "Classic SQL")
    

The first argument is the code to display, the second is the language of the
code, and the third is the title of the code block.

###  Remarque

To use a ` remarque ` , you can do as follows :

    
    
    #remarque("Ceci est une remarque")
    #remarque("Remarque personnalisÃ©e", bg-color: olive, text-color: white)
    

You can change the bg-color and text-color of the remark block to match your
needs.

##  ð License

This is MIT licensed.

> Rapide means fast in French. tp is the abbreviation of âtravaux
> pratiquesâ which means practical work. MIAGE is a French degree in
> computer science applied to management.

[ Create project in app ](/app?template=miage-rapide-tp&version=0.1.2)

###  How to use

Click the button above to create a new project using this template in the
Typst app.

You can also use the Typst CLI to start a new project on your computer using
this command:

    
    
    typst init @preview/miage-rapide-tp:0.1.2

![Copy](/assets/icons/16-copy.svg)

###  About

Author  :

     RÃ©mi Saurel 
License:

     MIT-0 
Current version:

     0.1.2 
Last updated:

     September 25, 2024 
First released:

     September 11, 2024 
Archive size:

     299 kB [ ![Size icon](/assets/icons/16-download.svg) ](https://packages.typst.org/preview/miage-rapide-tp-0.1.2.tar.gz)
Discipline  s  :

    

  * [ Education ](https://typst.app/universe/search/?discipline=education)
  * [ Engineering ](https://typst.app/universe/search/?discipline=engineering)
  * [ Computer Science ](https://typst.app/universe/search/?discipline=computer-science)

Categor  y  :

    

  * ![Report icon](/assets/icons/16-speak.svg) [ Report ](https://typst.app/universe/search/?category=report)

###  Where to report issues?

This  template  is a project of  RÃ©mi Saurel  .  You can also try to ask for
help with this  template  on the  [ Forum ](https://forum.typst.app) .

Please report this  template  to the Typst team using the  [ contact form
](https://typst.app/contact) if you believe it is a safety hazard or infringes
upon your rights.

###  Version history

Version  |  Release Date   
---|---  
0.1.2  |  September 25, 2024   
[ 0.1.1 ](https://typst.app/universe/package/miage-rapide-tp/0.1.1/) |  September 14, 2024   
[ 0.1.0 ](https://typst.app/universe/package/miage-rapide-tp/0.1.0/) |  September 11, 2024   
  
Typst GmbH did not create this  template  and cannot guarantee correct
functionality of this  template  or compatibility with any version of the
Typst compiler or app.

